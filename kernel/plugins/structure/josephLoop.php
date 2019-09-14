<?php
//约瑟夫-环
class JosephLoop{
    public $n = 10;//总共有多少个人
    public $m = 3;//步长，到这个数，踢掉一个人
    function method1 (){
        include_once PLUGIN.DS."structure".DS."link.php";

        $link = new Link();
        $link->addLast(1);
        $link->addLast(2);
        $link->addLast(4);
        $link->addLast(5);
        $link->addLast(7);


        $list = $link->getAll();
        var_dump($list);exit;
    }
}