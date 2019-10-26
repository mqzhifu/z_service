<?php
//循环-链表结构
class LinkLoop{
    public $head = null;//链表头部指针
    public $foot = null;//链表尾部指针
    public $nodePool = null;//内存池，保存结点
    public $incr = 0;//累加器
    public $nodePoolLength = 0;//记录，一共有多少个节点

    //生成一个结点
    function makeNode(){
        $arr = array(
            'last'=>null,//上一个元素的地址
            'next'=>null,//下一个元素的地址
            'data'=>null,//数据
            'current'=>null,//当前元素的地址
        );
        return $this->addNodePool($arr);
    }
    //申请内存地址，将一个节点加入到内存池中，持久化
    function addNodePool($node){
        $index = count($this->nodePool) ;//这里按说应该要减去1，但为了下面
        $node['current'] = $index;
        $this->nodePool[] = $node;

        $this->nodePoolLength++;

        return $index;
    }
    //判断当前列表是否为空
    function empty(){
        if($this->head !== null){
            return false;
        }

        return true;
    }
    //在尾部-添加一个结点
    function add($data){
        if($this->empty()){
            $newNodeIndex = $this->makeNode();
            $this->nodePool[$newNodeIndex]['data'] = $data;
            $this->head = $newNodeIndex;
            $this->foot = $newNodeIndex;

            $this->nodePool[$newNodeIndex]['last'] = $newNodeIndex;
            $this->nodePool[$newNodeIndex]['next'] = $newNodeIndex;

            return $newNodeIndex;
        }
        //在末尾的后面加一个元素
        $newNodeIndex = $this->makeNode();
        $this->nodePool[$newNodeIndex]['data'] = $data;
        //处理当前新节点
        $this->nodePool[$newNodeIndex]['last'] = $this->nodePool[$this->foot]['current'];
        $this->nodePool[$newNodeIndex]['next'] = $this->head;

        //尾部的节点改变 了，链表头部，的上一个节点，改成尾部，实现循环
        $this->nodePool[$this->head]['last'] = $newNodeIndex;
        //原尾部结点
        $this->nodePool[$this->foot]['next'] = $newNodeIndex;

        //新节点是加在链表尾部，尾部的地址就得用新的节点值
        $this->foot =  $newNodeIndex;

        return $newNodeIndex;
    }
    //删除一个节点
    function delOne($key,$type = 1){
        if($this->empty())
            return false;

        $node = $this->findOne($key,$type);
        if(is_int($node))
            return $node;

        //证明当前链表就只有一个元素了
        if($node['index'] == $this->head && $node['index'] == $this->foot){
            unset($this->nodePool[$node['index'] ]);
            $this->head = null;
            $this->foot = null;

        }elseif($node['index'] == $this->foot){//删除的是最后一个值
//            echo "aa:".$node['last']['current']." "."header:".$this->head." foot:".$this->foot."<br/>";
            $this->nodePool[$node['last']]['next'] = $this->head;
            $this->nodePool[$this->head]['last'] = $this->nodePool[$node['last']]['current'];

            $this->foot = $this->nodePool[$node['last']] ['current'];

            unset($this->nodePool[$node['index'] ]);
        }elseif($node['index'] == $this->head){//删除的是头部
            $this->nodePool[$node['last']] ['next'] = $node['next'];
            $this->nodePool[$node['next']] ['last'] = $this->nodePool[$node['last']]['current'];
            $this->head = $this->nodePool[$this->head]['next'];

            unset($this->nodePool[$node['index'] ]);
        }else{
            $this->nodePool[$node['last']] ['next'] = $node['next'];
            $this->nodePool[$node['next']] ['last'] = $this->nodePool[$node['last']]['current'];
            unset($this->nodePool[$node['index'] ]);
        }
        //将总元素数量-1
        $this->nodePoolLength--;

        return 1;
    }
    //根据 指针 位置 找
    function findOne($key){
        if($this->empty())
            return -1;

        $fist = $this->head;
        while(1){
            if($fist == $this->foot){
                if($key == 8){

                    $this->nodePool[$fist]['current'];
                }
                //最后一个
                if($key == $this->nodePool[$fist]['current']){
                    $node =  $this->nodePool[$fist];
                    $node['index'] = $fist;
                    return $node;
                }
                break;
            }

            if($key == $this->nodePool[$fist]['current']){
                $node =  $this->nodePool[$fist];
                $node['index'] = $fist;
                return $node;
            }

            $fist = $this->nodePool[$fist]['next'];
        }

        return -3;
    }

}