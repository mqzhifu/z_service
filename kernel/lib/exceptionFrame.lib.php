<?php
//异常处理
class ExceptionFrameLib extends Exception {
	
	public function __construct($message,$code=0,$extra=false) {
		parent::__construct($message,$code);
	}
    //捕获 异常 触发
    static function throwCatch($exceptionInfo ) {
//	    var_dump($exceptionInfo);exit;
	    if(is_object($exceptionInfo)){
            $errInfo = self::parseExceptionObjToStr($exceptionInfo);
        }elseif(is_scalar($exceptionInfo) ){//标量
            $obj = new Exception($exceptionInfo);
            $errInfo = self::parseExceptionObjToStr($obj);
        }elseif(is_array($exceptionInfo)){
            $obj = new Exception(json_encode($exceptionInfo));
            $errInfo = self::parseExceptionObjToStr($obj);
        }else{
	        exit("throwCatch $exceptionInfo type error!");
        }

        var_dump($errInfo);exit;

        if(RUN_ENV == 'WEBSOCKET'){
            LogLib::wsWriteFileHash([$errInfo[0]['msg']]);
        }else{
            LogLib::systemWriteFileHash("exception",$errInfo[0]['msg'],$errInfo);
            if(!DEBUG){
                $arr = array("code"=>9991,"msg"=>'throw new exception:'.$errInfo[0]['msg']);
                echo json_encode($arr);

            }else{
                var_dump($errInfo);
            }

            exit;
        }
    }
    //notice 之类的错误
	static public function appError($errno, $errstr, $errfile, $errline) {
        $type = getErrInfo($errno);
        $str  = "[type]: $type"."[msg]: $errstr "."[file]: $errfile "."[line]: $errline";


//        $VerifierCodeLib = new VerifierCodeLib();
//        $VerifierCodeLib->send(2,'78878296@qq.com',2,array('#errInfo#'=>APP_NAME.$str));


	    if(RUN_ENV == 'WEBSOCKET'){
            LogLib::wsWriteFileHash([$str]);
        }else{
            LogLib::systemWriteFileHash('error',$str);
            if(!DEBUG){
                $arr = array("code"=>9992,"msg"=>'appError');
                echo json_encode($arr);

            }else{
                var_dump($str);
            }

            exit;
        }


	}

	static function parseExceptionObjToStr($e){
        $trace = $e->getTrace();


//        $time = date('y-m-d H:i:m');
//        $traceInfo = '[' . $time . '] ';

//        if(RUN_ENV == 'WEB'){
//            $s = "<br/>";
//        }else{
//            $s = "\n";
//        }


//        var_dump($traceInfo);exit;

        $trace[0]['file'] = $e->getFile();
        $trace[0]['line'] = $e->getLine();
        $trace[0]['msg'] = $msg = $e->getMessage();

//        foreach ($trace as $t) {
//            if(isset($t['msg']))
//                $traceInfo .=  ' (' . $t['msg'] . ') ';
//
//            if(isset($t['line']))
//                $traceInfo .=  ' (' . $t['line'] . ') ';
//
//            if(isset($t['file']))
//                $traceInfo .= $t['file'] . " ";
//
//            if(isset($t['class']))
//                $traceInfo .= $t['class'] . " ";
//
//            if(isset($t['type']))
//                $traceInfo .= $t['type'] . " ";
//
//            if(isset($t['function']))
//                $traceInfo .= $t['function'] . " ";
//
////            if(isset($t['args']) && $t['args']){
////                var_dump($t['args']);exit;
////                $traceInfo .= implode(',', $t['args']);
////            }
//            $traceInfo .=')'.$s;
//        }

        return $trace;

    }
    //显示 到浏览器的错误信息
	static public function errInfo($trace){
			$img = '<td valign="top"  class="iconfont"><img src="'.STATIC_URL .'/common_img/licon.png"/></td>';
			$td = '<td valign="top" class="message">';
			$td_e = '<td valign="top" class="message"></td>';
			foreach ($trace as $t) {
				$traceInfo .= "<tr>$img{$td}";
				if(isset($t['line']))
					$traceInfo .=   $t['line'].'</td>'.$td ;
					
				if(isset($t['file']))
					$traceInfo .= $t['file'] . " ";
					
				if(isset($t['class']))
					$traceInfo .= $t['class'] . " ";
					
				if(isset($t['type']))
					$traceInfo .= $t['type'] . " ";
					
				if(isset($t['function']))
					$traceInfo .= $t['function'] . " ";
				
				$str = "";
				if(isset($t['args']) && is_array($t['args']) && $t['args'] ){
					foreach($t['args'] as $k=>$v){
						if(is_array($v)){
							
							
						}elseif(is_object($v)){	
						}else{
							$str .= $v;
						}
						
					}
// 					$traceInfo .= "(". $v2 .")";
				}
				// 					
				$traceInfo .= "</td>$td_e</tr>";
			}
		return $traceInfo;
	}

}
