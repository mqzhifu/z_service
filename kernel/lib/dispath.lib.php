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
                ExceptionFrameLib::throwCatch('ctrl参数为空','G_PARA');
        }

		
		if(!$ac){
            if(defined('DEF_AC'))
                $ac = DEF_AC;
            else
                ExceptionFrameLib::throwCatch('ac参数为空','G_PARA');
        }


		$dir =  APP_DIR .DS. C_DIR_NAME . DS ;
		$ctrl_file = ($dir . $ctrl .C_EXT);
		if( !file_exists($ctrl_file))
            ExceptionFrameLib::throwCatch('ctrl文件不存在:'.$ctrl_file,'FILE');


		include_once $ctrl_file;
		if ( !class_exists($ctrl.C_CLASS))
            ExceptionFrameLib::throwCatch('ctrl类不存在:'.$ctrl.C_CLASS,'FILE');
		if(! method_exists($ctrl.C_CLASS,$ac))
            ExceptionFrameLib::throwCatch('ac方法不存在:'.$ac,'FILE');


        $this->ctrl = $ctrl;
        $this->ac = $ac;

	}
	//$paraData:ws 模式才会传入此值
	function action($paraData = null){
	    $this->authDispath();
        $ac = $this->ac;
        $ctrl = $this->ctrl .C_CLASS;

	    if($this->reflection){
            $content_type = get_client_content_type();

            $info = new ReflectionMethod($ctrl,$ac);
            $p = $info->getParameters();

            $para = [];

            if($p){//是否方法有参数
                //WEB模式
                if(RUN_ENV == 'WEB' || RUN_ENV == 'CLI' ){
                    if($content_type == 'application/json'){
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

            $class = new $ctrl($this->clientFrame,$this->ctrl,$this->ac);

            $reflection = new ReflectionClass($ctrl);
            $me = $reflection->getMethod($ac);
            return $me->invokeArgs($class,$para);
        }else{
            $ctrlClass = get_instance_of($ctrl);
    		$ctrlClass->$ac();
        }
	}
}
