<?php
class IndexCtrl extends BaseCtrl  {

    function index(){
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