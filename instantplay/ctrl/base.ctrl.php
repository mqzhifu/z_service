<?php
class BaseCtrl {
    public $uid = 0;
    public $uinfo = null;

    public $router = null;

    public $userService = null;
    public $imSevice =null;
    public $systemService =null;

    function __construct($router){
        $this->router = $router;
        LogLib::appWriteFileHash(null, (array)$this->router);
//        if($clientFrame){
//            if(RUN_ENV == 'WEBSOCKET'){
//                LogLib::wsWriteFileHash(["clientFrame",$clientFrame]);
//            }
//
//            if(is_array($clientFrame) || is_object($clientFrame)){
//                $this->clientFrame = $clientFrame->fd;
//            }else{
//                $this->clientFrame = $clientFrame;
//            }
//        }

        //接口配置信息
        include_once APP_CONFIG_DIR.DS."api.php";
        //所有错误码
        include_once APP_CONFIG_DIR.DS."api_err_code.php";
        //主-配置文件
        include_once APP_CONFIG_DIR.DS."main.php";
        //redis所有key的配置文件
        include_once APP_CONFIG_DIR.DS."rediskey.php";

        include_once APP_CONFIG_DIR.DS."lang".DS .LANG.DS ."err.php";
        include_once APP_CONFIG_DIR.DS."lang".DS .LANG.DS ."desc.php";


//        //实例化 用户 服务 控制器
//        $this->userService = new UserService();
//        $this->imSevice = new ImService();
//        $this->systemService = new SystemService();
//
//        $tokenRs = $this->initUserLoginInfoByToken();
//        LogLib::appWriteFileHash(["initUserLoginInfoByToken",$tokenRs]);
//
//        if($tokenRs['code'] != 200){
//            return $this->out($tokenRs['code'],$tokenRs['msg']);
//        }
//
//        if(arrKeyIssetAndExist($this->uinfo,'id')){
//            if(RUN_ENV != 'WEBSOCKET'){
//                $rs = $this->checkIfUserBlocked($this->uid);
//                if($rs){
//                    return $this->out(6004);
//                }
//            }
//        }
//
//        if(arrKeyIssetAndExist($this->uinfo,'status')){
//            return $this->out(4009);
//        }
//
//        if($this->uid){
//            $this->gamesService->setDayActiveUser($this->uid);
//        }

//        $check = $this->loginAPIExcept();
//        if(!$check){
//            if(!$this->uinfo){
//                return $this->out(5001);
//            }
//        }
//        //每日 任务初始化
//        $this->taskService->addUserDailyTask($this->uid);
    }

    function out($code,$msg = ""){
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
            if(isset($GLOBALS[APP_NAME]['api'][$this->router->ctrl][$this->router->ac])){
                $apiMethod = $GLOBALS[APP_NAME]['api'][$this->router->ctrl][$this->router->ac];
            }

            if(!$apiMethod){
                LogLib::appWriteFileHash("apimethod");
            }
            if($apiMethod && arrKeyIssetAndExist($apiMethod,'return')){
                $msg = FilterLib::apiReturnDataCheckInit($apiMethod['return'],$msg);
            }
        }

        $data = array('code'=>$code,"msg"=>$msg);

        if(RUN_ENV == 'WEBSOCKET'){
            return $data;
        }else{
            $echo =json_encode($data);
            return $echo;
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

}