<?php
//队列 先进先出

include_once PLUGIN.DS."structure".DS."linkDouble.php";
class Queue{
    public $head = null;
    public $foot = null;
    public $length = 0;
    public $nodePool = array();

    public $link = null;

    public $debug = 1;

    function tt($info){
        if($this->debug){
            echo $info . "<br/>";
        }
    }

    function __construct(){
        $this->link = new LinkDouble();
    }

    function pushHead($data){
        //在头部加一个元素
        $this->link ->add($data,1,1);
    }

    function pushFoot($data){
        $this->link ->add($data);
    }

    function popHead(){
        $this->link->delOne($this->link->head,2);
    }

    function popFoot(){
        $this->link->delOne($this->link->foot,2);
    }
    //从头部开始弹出所有
    function popALLFromHead(){
        $data =  $this->link->getAllByFooter();
        if($data == -1){
            return null;
        }
//        var_dump($data);
        $list = array();
        foreach ($data as $k=>$v) {
            $list[] = $v['data'];
        }

        $rs = $this->link->delAll();

        return $list;
    }
    //从尾部开始弹出所有
    function popALLFromFoot(){

    }
    //获取
    function getAllByHeader(){
        $data =  $this->link->getAllByFooter();
        $list = array();
        foreach ($data as $k=>$v) {
            $list[] = $v['data'];
        }

        return $list;
    }
    //获取
    function getAllByFooter(){
        $data = $this->link->getAllByHeader();
        $list = array();
        foreach ($data as $k=>$v) {
            $list[] = $v['data'];
        }

        return $list;
    }
}