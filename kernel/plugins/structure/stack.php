<?php
//栈，后进先出，只能从 头部 追加 元素

//存储结构为 数组
//实际上，只需要不停的 数组后面添加元素就可以了
class StackArr{
    public $nodePool = null;//用数组结构的时，元素-池

    public $debug = 1;

    function tt($info){
        if($this->debug){
            echo $info . "<br/>";
        }
    }

    function push($data){
        $this->nodePool[] = $data;
        $this->tt("push:".json_encode($data)." element num:".count($this->nodePool));
    }
    //一次PUSH多个（组）数
    function pushGroup($arr){
        foreach ($arr as $k=>$v) {
            $this->push($v);
        }

        return 1;
    }
    //线性数组的缺点，一个值 被删除，得重新调整位置，先这样，空了再优化
    function loopMoveElement(){
        $tmp = null;
        foreach ($this->nodePool as $k=>$v) {
            $tmp[] = $v;
        }

        $this->nodePool = $tmp;

    }

    function pop(){
        if(!$this->isEmpty()){
            $lastElementIndex = count($this->nodePool) - 1;
            $data = $this->nodePool[$lastElementIndex];
            unset( $this->nodePool[$lastElementIndex]);
            $this->loopMoveElement();
            $this->tt("pop:".json_encode($data));

            if(!$this->nodePool){
                $this->nodePool = null;
            }

            return $data;
        }

        return false;
    }

    function isEmpty(){
        if(count($this->nodePool) > 0){
            return false;
        }
        return true;
    }

    function popAll(){
        $data = array();


        while (  $node = $this->pop() ){
            $data[] = $node;
        }

        return $data;
    }
}
