<?php
class BaseCtrl {
    public $uid = 0;
    public $uinfo = null;

    public $userService = null;
    public $msgService = null;
    public $friendService = null;
    public $fansService = null;
    public $gamesService = null;
    public $imSevice =null;
    public $advertiseService =null;
    public $systemService =null;

    public $accessMore_aid = 0;

    public $userReqCntMax = 1000;
    public $userReqCntTime = 300;

    public $IPReqCntMax = 2000;
    public $IPReqCntTime = 180;


    public $clientInfo = null;//APP推送的客户端信息
    public $clientFrame = null;//长连接的FD/SERVER信息

    function __construct($clientFrame = null,$ctrl = null,$ac= null){
        LogLib::appWriteFileHash(['base start:','clientFrame:',$clientFrame,'ctrl:',$ctrl,'ac:',$ac]);


        if($clientFrame){
            if(RUN_ENV == 'WEBSOCKET'){
                LogLib::wsWriteFileHash(["clientFrame",$clientFrame]);
            }

            if(is_array($clientFrame) || is_object($clientFrame)){
                $this->clientFrame = $clientFrame->fd;
            }else{
                $this->clientFrame = $clientFrame;
            }
        }

        //接口配置信息
        include_once CONFIG_DIR.DS.IS_NAME."/api.php";

        $this->ctrl = $ctrl;
        $this->ac = $ac;

        //客户端请求信息
        $this->clientInfo = get_client_info();

        //实例化 用户 服务 控制器
        $this->userService = new UserService();
        $this->msgService = new MsgService();
        $this->friendService = new FriendService();
        $this->fansService = new FansService();
        $this->gamesService = new GamesService();
        $this->imSevice = new ImService();
        $this->advertiseService = new AdvertiseService();
        $this->systemService = new SystemService();
        $this->taskService = new TaskService();
        $this->bankService = new BankService();
        $this->signService = new SignService();
        $this->lotteryService = new LotteryService();

        $tokenRs = $this->initUserLoginInfoByToken();
        LogLib::appWriteFileHash(["initUserLoginInfoByToken",$tokenRs]);

        if($tokenRs['code'] != 200){
            return $this->out($tokenRs['code'],$tokenRs['msg']);
        }

        if(arrKeyIssetAndExist($this->uinfo,'id')){
            if(RUN_ENV != 'WEBSOCKET'){
                $rs = $this->checkIfUserBlocked($this->uid);
                if($rs){
                    return $this->out(6004);
                }
            }
        }

        if(arrKeyIssetAndExist($this->uinfo,'status')){
            return $this->out(4009);
        }

//        if(ENV == 'release'){
//            $rs = $this->checkAPIRequestCnt();
//            if(!$rs){
//                return $this->out(5003);
//            }
//        }

        if($this->uid){
            $this->gamesService->setDayActiveUser($this->uid);
//            $this->gamesService->setEverydayActiveUser($this->uid);
        }


        $check = $this->loginAPIExcept();
        if(!$check){
//            LogLib::wsWriteFileHash([$this->ac."check loginAPIExcept",$this->uinfo]);
            if(!$this->uinfo){
                return $this->out(5001);
            }
        }
        //每日 任务初始化
        $this->taskService->addUserDailyTask($this->uid);
//        if( RUN_ENV == 'WEBSOCKET'){
//            $GLOBALS['ws_server']->bind($this->clientFrame->fd,LOGIN_UID);
//        }

    }


    //暂时不做
    function setMemoName($memo){
        if(!$memo){
            return out_pc(8042);
        }
    }

    function out($code,$msg = "",$isLog = 1){
        if($code == 200){
            if(!$msg){
                if($msg === ""){
                    $msg = $GLOBALS['code'][$code];
                }elseif($msg === 0){
                    $msg = 0;
                }else{
                    $msg = [];
                }
            }

            if(is_string($msg) && $msg == 'space_string'){
                $msg = "";
            }

            $apiMethod = null;
            if(isset($GLOBALS['api'][$this->ctrl][$this->ac])){
                $apiMethod = $GLOBALS['api'][$this->ctrl][$this->ac];
            }

            if(!$apiMethod){
                LogLib::appWriteFileHash(["=====","no apimethod"]);
            }
            if($apiMethod && arrKeyIssetAndExist($apiMethod,'return')){
                foreach($apiMethod['return'] as $k=>$v){
                    //标量
                    if($k =='scalar') {
                        if ($v['must']) {
                            if ($v['type'] == 'int') {
                                $msg = intval($msg);
                            } elseif ($v['type'] == 'string') {
                                $msg = (string)$msg;
                            }
                        } else {
                            if( ! $msg ){
                                continue;
                            }

                            if ($v['type'] == 'int') {
                                $msg = intval($msg);
                            } elseif ($v['type'] == 'string') {
                                $msg = (string)$msg;
                            }
                        }
                        //判断当前KEY   是不是  一维数据
                    }elseif($k == 'array_key_number_one'){
                        if($v['must']){
                            if(!$msg){
                                exit("return value must have value.array_key_number_one");
                            }
                        }
                        foreach($msg as $k3=>$v3){
                            foreach($v['list'] as $k2=>$v2){
                                if($v2['must']){
                                    if($v2['type'] == 'int'){
                                        $msg[$k2] = intval($msg[$k2]);
                                    }elseif($v2['type'] == 'string'){
                                        $msg[$k2] = (string)$msg[$k2];
                                    }
                                }else{
                                    if(arrKeyIssetAndExist($msg,$k2)){
                                        if($v2['type'] == 'int'){
                                            $msg[$k2] = intval($msg[$k2]);
                                        }elseif($v2['type'] == 'string'){
                                            $msg[$k2] = (string)$msg[$k2];
                                        }
                                    }
                                }

                            }
                        }
                    //是个 二维数组
                    }elseif($k == 'array_key_number_two'){
                        if($v['must']){
                            if(!$msg){
                                exit("return value must have value.array_key_number_two");
                            }
                        }

                        foreach($msg as $k3=>$v3){
                            foreach($v['list'] as $k2=>$v2){
                                if($v2['type'] == 'int'){
                                    $msg[$k3][$k2] = intval($msg[$k3][$k2]);
                                }elseif($v2['type'] == 'string'){
                                    $msg[$k3][$k2] = (string)$msg[$k3][$k2];
                                }
                            }
                        }
                    }elseif(arrKeyIssetAndExist($v,'type')){
                        if ($v['must']) {
                            if ($v['type'] == 'int') {
                                $msg[$k] = intval($msg[$k]);
                            } elseif ($v['type'] == 'string') {
                                $msg[$k] = (string)$msg[$k];
                            }
                        } else {
                            if( ! $msg ){
                                continue;
                            }

                            if ($v['type'] == 'int') {
                                $msg[$k] = intval($msg[$k]);
                            } elseif ($v['type'] == 'string') {
                                $msg[$k] = (string)$msg[$k];
                            }
                        }
                    }


                    elseif($v['array_type'] =='array_key_number_one'){
                        if($v['must']){
                            if(!arrKeyIssetAndExist($msg,$k)){
                                exit("return value must have value.array_type array_key_number_one");
                            }
                        }
                        foreach($msg[$k] as $k3=>$v3){
                            foreach($v['list'] as $k2=>$v2){
                                if($v2['must']){
                                    if($v2['type'] == 'int'){
                                        $msg[$k][$k3] = intval($msg[$k][$k3]);
                                    }elseif($v2['type'] == 'string'){
                                        $msg[$k][$k3] = (string)$msg[$k][$k3];
                                    }
                                }else{
                                    if(arrKeyIssetAndExist($msg[$k],$k3)){
                                        if($v2['type'] == 'int'){
                                            $msg[$k][$k3] = intval($msg[$k][$k3]);
                                        }elseif($v2['type'] == 'string'){
                                            $msg[$k][$k3] = (string)$msg[$k][$k3];
                                        }
                                    }
                                }
                            }
                        }
                    }elseif($v['array_type'] =='array_key_number_two'){
                        if(!$v['must']){
                            if(!arrKeyIssetAndExist($msg,$k)){
                                continue;
                            }
                        }

                        foreach($msg[$k] as $k3=>$v3){
                            foreach($v['list'] as $k2=>$v2){
                                if($v2['type'] == 'int'){
                                    $msg[$k][$k3][$k2] = intval($msg[$k][$k3][$k2]);
                                }elseif($v2['type'] == 'string'){
                                    $msg[$k][$k3][$k2] = (string)$msg[$k][$k3][$k2];
                                }
                            }
                        }
                    }else{
                        exit("api config return info err!");
                    }
                }
            }
        }


//        if(is_array($msg)){
//            foreach($msg as $k=>$v){
//                if(is_numeric($v)){
//                    $msg[$k] = (int)$v;
//                }
//            }
//        }else{
//            if(is_int($msg)){
//                $msg = (int)$msg;
//            }
//        }

        $data = array('code'=>$code,"msg"=>$msg);



        if($isLog){
            if(RUN_ENV != 'WEBSOCKET'){
                $exec_time = $GLOBALS['start_time'] - microtime(TRUE);
                $result = $this->uinfo;// 三期项目新增 20190401;
                if( $msg ){
                    $msg = json_encode($msg);
                    if( strlen( $msg ) >1000){
                        $msg = substr( $msg,0,1000);
                    }
                }
//                LogLib::appWriteFileHash($msg);
                $accessData = array(
                    'uid'=>$this->uid,
                    'return_info'=>$msg,
                    'exec_time'=>$exec_time,
                    'sex'=>$result['sex']
                );

                if( strpos(APP_NAME,'admin') === false){
                    if($this->ctrl !='sdk'){
//                        AccesslogModel::db()->upById($this->access_aid,$accessData);
                        $accessData['code'] = $code;
                        AccessLogMoreModel::upById($this->accessMore_aid,$accessData);
                    }

                }
            }
        }


        if(RUN_ENV == 'WEBSOCKET'){
            return $data;
        }else{
            $echo =json_encode($data);
            echo $echo;
            exit;
        }
    }

    //有些接口，必须是登陆后，才能访问~有些不需要
    function loginAPIExcept($ctrl = "",$ac = ""){
        if(!$ctrl && !$ac ){
            $ctrl = $this->ctrl;
            $ac = $this->ac;
        }


        $arr = $GLOBALS['main']['loginAPIExcept'];

        foreach($arr as $k=>$v){
            if($v[0] == $ctrl && $v[1] == $ac){
                return 1;
            }
        }

        return 0;
    }
    //判断登陆，初始化用户信息
    function initUserLoginInfoByToken(){
        if(RUN_ENV == "WEB"){

            $token = _g('token');
            if(!$token)
                return out_pc(200,'no token');


            $rs = $this->authToken($token);
            if($rs['code'] != 200){
                return $rs;
            }
            LogLib::appWriteFileHash([$token,$rs['msg']]);
            $this->uid = $rs['msg'];
        }elseif(RUN_ENV == "WEBSOCKET"){
//            if($GLOBALS['uid_fd_table']->exist($this->clientFrame->fd)){
//                $this->uid = $GLOBALS['uid_fd_table']->get($this->clientFrame->fd)['uid'];
//            }

            if($GLOBALS['fd_uid_table']->exist($this->clientFrame)){
                $this->uid = $GLOBALS['fd_uid_table']->get($this->clientFrame,'uid');
                LogLib::wsWriteFileHash(["fd_uid_table get uid=",$this->uid]);
            }else{
                LogLib::wsWriteFileHash(["fd_uid_table no exist",$this->clientFrame]);
            }
        }


        return out_pc(200);
    }

    function authToken($token){
        $uidInfo = TokenLib::getUid($token);
        if(!$uidInfo || !$uidInfo['uid']){
            return out_pc(8109);
        }
        $uid = $uidInfo['uid'];
        if(time() > $uidInfo['expire']){
            return out_pc(8230);
        }

        if($uid){

            //防止黑客伪造非整形UID,这样后面所有程度在读取的时候，都会错
            $uid = (int)$uid;
            if(!$uid || $uid < 0 ){
                return out_pc(8105);
            }

            $redisToken = RedisOptLib::getToken($uid);
            if(!$redisToken){
                return out_pc(8231);
            }

            if($redisToken != $token){
                return out_pc(8232);
            }
            $this->uinfo = $this->userService->getUinfoById($uid);
            if(!$this->uinfo){//TOKEN解出的UID 不在DB中
                return out_pc(1002);
            }
        }

        return out_pc(200,$uid);
    }

    //用户是否在黑名单中
//    function checkUserBlackList($uid ){
//        $rs = UserBlackModel::isBlack($uid);
//        if(!$rs){
//            return false;
//        }
//        return true;
//    }
    //用户访问IP是否在黑名单中
//    function checkIPBlackList(){
//        $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['blackip']['key'],get_client_ip());
//        $expireTime = RedisPHPLib::get($key);
//        if(!$expireTime){
//            return false;
//        }
//
//        return true;
//    }
    //检查API请求次数，防止被攻击
//    function checkAPIRequestCnt(){
//        if($this->uinfo){
//            $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['cntUserReq']['key'],$this->uid);
//            //已登陆用户，针对UID 进行限制
//            $cnt = RedisPHPLib::get($key);
//            if($cnt === false){
//                RedisPHPLib::getServerConnFD()->set($key,0,$this->userReqCntTime);
//            }
//
//            LogLib::appWriteFileHash(["checkAPIRequestCnt",$key,$cnt]);
//            if($cnt && $cnt > $this->userReqCntMax){
//                UserBlackModel::add($this->uinfo['id'],1);
//                return false;
//            }
//
//            RedisPHPLib::getServerConnFD()->incr($key);
//        }
//
//        $IPBlackKey = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['blackip']['key'],get_client_ip());
//        $isBlack  = RedisPHPLib::getServerConnFD()->get($IPBlackKey);
//        LogLib::appWriteFileHash([$IPBlackKey,$isBlack]);
////        if($isBlack){
////            return false;
////        }
//
//        $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['cntIPReq']['key'],get_client_ip());
//        $cnt = RedisPHPLib::get($key);
//        LogLib::appWriteFileHash(["................ip cnt :$cnt"]);
//
//
//
//        if($cnt === false){
//            RedisPHPLib::getServerConnFD()->set($key,0,$this->IPReqCntTime);
//        }
//
//        if($cnt > $this->IPReqCntMax){
//            //禁止这个IP 一个小时
//            RedisPHPLib::getServerConnFD()->set($IPBlackKey,time(),60 * 60);
//            return false;
//        }
//
//        RedisPHPLib::getServerConnFD()->incr($key);
//        return true;
//    }

//    function serverIsOnline($uid){
//        $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['serverOnline']['key'],$uid);
//        $rs = RedisPHPLib::get($key);
//
//        return $rs;
//    }


    function checkIfUserBlocked($uid) {
        return false;
        if (UserBlackModel::isBlocked($uid)) {
            return true;
        }
        return false;
    }


}