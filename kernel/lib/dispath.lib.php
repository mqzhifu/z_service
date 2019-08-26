<?php
//前端路由器
class DispathLib{

    public $reflection = 1;//使用反射路由
    public $ctrl = null;
    public $ac = null;

	function __construct($frame = null){
		$this->clientFrame = $frame;
	}
	function authDispath($ctrl = '',$ac= ''){

//		$app = AppModel::db()->getRow("en_title = '" .APP_NAME ."'");
//		if(!$app)
//			stop('应用不存在');
//		if(!$app['status'])
//			stop('应用未开放');

		if(RUN_ENV == 'WEB'){
            $ctrl = _g(PARA_CTRL);
            $ac = _g(PARA_AC);
		}

		if(!$ctrl){
            if(defined('DEF_CTRL'))
                $ctrl = DEF_CTRL;
            else
                return out_pc(9200,"ctrl参数为空",KERNEL_NAME);
        }

		
		if(!$ac){
            if(defined('DEF_AC'))
                $ac = DEF_AC;
            else
                return out_pc(9201,'ac参数为空',KERNEL_NAME);
        }


		$dir =  APP_DIR .DS. C_DIR_NAME . DS ;
		$ctrl_file = ($dir . $ctrl .C_EXT);
		if( !file_exists($ctrl_file))
            return out_pc(9202,'ctrl文件不存在:'.$ctrl_file,KERNEL_NAME);

		if ( !class_exists($ctrl.C_CLASS))
            return out_pc(9203,'ctrl类不存在:'.$ctrl.C_CLASS,KERNEL_NAME);

		if(! method_exists($ctrl.C_CLASS,$ac))
            return out_pc(9204,'ac方法不存在:'.$ac,KERNEL_NAME);

        $this->ctrl = $ctrl;
        $this->ac = $ac;

        return out_pc(200,null,KERNEL_NAME);

	}
	//$paraData:ws 模式才会传入此值
	function action($paraData = null){
	    $rs = $this->authDispath();
	    if($rs['code'] != 200){
	        $msg = $rs['code'] . "-".$rs['msg'];
            ExceptionFrameLib::throwCatch($msg,'dispath');
        }

        //检查IP是否在黑名单中
        FilterLib::checkIPRequest();


        $ac = $this->ac;
        $ctrl = $this->ctrl .C_CLASS;
        //反射，根据POST的KEY-VALUE，对应到方法的参数上
	    if($this->reflection){
	        //json html
            $content_type = get_client_content_type();

            $info = new ReflectionMethod($ctrl,$ac);
            //方法的所有参数
            $p = $info->getParameters();

            $para = [];

            if($p){//是否方法有参数
                //WEB模式
                if(RUN_ENV == 'WEB' || RUN_ENV == 'CLI' ){
                    if($content_type == 'application/json'){
                        //json ，PHP是直接用流处理的，post中是获取不到的
                        $data = file_get_contents("php://input");
                        if( $data ){
                            $data = json_decode($data,true);
                            foreach($p as $k=>$v){
                                $key = $v->getName();
                                $para[$key] = $data[$key];
                            }
                        }
                    }else{
                        foreach($p as $k=>$v){
                            $key = $v->getName();
                            $para[$key] = _g($key);

                        }
                    }
                }elseif(RUN_ENV == 'WEBSOCKET'){
                    //web-socket 模式
                    foreach($p as $k=>$v){
                        $key = $v->getName();
                        if(arrKeyIssetAndExist($paraData,$key))
                            $para[$key] = $paraData[$key];
                        else
                            $para[$key] = null;
                    }
                }
            }

            $sign = _g('sign');
            if(!$sign){
                ExceptionFrameLib::throwCatch("9205-sign签名为空",'dispath');
            }

            $this->logRequest($para);
            $checkSign = TokenLib::checkSign($para);
            if(!$checkSign){
                ExceptionFrameLib::throwCatch("9206-签名错误",'dispath');
            }

            $class = new $ctrl($this->clientFrame,$this->ctrl,$this->ac);

            $reflection = new ReflectionClass($ctrl);
            $me = $reflection->getMethod($ac);
            //调用实际执行方法
            return $me->invokeArgs($class,$para);
        }
//        else{
//            $ctrlClass = get_instance_of($ctrl);
//    		$ctrlClass->$ac();
//        }
	}

    //添加 请求日志 mysql
    function logRequest($para){
        if(RUN_ENV != 'WEBSOCKET'){
            $requestMerge = array_merge($_REQUEST,$para);
            if(!$requestMerge){
                $requestData = "-";
            }else{
                $requestData = json_encode($requestMerge);
            }

            $data = array(
                'ctrl'=>$this->ctrl,
                'AC'=>$this->ac,
                'a_time'=>time(),
                'IP'=>get_client_ip(),
                'request'=>$requestData,
                'client_data'=>json_encode(get_client_info()),
            );

//            $id = AccesslogModel::db()->add($data);
            $moreId = AccessLogMoreModel::add($data);
            $this->accessMore_aid = $moreId;
            return $moreId;
        }
    }
}
