<?php
//链表结构
class Link{
    public $head = null;
    public $last = null;
    public $nodePool = null;
    public $incr = 1;//累加器
    //单向 双向 循环

    //生成一个结点
    function makeNode(){
        $arr = array('last'=>null,'next'=>null,'data'=>null);
        return $this->addNodePool($arr);
    }
    //将一个节点加入到内存池中，持久化
    function addNodePool($node){
        $this->nodePool[] = $node;
        return count($this->nodePool) - 1;
    }
    //判断当前列表是否为空
    function empty(){
        if($this->head !== null){
            return false;
        }

        return true;
    }
    //添加一个结点
    function addLast($data){
        if($this->empty()){
            $nodeIndex = $this->makeNode();
            $this->nodePool[$nodeIndex]['data'] = $data;
            $this->head = $nodeIndex;
            $this->last = $nodeIndex;
            return true;
        }

        $nodeIndex = $this->makeNode();
        $this->nodePool[$nodeIndex]['data'] = $data;

        $this->nodePool[$nodeIndex]['last'] = $this->last;
        $this->nodePool[$this->last]['next'] = $nodeIndex;

        $this->last = $nodeIndex;

        var_dump($this->nodePool);

    }
    //删除一个节点
    function delOne($key,$type = 1,$sort = 1){
        if($this->empty())
            return false;

        $node = $this->findOne($key,$type,$sort);
        if(!$node)
            return false;

        if($node['index'] == ){

        }


    }
    //迭代，获取整个链表
    function getAll(){
        $list = [];
        if($this->empty())
            return $list;

        $fist = $this->head;
        while(1){
            if(!arrKeyIssetAndExist($this->nodePool[$fist],'next')){
                //最后一个
                $list[] = $this->nodePool[$fist]['data'];
                break;
            }
            $list[] = $this->nodePool[$fist]['data'];
            $fist = $this->nodePool[$fist]['next'];
        }

        return $list;
    }

    //获取某一个位置的节点,type:1 值 2位置 ，sort:1 正序  2反序
    function findOne($key,$type = 1,$sort = 1){
        if($this->empty())
            return false;

        if($sort == 1){
            $fist = $this->head;
            $indexKey = "next";
        }else{
            $fist = $this->last;
            $indexKey = "last";
        }

        $this->incr = 1;
        while(1){
            if(!arrKeyIssetAndExist($this->nodePool[$fist],$indexKey)){
                //最后一个
                $rs = $this->compare($key,$this->nodePool[$fist],$type);
                if($rs){
                    $node =  $this->nodePool[$fist];
                    $node['index'] = $fist;
                    return $node;
                }
                break;
            }

            $rs = $this->compare($key,$this->nodePool[$fist],$type);
            if($rs){
                $node =  $this->nodePool[$fist];
                $node['index'] = $fist;
                return $node;
            }

            $fist = $this->nodePool[$fist][$indexKey];
        }

        return false;
    }

    function compare($key,$node,$type = 1){
        if($type == 1){
            if($node['data'] == $key){
                return true;
            }

        }else{
            if($this->incr == $key){
                return true;
            }
            $this->incr++;

        }
        return false;
    }
}