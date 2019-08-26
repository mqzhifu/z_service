<?php
//基类-该模块忽略，前端用不到
interface BaseInf{
    function initUserLoginInfoByToken();//初始化用户登陆信息BY-token
    function checkUserBlackList($uid);//判断用户是否在黑名单中|用户ID
    function checkIPBlackList();//判断请求IP 是否在黑名单中
    function checkAPIRequestCnt();//checkAPIRequestCnt
    function loginAPIExcept();//判断请求接口是否需要登陆
}
//用户
interface UserInf{
    function levelTotalRank();//等级 总排行榜
    function getOne();//获取一个用户信息
    function pushUserInfo($nickname = null,$gender =null,$avatarUrl = null ,$country = null,$province = null,$city = null);//微信授权后-推送用户信息|昵称##性别##头像##国家##省##市
    function getFriendDefense();//获取-好友-守护-列表
    function addFriendDefense($srcUid,$targetUid);//好友成为守护|源用户##目标用户
}
//默认
interface IndexInf{
    function index();//默认页，没用
    function heartbeat();//心跳
    function getEventMsg( $type );//拉取消息|1好友加守护
    function gameActionCnt($mergeTower = 0,$sunflower = 0,$killedMonster = 0,$makeTower = 0);//客服端PUSH用户行为统计|合并塔数量##获取粮草数##击杀怪物次数##生成塔次数
}
//登陆
interface LoginInf{
    function WXGame($code);//微信登陆|前端API到微信获取的CODE，服务器再换取OPENID
}
//银行--该模块忽略，前端用不到
//interface BankInf{
//    function addGoldcoin($num,$type,$isShare = 0,$memo = '');//增加金币|数量##分类##是否为共享##备注
//    function mergeTower($srcTowerId,$targetTowerId,$srcMapId,$targetMapId);//合并塔
//}
//游戏
interface GameInf{
    function bossUpgrade();//boss升级-忽略,前端不用
    function baseUpgrade();//基地升级步奖励的ID-忽略,前端不用
    function useAngry();//使用怒气
    function getMapInfo();//获取地图信息
    function setMapInfo($mapInfo);//设置地址信息
    function setOne($base_level = 0,$base_exp = 0,$goldcoin = 0,$boss_level = 0,$sunflower = 0,$magic = 0,$magicUseCnt = 0);//设置用户信息|基地等级##基地血量##金币##BOSS等级##向日葵##魔法值##魔法使用次数
    function getOfflineReward($rewardId = 0);//获取一个用户短时间内离线的钱|上一次奖励的ID
}
//礼包-该模块忽略，前端用不到
interface GiftBag{
    function getOne($giftBagId);//取得一个礼包|礼包ID
    function getReward($giftBagId);//领取一个礼包|礼包ID
}
//第3方回调-忽略暂不用
interface CallbackInf{
    function getInfo();//此处主要是接微信用，暂时不考虑
}
//任务
interface TaskInf{
    function getUserReward($taskId,$isShare = 0);//用户领取奖励|任务ID##是否为分享，加倍奖励~
    function getUserList();//获取用户今日-任务列表
}


