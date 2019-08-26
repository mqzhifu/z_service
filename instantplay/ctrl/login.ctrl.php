<?php
class LoginCtrl extends BaseCtrl {

    //游客模式 - 自动生成一个USER
    function guest($clientInfo = null){
        $rs =  $this->userService->loginRegister(null,null,UserModel::$_type_guest,$this->clientInfo);
        return $this->out($rs['code'],$rs['msg']);
    }

    function logout(){
        $rs = $this->userService->offline($this->uid);
        return $this->out($rs['code'],$rs['msg']);
    }
    //手机/邮箱/用户名 + 密码
    function index($username,$ps){
        return $this->userService->login($username,$ps);
    }

    function wsShutdown($server){
        $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['online_user_total']['key']);
        //清空-累加在线人数
        $rs = RedisPHPLib::getServerConnFD()->del($key);
        LogLib::wsWriteFileHash([" clear online_user_total",$rs]);
    }

    function webSocketLogin($token,$clientInfo = null){
        if($this->uid){//不要重复登陆
            return $this->out(8260);
        }

        if(!$token){
            return out_pc(8035);
        }

        $rs = $this->authToken($token);
        LogLib::wsWriteFileHash(["token",$token,$rs]);
        if($rs['code'] != 200){
            return $this->out($rs['code'],$rs['msg']);
        }

        //UID 绑定 FD,注册到全局内存变量中
        $uid = $rs['msg'];
        //多进程并发，可能同时发送2个 连接请求，这里做个容 错吧
        if($GLOBALS['uid_fd_table']->get($uid,'fd')){
            LogLib::wsWriteFileHash([" fd has exist ,do not repeat login",$token,$rs]);
            return $this->out(8260);
        }

        $rs1 = $GLOBALS['uid_fd_table']->set($uid,['fd'=>$this->clientFrame]);
        $rs2 = $GLOBALS['fd_uid_table']->set($this->clientFrame,['uid'=>$uid]);

        LogLib::wsWriteFileHash(["bind fd_uid_table",$uid,$this->clientFrame,$rs1,$rs2]);

        $this->wsWriteMysql($uid,$clientInfo);

        return $this->out(200);
    }
    //ws 连接信息，持久化到mysql
    function wsWriteMysql($uid,$clientInfo = 0 ){
        //先做容错：不排除，有人断线后，没有发出<关闭>包，S端的心跳也没检查到
        $mysqlId = $GLOBALS['mysql_id']->get($uid,'mysql_id');
        if( $mysqlId ){
            LogLib::wsWriteFileHash([" err mysql id in memory,but no close req",$uid,$mysqlId]);

            $rs = WsLogModel::upById($mysqlId,array('e_time'=>time()));
            LogLib::wsWriteFileHash($rs);
            //累减 在线数
            RedisOptLib::decrOnlineUserTotal();
            $rs2 = $GLOBALS['mysql_id']->del($uid);
        }

        $ip = "";
        $device_id = "";
        $app_version = "";
        if($clientInfo){
            $clientInfo = explode("|",$clientInfo);
            if(arrKeyIssetAndExist($clientInfo,'0'))
                $device_id = $clientInfo[0];
            if(arrKeyIssetAndExist($clientInfo,'1'))
                $app_version = $clientInfo[1];

            if(arrKeyIssetAndExist($clientInfo,'2'))
                $ip = $clientInfo[2];
        }
        $data = array('a_time'=>time(),'e_time'=>0,'uid'=>$uid,'fd'=>$this->clientFrame,'ip'=>$ip,'device_id'=>$device_id,'app_version'=>$app_version,'reg_time'=>$this->uinfo['a_time']);
        $id = WsLogModel::add($data);

        $rs = $GLOBALS['mysql_id']->set($uid,['mysql_id'=>$id]);
        LogLib::wsWriteFileHash([" set mysql id in memory",$id,$rs,$uid]);

        RedisOptLib::incrOnlineUserTotal();
    }

    function cellphonePS($cellphone,$ps){
        $rs = $this->userService->loginCellphonePS($cellphone,$ps,$this->clientInfo);
        return $this->out($rs['code'],$rs['msg']);
    }


    function pcLoginCellphonePs($cellphone,$ps){
        $rs = $this->userService->selfLogin($cellphone,$ps,UserModel::$_type_pc_cellphone_ps);
        var_dump($rs);exit;
    }

    function pcLoginCellphoneSMS($cellphone,$smsCode){
        $rs = $this->userService->selfLogin($cellphone,null,UserModel::$_type_pc_cellphone_sms,$smsCode);
        var_dump($rs);exit;
    }

    //手机验证码 - 登陆
    // 1 API-手机端-登陆：是只需要手机短信验证码的
    // 2 PC端：是需要图片验证码的

    function cellphoneSMS($cellphone,$smsCode){
        $rs = $this->userService->loginRegister($cellphone,null,UserModel::$_type_cellphone,$this->clientInfo,null,$smsCode,$this->uid);
//        if($rs['code'] == 200){
//            $this->gamesService->loginHook($rs['msg']['uid'],$this->uid);
//        }
        return $this->out($rs['code'],$rs['msg']);
    }

    function third($type,$uniqueId , $nickname , $avatar , $sex ,$unionId = 0){
        if(!$uniqueId){
            return $this->out(8030);
        }

        if(!$nickname){
            return $this->out(8031);
        }

//        if(!$avatar){
//            return $this->out(8032);
//        }

        if(!$type){
            return $this->out(8004);
        }

        if(!UserModel::keyInRegType($type)){
            return $this->out(8210);
        }

        if($this->userService->getTypeMethod($type) != 'third'){
            return $this->out(8242);
        }

        $thirdInfo = array(
            'nickname'=>$nickname,'avatar'=>$avatar,'sex'=>$sex,'unionId'=>$unionId,
        );

        $clienInfo = get_client_info();

        $rs = $this->userService->loginRegister($uniqueId ,null,$type,$clienInfo,$thirdInfo,null,$this->uid);
//        if($rs['code'] == 200){
//            $this->gamesService->loginHook($rs['msg']['uid'],$this->uid);
//        }

        return $this->out($rs['code'],$rs['msg']);
    }

    //断开连接
    function onClose($fd){
        $mysqlId = $GLOBALS['mysql_id']->get($this->uid,'mysql_id');
        LogLib::wsWriteFileHash([" get mysql id in memory",$this->uid,$mysqlId]);

        if($mysqlId){
            $rs1 = WsLogModel::upById($mysqlId,array('e_time'=>time()));
            $rs2 = $GLOBALS['mysql_id']->del($this->uid);
            LogLib::wsWriteFileHash(['up mysql rs',$rs1,"del table mysqlid",$rs2]);
        }else{
            LogLib::wsWriteFileHash(["err----====////=====no mysql_id up wslog table ",$this->uid]);
        }

        RedisOptLib::delOnlineUserTotal();

        $rs1 = $GLOBALS['uid_fd_table']->del($this->uid);
        $rs2 = $GLOBALS['fd_uid_table']->del($fd);

        LogLib::wsWriteFileHash([" del uid_fd_table,mysql_id",$rs1,$rs2]);

        return $this->out(200,array('mysqlId'=>$mysqlId,$rs1,$rs2));
    }


    function WXGame($code,$clientInfo = null){
//        if($code == '1234'){//测试用
//            //opeind 为 A闪
//            $rs['msg'] = "{\"session_key\":\"Sd2cStc5Atqp2c8SIshlKA==\",\"openid\":\"oNa4Q5YO9lJJpKs0M11ogIRYr-iY\"}";
//            $rs['code'] = 200;
//        }else{
//            $host = "https://api.weixin.qq.com/sns/jscode2session?";
//            $appid = "wx6596bb5a42679da2";
//            $secret = "be445939c81a4736c88b383a27e5eaa6";
//
//            $url = $host."appid=$appid&secret=$secret&js_code=$code&grant_type=authorization_code";
//
//
//            $rs = CurlLib::send($url,1,null,1);
//        }
//
//        if($rs['code'] == 200){
//            $json = json_decode($rs['msg'],'true');
//            if(arrKeyIssetAndExist($json,'errcode')){
//                $this->outJson($json['errcode'],$json['errmsg']);
//            }
//        }else{
//            echo json_encode($rs);exit;
//        }
//
//        $this->login($json['openid'],$clientInfo);
//
//        $user = UserModel::db()->getRow(" type ='".UserModel::$_type_wechat."' and openid = '$thirdUniqueUid' " );
//
//        //时间|服务器标识|设备OS|OS版本|分辨率|设备序列号|设备UDID|设备物理地址|设备UA|客户端IP|引流渠道|平台账户ID|UID
//        $logPost = date("Y-m-d H:i:s")."|juesheng_sanguo|";
//        if($clientInfo){
//            $clientInfo = explode(",");
//            $logPost .= implode("|",$clientInfo);//3个取不到
//        }else{
//            $logPost .= "0|0|0|0|0|0|0|";
//        }
//        $logPost .= get_client_ip()."|wxgame|";
//
//        include_once CONFIG_DIR."/sanguoadmin/apiVersion.php";
//
//        if($user){
//            $uid = $user['id'];
//
//            $logPostUrl = "http://119.29.225.19:8001/logIn.php?log=1|".  $logPost .$uid;
//            $rs = CurlLib::send($logPostUrl);
////            var_dump($rs);exit;
//        }else{
//            $data = array(
//                'openid'=> $thirdUniqueUid,
////                'wx_session_key'=>$json['session_key'],
//                'a_time'=>time(),
//                'type'=>UserModel::$_type_wechat,
//                'base_level'=>1,
//                'base_exp'=>1,
//                'boss_level'=>2,
//                'angry'=>0,
//                'magic'=>100,
//                'goldcoin'=>0,
//                'sunflower'=>0,
//                'magic_use_cnt'=>0,
//            );
//
//            $uid = UserModel::db()->add($data);
//
//
//            $logPostUrl = "http://119.29.225.19:8001/logIn.php?log=2|".  $logPost ."|$thirdUniqueUid|".$uid;
//            CurlLib::send($logPostUrl);
//        }
//
//        $taskClass = new TaskLib();
//        //增加用户日常任务
//        $rs = $taskClass->addUserDailyTask($uid);
//        //登陆完成一个任务，需要触发一下
//        $rs = $taskClass->trigger($uid,1);
//
//        $id = LoginModel::add($this->uid,2);
//
//        $key = RedisPHPLib::getAppKeyById($GLOBALS['rediskey']['token']['key'],$uid);
//        if($user){
//            $token = RedisPHPLib::get($key);
//            if(!$token){
//                $token = TokenLib::create(UserModel::$_type_wechat.$uid);
//                RedisPHPLib::set($key,$token,$GLOBALS['rediskey']['token']['expire']);
//            }
//        }else{
//            $token = TokenLib::create(UserModel::$_type_wechat.$uid);
//            RedisPHPLib::set($key,$token,$GLOBALS['rediskey']['token']['expire']);
//        }
//
//
//
//
//        $this->outJson(200,array('token'=>$token,'version'=>$GLOBALS['apiVersion']));
    }
}