<?php
define ('BASE_DIR' ,dirname (  dirname (   dirname(__FILE__) ) ) ) ;
define('APP_NAME', 'geteway');

//运行方式：WEB CLI WS
define("RUN_ENV","WEB");

//返回/输出-格式
define("OUT_TYPE",'json');

include BASE_DIR . "/config/" . APP_NAME . "/env.php";
include BASE_DIR . '/z.class.php';


define("MYSQL_MASTER_SALVE",false);
define("USE_OLD_DB",1);

define("IS_NAME",'instantplay');

z::init();
z::runWebApp();

