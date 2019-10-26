<?php
//双向-链表结构
class LinkDouble{
    public $head = null;//链表头部指针
    public $foot = null;//链表尾部指针
    public $nodePool = null;//内存池，保存结点
    public $incr = 1;//累加器
    public $nodePoolLength = 0;//记录，一共有多少个节点
    //单向 双向 循环

    public $debug = 1;
    function tt($info){
        if($this->debug){
            echo $info."<br/>";
        }
    }

    //生成一个结点
    function makeNode(){
        $arr = array(
            'last'=>null,//上一个元素的地址
            'next'=>null,//下一个元素的地址
            'data'=>null,//数据
            'rand'=>null,//随机指向某一个节点
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
    //$location:位置,sort:在这个元素的,1前面插入一个，2后面插入一个
    function add($data,$location = 0,$direction = 1){
        $location = (int)$location;

        if($this->empty()){
            $newNodeIndex = $this->makeNode();
            $this->nodePool[$newNodeIndex]['data'] = $data;
            $this->head = $newNodeIndex;
            $this->foot = $newNodeIndex;
            return $newNodeIndex;
        }

        //插入位置，不能大于链表元素总长度
        if($location > $this->nodePoolLength){
            return -2;
        }


        if(!$location){
            //在末尾的后面加一个元素
            //新建一个元素，保存DATA
            $newNodeIndex = $this->addNode($this->foot,2,$data);
            $this->foot = $newNodeIndex;
        }else{//根据 位置，向前 或 向后插入
            //在头部,前面 ,加一个
            if($location == 1 && $direction == 1){

                $newNodeIndex = $this->makeNode();
                $this->nodePool[$newNodeIndex]['data'] = $data;

                //在头部元素之前再加一个元素，这个元素的上元素地址应该为空
                $this->nodePool[$newNodeIndex]['last'] = null;
                $this->nodePool[$newNodeIndex]['next'] = $this->head;
                $this->nodePool[$this->head]['last'] = $newNodeIndex;

                $this->head = $newNodeIndex;

            }elseif($location == $this->nodePoolLength && $direction == 2){
                //在末尾的后面加一个元素
                //新建一个元素，保存DATA
                $newNodeIndex = $this->addNode($this->foot,$direction,$data);
                $this->foot = $newNodeIndex;
            }else{
                //找到 当前 位置的元素，在它之前插入一个元素
                $node = $this->findOne($location,2);
                if(is_int($node))
                    return -3;

                $newNodeIndex = $this->addNode($node['current'],$direction,$data);

            }
        }

        return $newNodeIndex;
    }
    //在某一个元素 插入一个元素
    //$direction  ：1前面 2后面
    //$keyIndex：某一个元素
    function addNode($keyIndex,$direction = 2,$data){
        $newNodeIndex = $this->makeNode();
        $this->nodePool[$newNodeIndex]['data'] = $data;

        if($direction == 1){
            $this->nodePool[$keyIndex]['last'] = $newNodeIndex;
            $this->nodePool[$newNodeIndex]['next'] = $newNodeIndex;
        }else{
            $this->nodePool[$keyIndex]['next'] = $newNodeIndex;
            $this->nodePool[$newNodeIndex]['last'] = $keyIndex;
        }

        return $newNodeIndex;
    }

    function delAll(){
         $this->head = null;//链表头部指针
         $this->foot = null;//链表尾部指针
         $this->nodePool = null;//内存池，保存结点
         $this->incr = 1;//累加器
         $this->nodePoolLength = 0;//记录，一共有多少个节点

        return 1;
    }

    //删除一个节点
    function delOne($key,$type = 1,$sort = 1){
        if($this->empty())
            return false;

        $node = $this->findOne($key,$type,$sort);
        if(!$node)
            return -3;

        //证明当前链表就只有一个元素了
        if($node['index'] == $this->head && $node['index'] == $this->foot){
            unset($this->nodePool[$node['index'] ]);
            $this->head = null;
            $this->foot = null;
        }elseif($node['index'] == $this->foot){
            if($this->nodePool[$node['last']]['last'] === null){
                //证明，上一个元素就是头，也就是 当上一个元素的（上地址）为空
                $this->foot = $this->head;
                unset($this->nodePool[$node['index'] ]);
            }else{
                $this->nodePool[$node['last']]['next'] = null;
                unset($this->nodePool[$node['index'] ]);
            }
        }else{
            $this->nodePool[$node['last']] ['next'] = $node['next'];
            $this->nodePool[$node['next']] ['last'] = $this->nodePool[$node['last']]['current'];
        }
        //将总元素数量-1
        $this->nodePoolLength--;

        return 1;
    }

    function getAllByHeader(){
        return $this->getAll('asc');
    }

    function getAllByFooter(){
        return $this->getAll('desc');
    }

    //迭代，获取整个链表
    function getAll($sort = 'asc'){
        $list = [];
        if($this->empty())
            return -1;

        if($sort == 'asc'){
            $sortIndex = "next";
            $first = $this->head;
        }else{
            $sortIndex = "last";
            $first = $this->foot;
        }

        while(1){

            if(  $this->nodePool[$first][$sortIndex] === null){
                //最后一个
//                $list[] = $this->nodePool[$fist]['data'];
                $list[] = $this->nodePool[$first];
                break;
            }
//            $list[] = $this->nodePool[$fist]['data'];
            $list[] = $this->nodePool[$first];
            $first = $this->nodePool[$first][$sortIndex];
        }

        return $list;
    }

    //获取某一个位置的节点,type:1 值 2位置 ，sort:1 正序  2反序
    function findOne($key,$type = 1,$sort = 1){
        if($this->empty())
            return -1;

        if($sort == 1){
            $fist = $this->head;
            $indexKey = "next";
        }else{
            $fist = $this->foot;
            $indexKey = "last";
        }

        $this->incr = 1;
        while(1){
            if($this->nodePool[$fist][$indexKey] === null){
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

        return -3;
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




