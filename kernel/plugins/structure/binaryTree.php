<?php
//二叉树
class BinaryTree{
    public $dataFileSavePath = "";//物理保存节点的文件位置
    //前序中序后序，因为是递归，得有个全局值保存
    public $orderForeachData = null;
    //前序中序后序，因为是递归，得有个全局值保存，如果还需要保存到文件中
    public $orderForeachDataSaveStr = "";
    //当前树包含总元素个数
    public $nodePoolLength = 0;
    //内存池，伪造成，C里的，内存地址引用
    public $nodePool = array();
    //根节点，用于遍历
    public $rootNodeIndex = null;
    //调试模式
    public $debug = 1;

    function tt($info,$br = 1){
        if($this->debug){
            _p($info,$br);
        }
    }
    //添加一个节点
    function add($data){
        $this->tt("开始添加元素:".$data);

        if(!$this->nodePoolLength){
            $this->tt("当前树为空，添加第一个元素");
            $nodeIndex = $this->createNode($data);
            $this->setRootIndex($nodeIndex);

            return 1;
        }else{
            $root = $this->addLoop($data,$this->rootNodeIndex);
            return 2;
        }
    }
    //添加一组数
    function addGroup($arr){
        foreach ($arr as $k=>$v) {
            $this->add($v);
        }
    }
    //删除节点
    function del($data,$nodeIndex){
        if($nodeIndex === null){
            return null;
        }

        $node = $this->nodePool[$nodeIndex];
        //先找查找这个值的位置
        if( $data > $node->data){
            //不相等，继续查找
            $node->right = $this->del($data,$node->right);
            $this->nodePool[$node->right]->parent = $nodeIndex;
            //先忽略这种情况
        }elseif( $data <$node->data  ){
            //不相等，继续查找
            $node->left = $this->del($data,$node->left);
            $this->nodePool[$node->left]->parent = $nodeIndex;
        } else{//这是相等的情况，证明这就是要删除的值
            if( $node->left === null && $node->right === null){//该结点，左右均为空
                //直接删除即可
                unset($this->nodePool[$nodeIndex]);
                $nodeIndex = null;
            }elseif($node->left && $node->right){//该节点左右都有值
                $leftNodeIndex = $this->loopFindLeftMinNode($node->right);
                $data = $this->getNodeData($leftNodeIndex);
                $node->data = $data;
//                root->right = deleteNode(root->right, temp->key);
            }else{//其中一个有值
                if($node->left){
                    unset($this->nodePool[$nodeIndex]);
                    $nodeIndex = $node->left;
                }else{
                    unset($this->nodePool[$nodeIndex]);
                    $nodeIndex = $node->right;
                }

            }
        }

        if($nodeIndex === null){
            return null;
        }
    }
    //获取一人节点的  高度
    function getNodeHeight($nodeIndex){
        if(!$nodeIndex){
            return 0;
        }

        if(!isset($this->nodePool[$nodeIndex])){
            return 0;
        }

        return $this->nodePool[$nodeIndex]->height;
    }
    //根据 KEY 获取一个节点
    function getNodeByIndex($nodeIndex){
        if(!isset($this->nodePool[$nodeIndex])){
            echo $nodeIndex. "getNodeByIndex is null : ".$nodeIndex;
//            var_dump($this->nodePool[$nodeIndex]);
            return null;
        }
        return $this->nodePool[$nodeIndex];
    }
    //设置根节点
    function setRootIndex($nodeIndex){
        $this->rootNodeIndex = $nodeIndex;
        $this->tt("更新树rootIndex:".$nodeIndex);
    }
    //获取一个节点的  数据值
    function getNodeData($nodeIndex){
        if(!$nodeIndex)
            return 0;

        if(!isset($this->nodePool[$nodeIndex]))
            return 0;

        return $this->nodePool[$nodeIndex]->data;
    }
    //根据 VALUE ，查找<等于>该值 的一个节点,递归
    function find($data,$locationIndex = 0){
        if(!$locationIndex)
            $locationIndex = $this->rootNodeIndex;

        $node = $this->nodePool[$locationIndex];
        if($node->data == $data){
            return $locationIndex;
        }elseif( $data <$node->data  ){
            if($node->left){
                return $this->find($data,$node->left);
            }else{
                return -1;
            }
        }else{
            if($node->right){
                return $this->find($data,$node->right);
            }else{
                return -2;
            }
        }
    }

    function findRange($data,$locationIndex = 0){
        if(!$locationIndex){
            $locationIndex = $this->rootNodeIndex;
        }

        $node = $this->nodePool[$locationIndex];
        if($node->data == $data){
            //先忽略这种情况
        }elseif( $data <$node->data  ){
            if($node->left){
                return $this->findRange($data,$node->left);
            }else{
                return array("locationIndex"=>$locationIndex,"direction"=>"left");
            }
        }else{
            if($node->right){
                return $this->findRange($data,$node->right);
            }else{
                return array("locationIndex"=>$locationIndex,"direction"=>"right");
            }
        }
        $this->tt("未找到");
    }
    //判断一个节点的，左子 右子  哪个 高度更大
    function childrenMaxHeight($node){
        if($this->getNodeHeight($node->left) > $this->getNodeHeight($node->right)){
            return $this->getNodeHeight($node->left) ;
        }else{
            return $this->getNodeHeight($node->right) ;
        }
    }
    //左旋转
    function llRotate($nodeIndex){
        $node = $this->getNodeByIndex($nodeIndex);

        $newThreeRoot = $node->left;
        $newThreeRootNode = $this->getNodeByIndex($newThreeRoot);
        if(isset($newThreeRootNode->right)){
            $node->left = $newThreeRootNode->right;
        }else{
            $node->left = null;
        }

        $newThreeRootNode->right = $nodeIndex;


        $node->height = $this->childrenMaxHeight($node) + 1;
        $newThreeRootNode->height =   $this->childrenMaxHeight($newThreeRootNode) + 1;
//        if($this->getNodeHeight($node->left) > $this->getNodeHeight($node->right)){
//            $node->height = $this->getNodeHeight($node->left) + 1;
//        }else{
//            $node->height = $this->getNodeHeight($node->right) + 1;
//        }


//        if($this->getNodeHeight($newThreeRootNode->left) > $this->getNodeHeight($newThreeRootNode->right)){
//            $newThreeRootNode->height = $this->getNodeHeight($newThreeRootNode->left) + 1;
//        }else{
//            $newThreeRootNode->height = $this->getNodeHeight($newThreeRootNode->right) + 1;
//        }

        if($nodeIndex == $this->rootNodeIndex){
            $this->rootNodeIndex =$newThreeRoot;
        }

        return $newThreeRoot;
    }
    //右旋转
    function rrRotate($nodeIndex){
        $node = $this->getNodeByIndex($nodeIndex);

        $newThreeRootNodeIndex = $node->right;

        $newThreeRootNode = $this->getNodeByIndex($node->right);
        $node->right = $newThreeRootNode->left;
        $newThreeRootNode->left = $nodeIndex;

        $node->height = $this->childrenMaxHeight($node) + 1;
        $newThreeRootNode->height =   $this->childrenMaxHeight($newThreeRootNode) + 1;

        if($nodeIndex == $this->rootNodeIndex){
            $this->rootNodeIndex =$newThreeRootNodeIndex;
        }

        return $newThreeRootNodeIndex;
    }
    //搜索二叉树，新加一个节点时，递归查找该放到哪个节点的下面
    //从根节点(locationIndex)遍历，小于就找左边的节点，大于就找到右边的节点
    //当找到null的时候，放到该节点的下面
    //搜索完毕后，平衡二叉树，会决定如何旋转
    function addLoop($data,$locationIndex ){
        $this->tt($data." ".$locationIndex);
        if( $locationIndex === null){
            $newNodeIndex = $this->createNode($data);
            return $newNodeIndex;
        }
        //根据引用地址，获取一个元素(从根元素开始遍历)
        $node = $this->getNodeByIndex($locationIndex);
        if(!$node)
            exit("getNodeByIndex is null");

        if( $data > $node->data){
            $node->right = $this->addLoop($data,$node->right);
            $this->nodePool[$node->right]->parent = $locationIndex;
        }elseif( $data < $node->data  ){
            $node->left = $this->addLoop($data,$node->left);
            $this->nodePool[$node->left]->parent = $locationIndex;
        } else{//这是相等的情况，先忽略这种情况
            exit(-4);
        }
        //根据子节点，计算出当前节点的高度
        $node->height = $this->childrenMaxHeight($node) + 1;
        //获取左右子节点的  高度-差值
        $balance  = $this->getNodeHeight($node->left ) -  $this->getNodeHeight($node->right );
        $this->tt("balance:".$balance);

        if($balance > 1){//左边的节点高度 大于1 右边节点的高度
            $leftData = $this->getNodeData($node->left);

            if( $data < $leftData){//LL型
                return $this->llRotate($locationIndex);
            }elseif($data > $leftData){//LR型
                $node->left = $this->rrRotate($node->left);
                return $this->llRotate($locationIndex);
            }else{
                exit(-1);
            }

        }
        if($balance < -1){ //LL型
//            if(! $leftNode =  $this->getNodeByIndex($node->right) ){
//                $rightData = 0;
//            }else{
//                $rightData = $leftNode->data;
//            }

            $rightData = $this->getNodeData($node->right);

            if( $data > $rightData){//RR型
                return $this->rrRotate($locationIndex);
            }elseif($data < $rightData){
                $node->right = $this->llRotate($node->right);
                return $this->rrRotate($locationIndex);
            }

        }

        return $locationIndex;
    }
    //循环找到一个节点的，最小的那个子节点
    function loopFindLeftMinNode($nodeIndex){
        while( $this->getNodeByIndex($nodeIndex)->left !== null){
            $nodeIndex = $this->getNodeByIndex($nodeIndex)->left;
        }

        return $nodeIndex;
    }

    function isEmpty(){
        if($this->nodePoolLength)
            return false;
        else
            return true;
    }
    public $hashMap = null;
    public $maxLen = 0;


    //根据 深度 遍历
    //placeholder,空元素有#占位
    function foreachByDeep($placeholder = 0){
        if($this->isEmpty()){
            exit("tree is empty");
        }

        include_once PLUGIN.DS."structure".DS."queue.php";

        $this->tt("开始<深度>遍历");
        //将每一层节点，压入队列中，再依次读取出来，判断是否有子级节点。重复操作
        $queue = new Queue();
        $queue->pushHead($this->getNodeByIndex($this->rootNodeIndex));

        $level = 1;//层级
        $data = null;//保存每一层节点的DATA值
        $height = $this->getHeight($this->rootNodeIndex,0);
        //#:代表<空>元素,占位符
        while ( $nodes = $queue->popALLFromHead()){
            if($level > $height ){
                break;
            }
            $this->tt("level:".$level);
            foreach ($nodes as $k=>$node) {
                if($placeholder){
                    if($node == "#"){
                        $data[$level][] = "#";

                        $queue->pushHead("#");
                        $queue->pushHead("#");

                        continue;
                    }
                }


                $this->tt(" im node:".$node->data."  height:".$node->height);
                $data[$level][] = $node->data;
                if($node->left !== null && $node->right !== null){
                    $queue->pushHead($this->getNodeByIndex($node->left));
                    $queue->pushHead($this->getNodeByIndex($node->right));
                }elseif($node->left === null && $node->right === null){
                    if($placeholder){
                        $queue->pushHead("#");
                        $queue->pushHead("#");
                    }
                }else{
                    if($node->left !== null && $node->right === null){
                        $queue->pushHead($this->nodePool[$node->left]);
                        if($placeholder){
                            $queue->pushHead("#");
                        }
                    }else{
                        if($placeholder){
                            $queue->pushHead("#");
                        }
                        $queue->pushHead($this->nodePool[$node->right]);
                    }
                }


            }
            $level++;
        }
        return $data;

    }
    //格式化树，以HTML方式输出
    function formatTreeEchoHtml($data){
        $maxElementNum = 0;//统计出：每个层级中，最多的元素
        foreach ($data as $k=>$v) {
            $length = count($v);
            if($length > $maxElementNum){
                $maxElementNum =$length;
            }
        }

        $html = "<table border='1'>";
        foreach ($data as $k=>$v) {
            $current = count($v);
            $e = $maxElementNum / $current;
            $e = ceil($e);


            $html .= "<tr>";
            foreach ($v as $k2=>$v2) {
                $html .= "<td colspan='$e' align='center'>$v2</td>";
            }
            $html .= "</tr>";
        }

        $html .= "</table>";

        echo $html;
    }

    //前序 用栈实现
    function foreachPreorderStack($nodeIndex,$isSerialize = 0){
        $str = "";

        include_once PLUGIN.DS."structure".DS."stack.php";
        $StackArr = new StackArr();
        $StackArr->debug = 0;
        $StackArr->push($this->getNodeByIndex($nodeIndex));


        $tree = null;
        while($node = $StackArr->pop()){
            $endLimiter = "";
            if(!$node){
                $this->tt("stack is empty");
                break;
            }
            $tree[] = $node->data;
            $this->tt($node->data);

            if($node->left && $node->right){
                $StackArr->push($this->getNodeByIndex($node->right));
                $StackArr->push($this->getNodeByIndex($node->left));

                $endLimiter =  $node->data ."!";
            }elseif($node->left){
                $StackArr->push($this->getNodeByIndex($node->left));

                $endLimiter =  $node->data ."!#!";
            }elseif($node->right){
                $StackArr->push($this->getNodeByIndex($node->right));

                $endLimiter = $node->data ."!#!";
            }else{
                if($isSerialize){
                    $endLimiter =  $node->data ."!#!#!";
                }
            }

            if($isSerialize){
                $str .=  $endLimiter;
            }
        }

        if($isSerialize){
            return $str;
        }
        return $tree;
    }
    //打印二叉树边界值，也就是一个一个圈，从头开始沿最左边走到最低，再由最左低的位置向右，走到最右下角，再往回返回到头
    function showTreeEdge(){
        if($this->isEmpty())
            exit("empty");

        $deepData = $this->foreachByDeep();
        //先打印该树的最左侧数字
        foreach ($deepData as $k=>$nodes) {
            $this->tt($nodes[0]);
        }
        //打印最底层，除掉最左跟最右两个元素
        $height = $this->getHeight($this->rootNodeIndex,0);
        $lastDeepNode = $deepData[5];
        foreach ($lastDeepNode as $k=>$v) {
            if($v != $lastDeepNode[0] && $v != $lastDeepNode[count($lastDeepNode)] - 1){
                $this->tt($v);
            }
        }

        for ($i=$height ; $i >1; $i--) {
            $this->tt($deepData[$i][count($deepData[$i]) - 1]);
        }




    }

    function showTreeByDeep(){
        $deepData = $this->foreachByDeep(1);
        $this->formatTreeEchoHtml($deepData);
    }

    //中序 用栈实现
    function foreachMiddleStack($nodeIndex){
        include_once PLUGIN.DS."structure".DS."stack.php";
        $StackArr = new StackArr();
        $StackArr->debug = 0;
        $StackArr->push($this->getNodeByIndex($nodeIndex));

        while($node = $StackArr->pop()){
            if(!$node){
                $this->tt("stack is empty");
                break;
            }

            if(!$node->left && !$node->right){
                $this->tt($node->data);
            }elseif($node->left){
                $leftIndex = $node->left;
                $node->left = null;
                $StackArr->push( $node );
                $StackArr->push($this->getNodeByIndex($leftIndex));

            }elseif(!$node->left && $node->right){
                $this->tt($node->data);
                $StackArr->push($this->getNodeByIndex($node->right));
            }
        }
    }
    //获取二叉树总高度
    function getHeight($nodeIndex,$height){
        if($nodeIndex === null){
            return $height;
        }
        $node = $this->getNodeByIndex($nodeIndex);

        $leftHeight = $this->getHeight($node->left,$height+1);
        $rightHeight = $this->getHeight($node->right,$height+1);

        return $this->compareHeightNode($leftHeight,$rightHeight);
    }

    function compareHeightNode($nodeIndex1,$nodeIndex2){
        if($nodeIndex1 > $nodeIndex2){
            return $nodeIndex1;
        }
        return $nodeIndex2;
    }

    //前序 根-左-右
    //$isSerialize:是否开启序列化存文件，1开0否，!:代表结束符，也就是分割符.#:代表空，NULL
    function foreachPreorder($nodeIndex,$isSerialize = 0){
        if($isSerialize){
            if($nodeIndex === null){
                $this->orderForeachDataSaveStr .= "#!";
            }
        }
        if($nodeIndex !== null){
            $node = $this->getNodeByIndex($nodeIndex);
            $this->orderForeachData[] = $node->data;
            $this->tt($node->data);
            if($isSerialize){
                $this->orderForeachDataSaveStr .= $node->data."!";
            }
            $this->foreachPreorder($node->left,$isSerialize);
            $this->foreachPreorder($node->right,$isSerialize);
        }

    }
    //中序 左-根-右
    function foreachMiddle($nodeIndex){
        if($nodeIndex !== null){
            $node = $this->getNodeByIndex($nodeIndex);

            $this->foreachMiddle($node->left);
            $this->tt($node->data);
            $this->foreachMiddle($node->right);
        }
    }
    //后序 左-右-根
    function foreachPostorder($nodeIndex){
        if($nodeIndex !== null){
            $node = $this->getNodeByIndex($nodeIndex);

            $this->foreachPostorder($node->left);
            $this->foreachPostorder($node->right);
            $this->tt($node->data);
        }
    }


    function createNode($data){
        //先建一个节点类
        $newNode  = new Node();
        //把数据保存到类中
        $newNode->data = $data;
        //将节点保存到内存池中，并得到内存地址，引用地址
        //这里就用 元素总数做为引用地址的ID
        $nodeIndex = $this->nodePoolLength;
        $this->nodePool[$nodeIndex] = $newNode;
        //树中总元素数累加
        $this->nodePoolLength++;
        $this->tt("create node index:".$nodeIndex);
        return $nodeIndex;
    }
    //将内存中的树，序列化，存文件中
    function readFileLoadMem(){
        $str = $this->foreachPreorderStack($this->rootNodeIndex, 1);
        if (!$str)
            exit("str is null");

        $this->tt($str);
        $str = substr($str,0,strlen($str)-1);

        include_once PLUGIN . DS . "structure" . DS . "stack.php";
        $StackArr = new StackArr();
        $StackArr->debug = 0;
        $arr = explode("!", $str);

        $this->tt($str);
        for ($i = count($arr) -1 ; $i >= 0 ; $i--) {
            $StackArr->push( $arr[$i] );
        }
        //这里先清空了下 已经生成的树
        $this->nodePool = null;
        $this->nodePoolLength = 0;
        $this->readFileLoadMemPreOrder($StackArr);



//        var_dump($this->nodePool);exit;
    }
    //type:1先序2中序3后序4层级
    function saveToFile($type){
        if(1 == $type){
            $this->foreachPreorder($this->rootNodeIndex,1);
            var_dump($this->orderForeachDataSaveStr);
            var_dump($this->orderForeachData);exit;
        }elseif(4 == $type){
            $this->foreachByDeep();
        }

    }

    function readSaveFile(){
        //#代表NULL,就是空，为了方便打印出整颗树在HTML 上
        while ( $nodes = $queue->popALLFromHead()){
            $this->tt("level:".$level);
            foreach ($nodes as $k=>$node) {
                if($node == "#"){
                    $data[$level][] = "#";
                    continue;
                }
                $this->tt(" im node:".$node->data."  height:".$node->height);
                $data[$level][] = $node->data;

                if($node->left !== null && $node->right !== null){
                    $queue->pushHead($this->nodePool[$node->left]);
                    $queue->pushHead($this->nodePool[$node->right]);
                }elseif($node->left === null && $node->right === null){
                    $queue->pushHead("#");
                    $queue->pushHead("#");
                }else{
                    if($node->left !== null && $node->right === null){
                        $queue->pushHead($this->nodePool[$node->left]);
                        $queue->pushHead("#");
                    }else{
                        $queue->pushHead("#");
                        $queue->pushHead($this->nodePool[$node->right]);
                    }
                }


            }
            $level++;
        }
    }

    function readFileLoadMemPreOrder($stack){
        $nodeStr = $stack->pop();
        if(!$nodeStr){
            $this->tt("stack is empty");
            return false;
        }


        if($nodeStr == "#"){
            return null;
        }

        $newNodeIndex =$this->createNode($nodeStr);
        if($this->isEmpty()){
            $this->rootNodeIndex = $newNodeIndex;
        }
        $newNode = $this->getNodeByIndex($newNodeIndex);
        $newNode->left = $this->readFileLoadMemPreOrder($stack);
        $newNode->right = $this->readFileLoadMemPreOrder($stack);

        return $newNodeIndex;
    }
    //查找一个节点的：最后右侧结点
    function findNodeRightmost($nodeIndex){
        $node = $this->getNodeByIndex($nodeIndex);
        if($node->right === null){
            return $node;
        }

        return $this->findNodeRightmost($node->right);
    }

    //Morris遍历法，空间复杂度为O（1）
    function foreachByMorris($nodeIndex){
        $node = $this->getNodeByIndex($nodeIndex);
        if($node){

        }
    }

}

class Node{
    public $parent = null;//父结点
    public $left = null;//左-子结点
    public $right = null;//右-子结点
    public $data = null;//数据
    public $height = 1;//节点高度(深度)
    function __construct(){

    }
}
