<?php
//框架版本
define('VERSION','1.0');
//路径中的返斜杠:/
define ('DS', "/");
//项目目录
define ('APP_DIR', BASE_DIR .DS . APP_NAME);
//框架名称
define("KERNEL_NAME","kernel");
//框架目录
define ('KERNEL_DIR', BASE_DIR .DS .KERNEL_NAME);
//包含项目配置文件信息
include APP_DIR .DS. "config/env.php";
//包含框架错误码信息

define("CLOSE_KERNEL",0);

//常量检查
Z::checkConst();

//===========控制器==================
defined('C_EXT') or define('C_EXT', '.ctrl.php');//文件的后缀
defined('C_DIR_NAME') or define('C_DIR_NAME', 'ctrl');//文件夹名
defined('C_CLASS') or define('C_CLASS', 'Ctrl');//文件的类名后缀
//===========控制器==================
//===========模型层==================
defined('M_EXT') or define('M_EXT', '.model.php');
defined('M_DIR_NAME') or define('M_DIR_NAME', 'model');
defined('M_CLASS') or define('M_CLASS', 'Model');
//===========模型层==================
//===========类库==================
defined('LIB_DIR_NAME') or define('LIB_DIR_NAME','lib');
defined('LIB_EXT') or define('LIB_EXT','.lib.php');
defined('LIB_CLASS') or define('LIB_CLASS','Lib');
//===========SERVICE-库==================
defined('S_EXT') or define('S_EXT','.service.php');
defined('S_DIR_NAME') or define('S_DIR_NAME','service');
defined('S_CLASS') or define('S_CLASS','Service');

//加载语言包
defined('LANG') or define('LANG',Z::countryMapLang(COUNTRY));
//调试模式,0:关闭,1:全开，2半开
defined('DEBUG') or define('DEBUG',0);

//默认30秒为超时,shell模式下 不限制
defined('TIME_LIMIT') or define('TIME_LIMIT',30);
set_time_limit(TIME_LIMIT);
//时区
defined('TIME_ZONE') or define('TIME_ZONE', 'Asia/shanghai' ) ;
ini_set("date.timezone",TIME_ZONE);
//定义默认的  控制器名称  与  事件名称
defined('DEF_CTRL') or define('DEF_CTRL','index');
defined('DEF_AC') or define('DEF_AC','index');
////公共类与公共配置
//set_include_path(get_include_path() . PATH_SEPARATOR . BASE_DIR .DS. 'config');
//set_include_path(get_include_path() . PATH_SEPARATOR . APP_DIR .DS.LIB_DIR_NAME);
 //插件
defined('PLUGIN') or define(  'PLUGIN',KERNEL_DIR . '/plugins/');
//总日志目录
defined('LOG_PATH') or define('LOG_PATH', BASE_DIR.DS."log");
//项目-日志目录
defined('LOG_APP_PATH') or define('LOG_APP_PATH', LOG_PATH.DS.APP_NAME);
//总（配置）目录
define("CONFIG_DIR",KERNEL_DIR.DS."config");
define("FUNC_DIR",KERNEL_DIR.DS."functions");

//项目配置文件目录
define("APP_CONFIG_DIR",APP_DIR.DS."config");

//图片上传路径
defined('IMG_UPLOAD') or define('IMG_UPLOAD', BASE_DIR . '/www/upload/'.APP_NAME);
////头像-相对路径 不分应用
//defined('USER_AVATAR_IMG_VIRTUAL') or define('USER_AVATAR_IMG_VIRTUAL', 'avatar/user/');
////头像上传路径
//defined('USER_AVATAR_IMG_UPLOAD') or define('USER_AVATAR_IMG_UPLOAD', BASE_DIR ."/www/" . USER_AVATAR_IMG_VIRTUAL);

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

        //所有错误码
        include_once APP_CONFIG_DIR.DS."api_err_code.php";
        //主-配置文件
        include_once APP_CONFIG_DIR.DS."main.php";
        //redis所有key的配置文件
        include_once APP_CONFIG_DIR.DS."rediskey.php";

        include_once APP_CONFIG_DIR.DS."lang".DS .LANG.DS ."err.php";
        include_once APP_CONFIG_DIR.DS."lang".DS .LANG.DS ."desc.php";

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
            $Dispath = new DispathLib();
//        }
//        LogLib::accessWrite();
        try{
            $returnData = $Dispath->action();
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
