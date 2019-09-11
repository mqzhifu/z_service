<?php
define ('BASE_DIR' , dirname (   dirname(__FILE__) ) )  ;
define('APP_NAME', 'instantplay');

//运行方式：WEB CLI WS
define("RUN_ENV","WEB");

//返回/输出-格式
define("OUT_TYPE",'json');
//
include BASE_DIR . '/kernel/z.class.php';

z::init();
z::runWebApp();

