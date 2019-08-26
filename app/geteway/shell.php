<?php
define ('BASE_DIR' ,dirname (  dirname (   dirname(__FILE__) ) ) );
define('APP_NAME', 'geteway');
//运行方式：WEB CLI
define("RUN_ENV","CLI");

include BASE_DIR."/config/".APP_NAME."/env.php";
include BASE_DIR . '/z.class.php';

define("MYSQL_MASTER_SALVE",false);
define("USE_OLD_DB",1);

z::init();
z::runConsoleApp();