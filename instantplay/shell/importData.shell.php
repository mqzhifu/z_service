<?php

/**
 * @Author: xuren
 * @Date:   2019-04-02 18:25:18
 * @Last Modified by:   xuren
 * @Last Modified time: 2019-04-04 16:55:36
 */
class importData{
    function __construct($c){
        $this->commands = $c;
    }

    public function run($attr)
    {
    	$obj = new AdtoutiaoService();
		$r = $obj->contabImportData();
    }
}

function o($str){
//    $encode = mb_detect_encoding($str, array("ASCII",'UTF-8',"GB2312","GBK",'BIG5'));
//    var_dump($encode);
//    var_dump($str);
//    var_dump(iconv("UTF-8","gbk//TRANSLIT",$str));
    if(PHP_OS == 'WINNT'){
        $str = iconv("UTF-8","GBK//IGNORE",$str)."\r\n";
    }

    echo $str."\n";
}

// $a = new importADDATA();
// $a->run();