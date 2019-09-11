<?php

//包含项目配置文件信息
include_once BASE_DIR ."/". APP_NAME."/". "config/env.php";
include_once BASE_DIR."/kernel/config/constant.php";
//常量检查
Z::checkConst();
Z::checkExt();
//加载语言包
defined('LANG') or define('LANG',Z::countryMapLang(COUNTRY));

//===========类库==================

//初始分有为2个部分，1公共部分，专属部分
//专属部分：1 WB端，2指令行端，3 API调用
class Z{

	static function init(){
        include_once FUNC_DIR.DS.'sys.php';//公共函数 - 系统
		include_once FUNC_DIR.DS.'datetime.php';//公共函数 - 时间日期
		include_once FUNC_DIR.DS.'path_file.php';//公共函数 -
		include_once FUNC_DIR.DS.'str_arr.php';//公共函数 - 字符串
        include_once FUNC_DIR.DS.'client.php';//公共函数 - 客户端信息
        include_once FUNC_DIR.DS.'url.php';//公共函数 - 客户端信息

        //框架开始执行时间-开始时间
		$GLOBALS['start_time'] = microtime(TRUE);

		if(DEBUG){//测试模式-打开出错信息
			ini_set('display_errors', 1);
			if(1 == DEBUG){
				error_reporting(E_ALL);
			}else{
				error_reporting(E_ERROR);
			}
		}else{//生产模式 关闭 错误提示
			ini_set('display_errors', 0);
			error_reporting(0);
		}
		//类自动加载函数
		spl_autoload_register('autoload');
		//捕获-fatal脚本停止/脚本结束钩子
        register_shutdown_function('shutdown_function');//fatal error
		// 设定warning notice 错误
		set_error_handler(array('ExceptionFrameLib','appError'));
		//设定 异常处理
 		set_exception_handler(array('ExceptionFrameLib','throwCatch'));

		//===========内存信息==================
		define('MEMORY_LIMIT_ON',function_exists('memory_get_usage'));
		if(MEMORY_LIMIT_ON) $GLOBALS['start_use_mems'] = memory_get_usage();
		$memorylimit = @ini_get('memory_limit');
		if($memorylimit && return_bytes($memorylimit) < 33554432 ) {
			ini_set('memory_limit', '256m');
		}
		//===========内存信息==================
        include_once APP_CONFIG_DIR.DS."env".DS.ENV."/mysql_".LANG.".php";
        include_once APP_CONFIG_DIR.DS."env".DS.ENV."/redis_".LANG.".php";
        include_once APP_CONFIG_DIR.DS."env".DS.ENV."/domain_".LANG.".php";
	}
	//指令行方式运行RUN_ENV
	static function runConsoleApp(){
		defined('STDIN') or define('STDIN', fopen('php://stdin', 'r'));

		define("APP_SHELL_DIR",APP_DIR .DS. "shell");
//		set_include_path(get_include_path() . PATH_SEPARATOR .  APP_DIR . DS .'/shell');
		$Cmd = new CmdlineLib();

		$Cmd->addCommands(APP_DIR ."/shell/" );
		$Cmd->runCommand();
	}
	static function runWebSocket(){
        self::checkWebConst();
        include_once APP_CONFIG.DS."server.php";

        if(APP_NAME == 'game'){
            $class = new SwooleWebSocketMatchLib();
        }else{
            $class = new SwooleWebSocketLib();
        }

        $class->run();
    }
	//web方式进行访问
	static function runWebApp(){
        self::checkWebConst();

		//****************session***************************

		//前台用户登陆SEESION_KEY
		//defined('SESS_USER_KEY') or define('SESS_USER_KEY','userInfo');
		//后台用户登陆SEESION_KEY
		//defined('SESS_ADMIN_KEY') or define('SESS_ADMIN_KEY','adminuserInfo');

		//session存储类型
		defined('SESS_TYPE') or define('SESS_TYPE','FILE');
		//session 失效时间
		defined('SESS_EXPIRE') or define('SESS_EXPIRE',60 * 60 * 3);
		if(SESS_TYPE == 'DB'){
			if(ini_get('session.save_handler') != 'user')
				ini_set('session.save_handler', 'user');
		}
        session_save_path(STORAGE_DIR.DS."session".DS.APP_NAME);

		//****************session***************************
		//控制器 参数名称
		defined('PARA_CTRL') or define('PARA_CTRL', 'ctrl');
		//控制器 方法参数名称
		defined('PARA_AC') or define('PARA_AC', 'ac');
		// 获取请求地址：/project2/point/index.php
		$script_path = $script_file = _get_script_url();
		if(arrKeyIssetAndExist($_SERVER,'QUERY_STRING'))
            $script_file = $script_path . "?" .  $_SERVER['QUERY_STRING'];

		//请求文件的名称
		define('SCRIPT_NAME',$script_file);
		//初始化SESSION
		$Session = new SessionLib();

		//初始化路由
//        if(APP_NAME =='instantplayadmin' || APP_NAME == 'mgadmin' || APP_NAME == 'gameadmin' || APP_NAME == 'instantplayadminnew' || APP_NAME =='adsystemadmin'){
//            $Dispath = new DispathAdminLib();
//        }else{
            $router = new RouterLib();
//        }

//        LogLib::accessWrite();
        try{
            $rs = $router->check();

            if($rs['code'] != 200){
                $msg = $rs['code'] . "-".$rs['msg'];
                ExceptionFrameLib::throwCatch($msg,'dispath');
            }

            $returnData = $router->action();
            if(RUN_ENV != 'WEBSOCKET'){
                $exec_time = $GLOBALS['start_time'] - microtime(TRUE);
                if( $returnData ){
                    if( strlen( $returnData ) >1000){
                        $returnData = substr( $returnData,0,1000);
                    }
                }


                LogLib::responseWriteFileHash($exec_time,$returnData);
//                $accessData = array(
//                    'uid'=>$this->uid,
//                    'return_info'=>$msg,
//                    'exec_time'=>$exec_time,
//                );
//
//                if( strpos(APP_NAME,'admin') === false){
//                    if($this->ctrl !='sdk'){
//                        $accessData['code'] = $code;
//                        AccessLogMoreModel::upById($this->accessMore_aid,$accessData);
//                    }
//
//                }
            }
            echo $returnData;
            exit;
        }catch (Exception $e){
            ExceptionFrameLib::throwCatch($e);
        }

		//getSqlLog();//所有SQL记录日志

	}

	static function getRunEnv(){
	    return array('CLI','WEB','WEBSOCKET');
    }

    static function getCountry(){
        return array('cn','user','en');
    }

    static function countryMapLang($COUNTRY){
	    $arr =  array("cn"=>'cn','en'=>'en','user'=>'en');
	    return $arr[$COUNTRY];
    }

    static function outError($code){
        echo $code.":".$GLOBALS['kernel']['api_err_code'][$code];
        exit;
    }

    static function getEnv(){
	    return array("local",'pre','dev','release');
    }

	static function checkConst(){//初始化的常量值，必埴项检查
        if(!defined('KERNEL_DIR'))
            exit('常量未定义：KERNEL_DIR');
        if(!is_dir(KERNEL_DIR)){
            exit("KERNEL_DIR is not dir.".KERNEL_DIR);
        }

        include_once KERNEL_DIR.DS ."config".DS ."api_err_code.php";
        include_once KERNEL_DIR.DS ."config".DS ."app.php";
        include_once KERNEL_DIR.DS ."config".DS ."main.php";
        include_once KERNEL_DIR.DS ."config".DS ."rediskey.php";


		if(!defined('BASE_DIR'))
            self::outError(9101);

		if(!is_dir(BASE_DIR)){
            self::outError(9113);
        }

        if(!defined('RUN_ENV'))
            self::outError(9102);

        $run_env = self::getRunEnv();
        if(!in_array(RUN_ENV,$run_env) ){
            self::outError(9114);
        }

        if(!defined('COUNTRY'))
            self::outError(9116);

        $country = self::getCountry();
        if(!in_array(COUNTRY,$country) ){
            self::outError(9117);
        }

        if(!defined('APP_NAME'))
            self::outError(9103);

        if(!defined('DEF_DB_CONN'))
            self::outError(9104);

        if(!defined('DEF_REDIS_CONN'))
            self::outError(9105);

        if(!is_dir(APP_DIR))
            self::outError(9115);

        if(!defined('ENV'))
            self::outError(9108);

        $env = self::getEnv();
        if(!in_array(ENV,$env) ){
            self::outError(9120);
        }

        if(!in_array(APP_NAME,array_keys($GLOBALS['kernel']['app']) )){
            self::outError(9121);
        }

        if(  $GLOBALS['kernel']['app'][APP_NAME]['status'] != 'open' ){
            self::outError(9001);
        }
        if(CLOSE_KERNEL){
            self::outError(9000);
        }
	}

    static function checkWebConst(){
        if(!defined('DOMAIN_URL'))
            self::outError(9123);

        if(!defined('STATIC_URL'))
            self::outError(9124);
    }

    static function checkExt(){
	    $arr = array('gd','mysqli','json','mbstring','openssl','redis','xml','zip','zlib','curl','dom','json','reflection','spl','pcre',
            'seaslog','swoole','grpc','protobuf','vld','zookeeper','phar');

	    foreach ($arr as $k=>$v) {
            $rs = extension_loaded($v);
//            echo $v;
//            var_dump($rs);
	    }
    }
}
//self::initLanguageConst();
//语言包常量
//static function initLanguageConst(){
//    $data = ConstModel::db()->getAll();
//    if($data){
//        foreach($data as $k=>$v){
//            $GLOBALS['LANG'][$v['key']] = $v['content'];
//        }
//    }
//}
