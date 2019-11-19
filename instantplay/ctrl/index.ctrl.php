<?php
class IndexCtrl extends BaseCtrl  {

    function index(){
        //栈============
        include_once PLUGIN.DS."structure".DS."stack.php";
//        //先测试下基本栈是否正确
        $StackArr = new StackArr();
//        $arr = array(1,5,2,9,10,4,3,);
//        $StackArr->pushGroup($arr);
//        $data = $StackArr->popAll();
//        var_dump($data);

//        include_once PLUGIN.DS."structure".DS."stackMin.php";
//        $StackArrMin = new StackMin();
//        $StackArrMin->test($StackArrMin);

        include_once PLUGIN.DS."structure".DS."recursion.php";
        $Recursion = new Recursion();
//        $Recursion->stackReverseTest();

//        $Recursion->hanoi(1,'A','B','C');
//        _p(" ");
//        $Recursion->hanoi(2,'A','B','C');
//        exit;


        include_once PLUGIN.DS."structure".DS."queue.php";
        include_once PLUGIN.DS."structure".DS."queueTraining.php";
        $qt = new QueueTraining();
//        $qt->windowTest();
//        $qt->maxTreeTest();
//        $qt->maxRectangleTest();
//        $rs = $qt->subsetBitTest();
//        $qt->subsetMaxLessSubsetMinTest();
//        exit;
        //栈============

        include_once PLUGIN.DS."structure".DS."linkDouble.php";
        include_once PLUGIN.DS."structure".DS."linkLoop.php";
        include_once PLUGIN.DS."structure".DS."linkTraining.php";
        $lt = new LinkTraining();
//        $lt->getTwoOrderLinkCommonPartTest();
//        $lt->testDelMiddle();
//        $lt->testLoop();
//        $lt->josephLoopLinkTest();
//        $lt->josephLoopRecursionTest();
//        $lt->setupLinkNumberTest();
//        $lt->linkAddLink();
//        $lt->isLoopLink();
//        $lt->sortGroupPartTest();
//        exit;
        //链表============================================================



        include_once PLUGIN.DS."structure".DS."binaryTree.php";
        $tree  = new BinaryTree();
        $arr = array(10,1,11,3,4,20,16,7,2,5,13,6);
        $tree->addGroup($arr);
        $tree->foreachByDeep();

        exit;

//        $c->tt("开始前序");
//        $c->foreachPreorder($c->rootNodeIndex);
//        $data = $c->foreachPreorderStack($c->rootNodeIndex,1);
//        var_dump($data);exit;
//
////        $c->readFileLoadMem();exit;
//
//        $c->tt("开始中序");
//        $c->foreachMiddle($c->rootNodeIndex);
//        $c->foreachMiddleStack($c->rootNodeIndex);exit;
//        $c->tt("开始后序");
//        $c->foreachPostorder($c->rootNodeIndex);


//        $num = $c->balance();
//        var_dump($num);



        //二叉树============================================================

        include_once PLUGIN.DS."structure".DS."matrix.php";
        $m = new Matrix();
////        $m->multiply();exit;
////        $money = array(20,5,10);
////        $m->changeMoney($money,100);
//
//        $money = array(5,2,3);
//        $x = 20;
//        $m->changeMoney2($money,$x);
//
//
//        $m->changeMoneyLast($money,$x);
//        exit;
//        $rs = $m->loopChangeMoneyMap($money,0,$x);
//        echo "loop cnt".($m->loopChangeMoneyMapCnt)."<br/>";
//        echo "rs:".($rs)."<br/>";
//        var_dump($m->loopChangeMoneyMapData);
//        exit;
//        $arr  = array(1,7,4,1,7,9,3,1,6,7,8);
//        $m->addTestNumber($arr);
//        $rs = $m->unsortUnsignedIntegerSumRange(20);
//        exit;

//        $arr = array(2,1,5,3,6,4,8,9,7);
//        $m->longestIncreasingSubsequence($arr);
//        $m->longCommonSubsequence();
//        exit;
//        $arr = array(
//            array(1,3,5,9),
//            array(8,1,3,4),
//            array(5,0,6,1),
//            array(8,8,4,0),
//        );
//        $m->minPathSum($arr);
//        $m->arr= null;
//        $arr  = array(1,2,1,1,1);
//        $m->addTestNumber($arr);
//        $rs = $m->unsortUnsignedIntegerSumRange(3);

//        $m = new Matrix();
//        $arr  = array(1,7,4,1,7,9,3,1,6,7,8);
//        $m->addTestNumber($arr);
//        $rs = $m->unsortIntegerSumRange(20);
//        exit;

        //递归
//        include_once PLUGIN.DS."structure".DS."fibonacci.php";
//        $f = new Fibonacci();
//        $rs = $f->m2(20);
//        var_dump($f->cnt);
//        var_dump($f->numberPool);
//        exit;

//        include_once PLUGIN.DS."structure".DS."bloomFilter.php";
//        $bloom = new BloomFilter(100);
//        $bloom->add("absdfsdfsdfsdfcd");
//
//        include_once PLUGIN.DS."structure".DS."stringOP.php";
//        $s = new StringOP();
//
//        $dict = new WordDictionaryTree();
//        $dict->addWord("abcd");
//        $dict->addWord("abc");
//        $dict->addWord("efg");
//        var_dump($dict->map);
//
//        $dict->search("bbb");
//        $dict->search("abc");
//        $dict->search("efg");
//
//        exit;

//        0000 0011
//        111111100
//        100000100
//        var_dump(~3);exit;
//        include_once PLUGIN.DS."structure".DS."bit.php";
//        $b = new Bit();
//        $rs = $b->swap(1,2);
//        $rs = $b->max(-3 ,2);
//
//        var_dump($rs);exit;

//        include_once PLUGIN.DS."structure".DS."ArrMatrix.php";
//        $am = new ArrMatrix();
//        $am->showRectangle();
//        $am->rotate90Rectangle();
//        $am->matrixRectangle();

        include_once PLUGIN.DS."structure".DS."other.php";
        $o =  new Other();
//        $o->zeroNum1(10);
//        $o->intSeeOne(114);
//        $o->intSeeOne(999);

//        $rs = $o->numberToLanguage(1,'cn');
//        var_dump($rs);exit;
//        $o->intSeeOne2(999)
//
        $o->distributeSugar();

        exit;
        return $this->out(200);
    }

    function getServer(){
        include_once APP_CONFIG."/server.php";
        return $this->out(200,$GLOBALS['server']['ws']);
    }

    function heartbeat(){
        return $this->out(200);
    }
    //获取一个随机广告
    function getRandomAdvertise($type = 1,$limit = 1){

        $rs =  $this->advertiseService->getRandomAdvertise($type,$limit);
        return $this->out(200,$rs);

    }

    function addGrowupTask($uid){
        $lib = new TaskService();
        $rs = $lib->addUserGrowUpTask($uid);
        var_dump($rs);exit;
    }

    //
    function androidCycleState($status = 0){

    }

    /**
     * 增加金币;
     * @param string $uid
     * @param int $num
     */
    function abcd($uid = '', $num = 0){
        define('AC',$this->ac);// 定义AC常量;
        $rs = $this->userService->addGoldcoin($uid, $num, GoldcoinLogModel::$_type_play_games,1);// 110710,200000
        $this->out(200,$rs);
    }

    function dcba($uid = '', $num = 0){
        $rs = $this->userService->lessGoldcoin($uid, $num, GoldcoinLogModel::$_type_play_games,'d',"a","b",1);// 110710,200000
        $this->out(200,$rs);
    }

    function getUserTypeDesc(){
        $rs = UserModel::getTypeDesc();
        $this->out(200,$rs);
    }

    //    $keyword:目前仅支持UID
    function search($keyword){
        $rs = $this->systemService->search($this->uid,$keyword);
        return $this->out($rs['code'],$rs['msg']);
    }
    function goldcoinExchangeRMB(){
        return $this->out(200,$GLOBALS['main']['goldcoinExchangeRMB']);
    }

    function getAppVersionInfo($versionCode = 0){

        if($versionCode){
            $appInfo = AppVersionModel::db()->getRow(" version_code =  $versionCode ");
//            var_dump($appInfo);
            if(!$appInfo){
                return $this->out(1023);
            }
        }else{
            $appInfo = AppVersionModel::db()->getRow(" 1 order by version_code desc limit 1");
//            var_dump($appInfo);
        }
        return $this->out(200,$appInfo);
    }

    function cntLog($category,$type,$memo){
        if (!in_array($category, CntActionLogModel::getCategories())) {
            return $this->out(8311,$GLOBALS['code'][8311]);
        }

        if (!in_array($type, CntActionLogModel::getTypes())) {
            return $this->out(8312,$GLOBALS['code'][8312]);
        }
        $data = array(
            'category'=>$category,
            'type'=>$type,
            'memo'=>$memo,
            'a_time'=>time(),
            'uid'=>$this->uid,
        );

        $rs = CntActionLogModel::db()->add($data);
        return $this->out(200,$rs);
    }

    function feidouBindUid($feidouUid){
        if(!$feidouUid){
            $this->out(8043);
        }
        if(!arrKeyIssetAndExist($this->uinfo,'feidou_uid')){
            $this->userService->upUserDetailInfo($this->uid,array('feidou_uid'=>$feidouUid));
        }
        return $this->out(200,"ok");
    }

    public function fixSign(){
        $sql = " select id,uid,num,content,a_time from goldcoin_log where uid in (select uid from user_sign where sign_time = 7 group by uid having count(uid) > 1)  and  type = 3 order by uid desc,id desc ;";
        $data = GoldcoinLogModel::db()->getAllBySQL($sql);
        $userList = [];
        foreach ($data as $k=>$v) {
            $userList[$v['uid']][] = $v;
        }

        foreach ($userList as $k=>$v) {
            echo $k. " <br/>";
            $i = 0;
            foreach ($v as $k2=>$v2) {
                if($v2['num'] == 1388){
//                    if($k2 != count($v) - 1){
//                        if($v2['']){
//
//                        }
                        echo date("Y-m-d H:i:s",$v2['a_time'])." ". $v2['num'] . "<br/>";
                        $i++;
//                    }
                }
            }

            echo $i."<br/>";
        }
    }

    /**
     * 获取APP_UI配置（3级）;
     * @return array
     */
    public function getUiShowConfig(){
        $root = AppUiConfigModel::db()->getAll(" pid = 0 ");
        foreach ($root as $k=>$v) {
            $sub = AppUiConfigModel::db()->getAll( " pid = {$v['id']} ");
            foreach ($sub as $k2=>$v2) {
                $three = AppUiConfigModel::db()->getAll( " pid = {$v2['id']} ");
                $sub[$k2]['sub'] = $three;
                if(empty($sub[$k2]['sub'])){
                    unset($sub[$k2]['sub']);
                }
                foreach ($three as $k3=>$v3){
                    if(arrKeyIssetAndExist($v3,'dir_name')){
                        $four = AppUiConfigModel::db()->getAll( " pid = {$v3['id']} ");
                        $sub[$k2][$k3]['sub'] = $four;
                    }
                }
            }
            $root[$k]['sub'] = $sub;
        }
        return $this->out(200, $root);
    }


}