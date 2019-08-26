<?php
//系统日志
class LogLib {

    //基方法
	static function writeHash($content,$module,$hashType = 'day'){

	    if(is_array($content)){
            $content = json_encode($content);
        }
        $date = "[".date("Y-m-d H:i:s").']';
        $content =$date. " [pid:".getmypid(). "]  ".$content."\n";

	    $file = date("Y-m-d") . ".log";
	    $path_dir = LOG_PATH.DS.APP_NAME.DS.$module.DS;
	    $path_file = $path_dir.$file;

	    if(!file_exists($path_dir)) {
            mkdir($path_dir, 0777, true);
        }

        $fd = fopen($path_file,"a+");
        fwrite($fd,$content);

    }
    //系统日志
    static function systemWriteFileHash($module ,$title,$content =null ) {
        $path =  "system".DS.$module;
        if(!$title && !$content){
            return -1;
        }

        $str = $title;
        if($content){
            $str .= json_encode($str);
        }

        SeasLog::setBasePath(LOG_APP_PATH.DS."system");
        SeasLog::setLogger($module);
        SeasLog::info($str );


//        LogLib::writeHash($str,$path);

    }
    //WS总日志
    static function wsWriteFileHash( $content  ) {
        $path =  "ws".DS;
//        if($content){
//            $content = json_encode($content);
//            if(isset($GLOBALS['ws_server']) && $GLOBALS['ws_server'] ){
//                $content = "[".$GLOBALS['ws_server']->worker_id . "]". $content;
//            }
//        }


//        echo LOG_APP_PATH ." ";
        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("ws");
        $rs = SeasLog::info(json_encode($content) );
//        LogLib::writeHash($content,$path);

    }

    static function MysqlWriteFileHash( $content  ) {
        $path =  "mysql".DS;
        if($content){
            $content = json_encode($content);
        }

        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("mysql");
        SeasLog::info(json_encode($content) );

//        LogLib::writeHash($content,$path);

    }

    static function matchUserWriteFileHash( $content  ) {
        $path =  "match_user".DS;
        if($content){
            $content = json_encode($content);
        }

        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("match_user");
        SeasLog::info($content );

//        LogLib::writeHash($content,$path);

    }

    static function sendmailWriteFileHash( $content  ) {
        $path =  "send_email".DS;
        if($content){
            $content = json_encode($content);
        }


        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("send_email");
        SeasLog::info($content );

//        LogLib::writeHash($content,$path);

    }

    static function appWriteFileHash( $content  ) {
	    if(!DEBUG){
            return 0;
        }
        $path =  "app".DS;
        if($content){
            $content = json_encode($content);
        }


        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("app");
        SeasLog::info(json_encode($content) );
//        SeasLog::log(SEASLOG_EMERGENCY ,'this is a error test by ::log');


//        LogLib::writeHash($content,$path);
    }

    /**
     * Date: 2019/2/28
     * author: haopeng
     * doc:记录程序中错误日志
     */
    static function appErrorLog( $content  ) {
        $path =  "app".DS."error".DS;
        if($content){
            $content = json_encode($content);
        }

        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("app");
        SeasLog::info($content );

//        LogLib::writeHash($content,$path);
    }


    //访问日志
    static function accessWrite(){
        self::writeFileHash();
//        self::addDb();
    }

    static function writeFileHash(){
        $path =  "access";
        $str = SCRIPT_NAME . json_encode($_REQUEST);


        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("access");
        SeasLog::info( $str );


//        LogLib::writeHash($str,$path);
    }

    static function addDb(){

    }

    /**
     * add by XiaHB time:20190329;
     * User表初始化金币数日志记录;
     * 沿用‘app’目录就不自己建新的了;
     * @param $content
     */
    public static function writeGolgcoinHash($content){
        $path =  "app".DS;
        if($content){
            $content = json_encode($content);
        }

        SeasLog::setBasePath(LOG_APP_PATH);
        SeasLog::setLogger("app");
        SeasLog::info( $content );

//        LogLib::writeHash($content,$path);
    }
}
