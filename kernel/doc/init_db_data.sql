LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,0,'开发者管理','','','developer','fa-user',1,300),(2,0,'游戏管理','','','game','fa-gamepad',1,290),(3,0,'广告管理','','','ad','fa-phone-square',1,280),(4,0,'平台数据','','','platform','fa-database',1,270),(5,0,'内容发布','','','content','fa-copy',1,220),(6,0,'APP推广管理','','','promotion','fa-sitemap',1,180),(7,0,'APP玩家管理','','','user','fa-user-md',1,160),(8,0,'APP管理','','','app_manager','fa-android',0,0),(9,0,'APP提现管理','','','app_cnt','fa-pencil-square-o',1,120),(10,0,'结算管理','','','finance','fa-calendar',1,200),(11,0,'消息通知','','','msg','fa-envelope',1,210),(12,0,'账号权限管理','','','power','fa-gear',1,190),(13,1,'已通过','examine','ok','','',1,0),(14,1,'审核中','examine','audit','','',1,0),(15,1,'未提交','examine','wait','','',1,0),(16,2,'已上架','game','online','','',1,0),(17,2,'已通过','game','auditPass','','',1,0),(18,2,'审核中','game','audit','','',1,0),(19,2,'未提交','game','wait','','',1,0),(20,3,'广告位管理','','','manager','',1,0),(21,20,'有效','examine','ok','','',1,0),(22,20,'审核中','examine','audit','','',1,0),(23,20,'暂停','examine','pause','','',1,0),(24,3,'广告收入数据','income','date','','',0,0),(25,4,'数据汇总','datatotal','index','','',1,0),(26,4,'产品数据','product','index','','',0,0),(27,128,'游戏数据','game','index','','',1,1),(28,128,'订单列表','orders','index','','',1,5),(29,5,'分类','category','index','','',0,0),(30,5,'文档','doc','index','','',1,0),(31,5,'回收站','recovery','index','','',1,0),(32,6,'推广游戏','game','index','','',1,0),(33,6,'banner管理','banner','index','','',1,0),(34,7,'玩家列表','user','index','','',1,0),(35,141,'广告展示管理','show','index','','',1,0),(36,9,'提现审核','moneyTx','index','','',1,1),(37,140,'问题反馈','feedback','index','','',1,0),(38,142,'版本升级管理','upgrade','index','','',1,0),(39,9,'提现统计','money','index','','',1,2),(40,9,'金币生态汇总','goldcoinSummary','index','','',1,3),(41,9,'地域分析','area','index','','',0,0),(42,9,'APP数据汇总','app','index','','',0,0),(43,9,'游戏数据详情','game','index','','',0,0),(44,9,'分享邀请数据','share','index','','',0,0),(45,9,'广告数据','ad','index','','',0,0),(46,10,'结算信息管理','','index','manager','',1,0),(47,46,'已通过','manager','ok','','',1,0),(48,46,'审核中','manager','audit','','',1,0),(49,46,'未提交','manager','wait','','',1,0),(50,10,'收入及推送设置','incomePush','index','','',1,0),(51,10,'内购结算','','index','purchase','',1,0),(52,51,'设置分成比例','moneyDivide','index','','',1,0),(53,51,'商务流程','businessProcess','index','','',1,0),(54,51,'财务流程','financeProcess','index','','',1,0),(55,10,'广告结算','','','ad','',1,0),(56,55,'设置分成比例','moneyDivide','index','','',1,0),(57,55,'商务流程','businessProcess','index','','',1,0),(58,55,'财务流程','financeProcess','index','','',1,0),(59,11,'平台消息','platformMsg','index','','',1,0),(60,11,'APP push','appPush','index','','',1,0),(61,148,'管理员账号','account','index','','',1,0),(62,148,'角色权限设置','power','index','','',1,0),(63,148,'操作日志','log','index','','',1,0),(64,0,'API-WIKI','','','wiki','fa-file-text',1,0),(65,64,'金融/bank','api','bank',NULL,'',1,0),(66,64,'游戏/game','api','game',NULL,'',1,0),(67,64,'用户安全/userSafe','api','userSafe',NULL,'',1,0),(68,64,'聊天室/IM','api','im',NULL,'',1,0),(69,64,'消息/push','api','push',NULL,'',1,0),(70,64,'关注/fans','api','fans',NULL,'',1,0),(71,64,'系统/system','api','system',NULL,'',1,0),(72,64,'邀请码/invite','api','invite',NULL,'',1,0),(73,64,'任务/task','api','task',NULL,'',1,0),(74,64,'签到/sign','api','sign',NULL,'',1,0),(75,64,'抽奖/lottery','api','lottery',NULL,'',1,0),(76,64,'平台接口/SDK','api','sdk',NULL,'',1,0),(77,0,'日志',NULL,NULL,'record','',1,0),(78,77,'登陆','login','index',NULL,'',1,0),(79,77,'游戏','playedGames','index',NULL,'',1,0),(80,9,'金币消耗详情','goldcoin','index','','',1,5),(81,64,'登陆/login','api','login',NULL,'',1,0),(82,64,'用户/user','api','user',NULL,'',1,0),(83,9,'玩家金币查询','playerGold','index',NULL,'',1,4),(84,2,'已下架','game','offline',NULL,'',1,0),(85,12,'APP审核人员管理','auditor','index',NULL,'',1,0),(86,64,'广告/advertise','api','advertise','','',1,0),(87,12,'外链游戏添加管理','linkGamePower','index','','',1,0),(88,0,'quiz-api',NULL,NULL,'quiz_api_wiki','',1,0),(89,88,'登陆/login','api','login',NULL,'',1,0),(90,88,'用户/user','api','user',NULL,'',1,0),(91,88,'抽奖/lottery','api','lottery',NULL,'',1,0),(92,88,'签到/sign','api','sign',NULL,'',1,0),(93,88,'题库/task','api','task',NULL,'',1,0),(94,7,'封/解账号','userBlock','index','','',1,0),(95,88,'生命值/武器相关/game','api','game',NULL,'',1,0),(96,7,'封/解IP','ipBlock','index','','',1,0),(97,6,'推荐游戏设置','recommend','index','','',1,0),(100,0,'QUIZ-后台配置','','','quiz','fa-copy',0,0),(101,100,'礼品配置管理','manager','index','','',1,0),(102,0,'游戏时长','','','xyx_cnt','fa-pencil-square-o',1,240),(103,102,'小游戏时长-单日','time','byHour',NULL,'',1,2),(104,102,'小游戏时长-分段','time','byDay',NULL,'',1,3),(105,102,'小游戏点击次数','time','click',NULL,'',1,4),(106,146,'APP时长-单日','time','byHour',NULL,'',1,0),(107,146,'APP时长-分段','time','byDay',NULL,'',1,0),(108,146,'APP单用户使用时长','time','singleUser',NULL,'',1,0),(109,88,'系统相关/system','api','system',NULL,'',1,0),(110,100,'礼品兑换管理','exchange','index','','',1,0),(111,102,'小游戏-汇总','time','total',NULL,'',1,1),(114,139,'渠道配置','channel','index','','',1,0),(113,64,'默认/index','api','index',NULL,'',1,0),(115,0,'H5传播统计','','','app_share','fa-pencil-square-o',1,230),(116,115,'传播数据详情','gameDetail','index','','',1,3),(117,115,'数据汇总','game','index','','',1,1),(118,115,'单款游戏查询','gameInquire','index','','',1,2),(120,119,'【权限】管理员账号','account','index','','',1,0),(121,119,'【权限】权限设置','power','index','','',1,0),(122,119,'【权限】操作日志','log','index','','',1,0),(123,119,'【游戏】游戏列表','game','index','','',1,0),(124,119,'【广告】有效','examine','ok','','',1,0),(125,119,'【广告】审核中','examine','audit','','',1,0),(126,119,'【广告】暂停','examine','pause','','',1,0),(127,119,'【数据】数据上传','dataUpload','index','','',1,0),(128,0,'游戏数据','','','games','fa-gamepad',1,260),(130,128,'基础数据','tmp_ctrl','tmp-ac','','',0,2),(131,128,'LTV数据','tmp_ctrl','tmp-ac','','',0,3),(132,128,'留存数据','tmp_ctrl','tmp-ac','','',0,4),(134,0,'广告数据','','','ad_datas','fa-gamepad',0,250),(135,134,'广告数据-小游戏','tmp_ctrl','tmp-ac','','',1,0),(136,134,'广告数据-广告类型','tmp_ctrl','tmp-ac','','',1,0),(137,134,'基础数据','tmp_ctrl','tmp-ac','','',1,0),(138,102,'游戏时长-汇总','tmp_ctrl','tmp_ac',NULL,'',0,1),(139,0,'APP渠道游戏配置','','','app_manager_channel','fa-android',1,170),(140,0,'APP问题反馈','','','app_manager_feedback','fa-user-md',1,150),(141,0,'APP广告管理','','','app_manager_ad','fa-user-md',1,140),(142,0,'APP版本升级','','','app_manager_version','fa-user-md',1,130),(143,0,'海外版提现兑换管理','','','tmp1','fa-pencil-square-o',0,110),(144,143,'海外提现管理','tmp_ctrl','tmp_ac',NULL,'',1,0),(145,0,'APP数据统计','','','tmp2','fa-pencil-square-o',0,100),(146,0,'APP使用时长','','','xyx_app_cnt','fa-pencil-square-o',1,90),(148,12,'账号权限管理','','','user','',1,0),(159,100,'玩家管理','wanjia','index','','',1,0),(149,145,'应用情况','tmp_ctrl','tmp-ac','','',1,0),(150,145,'用户趋势','tmp_ctrl','tmp-ac','','',1,0),(151,145,'活跃用户','tmp_ctrl','tmp-ac','','',1,0),(152,145,'版本分析','tmp_ctrl','tmp-ac','','',1,0),(153,145,'终端分析','tmp_ctrl','tmp-ac','','',1,0),(154,145,'使用习惯','tmp_ctrl','tmp-ac','','',1,0),(155,145,'渠道分析','tmp_ctrl','tmp-ac','','',1,0),(156,145,'留存分析','tmp_ctrl','tmp-ac','','',1,0),(157,145,'广告数据','tmp_ctrl','tmp-ac','','',1,0),(158,20,'已删除','examine','delete','','',1,0),(160,0,'数据校对',NULL,NULL,'data_correct','fa-database',1,150),(161,160,'广告数据校对','adDataCorrect','index',NULL,'',1,0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user`
--

LOCK TABLES `admin_user` WRITE;
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` VALUES (1,'mqzhifu','mqzhifu','ccaab4e10f59bb6eb95e197c98bb0be1',NULL,1),(2,'baowu','刘宝武','e10adc3949ba59abbe56e057f20f883e',NULL,1),(3,'xiaolong','小龙','e10adc3949ba59abbe56e057f20f883e',NULL,1),(4,'hui','王晕','e10adc3949ba59abbe56e057f20f883e',NULL,1),(5,'jinhao','杜金昊','e10adc3949ba59abbe56e057f20f883e',NULL,1),(6,'tonghui','苏桐辉','e10adc3949ba59abbe56e057f20f883e',NULL,1),(7,'wenyan','xuwenyan','e10adc3949ba59abbe56e057f20f883e',NULL,1),(8,'zhaolong','赵召龙','e10adc3949ba59abbe56e057f20f883e',NULL,1),(9,'binbin','qiao','e10adc3949ba59abbe56e057f20f883e',NULL,1),(10,'zhaoyongzhe','杜咏哲','e10adc3949ba59abbe56e057f20f883e',NULL,1),(11,'weiming','yuanweiming','e10adc3949ba59abbe56e057f20f883e',NULL,1),(12,'haoliang','杨浩量','6c44e5cd17f0019c64b042e4a745412a',NULL,1),(13,'zhengtian','zhengtian','96e79218965eb72c92a549dd5a330112',NULL,1),(14,'xuren','xuren','e10adc3949ba59abbe56e057f20f883e',NULL,1),(15,'lurena','路人A','96e79218965eb72c92a549dd5a330112',1553502492,2),(16,'pandayuan','潘达源','d087772585bba777c3b28ba2a358c5a4',1553657988,4),(17,'fengliyang','冯黎阳','8659d6b4d6a65acd8ba4d37ca7cd6925',1553658009,4),(18,'liangqian','梁骞','715aa657b68dec4a1db5f3d426fdf6be',1553664117,1),(19,'jiyunwang','纪运旺','f5cdab6d2de8ff5ad6b1454a05bb03bf',1556008594,1),(20,'suixin','隋欣','e10adc3949ba59abbe56e057f20f883e',1556523585,1),(21,'xuwenyan','徐文艳','9a4d42908b81edb632b7d574da51b953',1557713551,1),(22,'123','123','202cb962ac59075b964b07152d234b70',1558087773,1);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'超级管理员','all'),(2,'路人A','1,13,2,16,17,18,19,3,20,6,97,7,14,15'),(3,'测试A','1,13,14,15,3,20,24'),(4,'运营人员','1,13,14,15,2,16,17,18,19,84,20,4,28,8,36,37,9,39,40,80,83,11,59,77,78,79,3,21,22,23'),(5,'superagent','13,14,15,1,20,21,22,23,24,3'),(6,'去问去问','13,14,15,1,16,17,18,19,84,2,25,4,20,21,22,23,158,3,27,28,128,111,103,104,105,102,117,118,116,115,30,31,5,59,60,11,46,47,48,49,50,51,52,53,54,55,56,57,58,10,32,33,97,6,85,87,148,61,62,63,12,34,94,96,7,114,139,37,140,38,142,35,141,36,39,40,83,80,9,106,107,108,146,89,90,91,92,93,95,109,88,65,86,82,81,76,75,74,73,72,71,70,69,68,67,66,113,64,78,79,77');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `task_config` WRITE;
/*!40000 ALTER TABLE `task_config` DISABLE KEYS */;
INSERT INTO `task_config` VALUES (1,'玩游戏2分钟',1000,0,2,2,1,0,0,'玩首页小游戏超多2分钟，领取金币奖励'),(2,'查看我的钱包',100,0,2,1,1,0,0,'进入钱包查看收益'),(3,'首次提现成功',3000,0,2,1,1,0,0,'成功提现1元 立刻奖励800金币'),(4,'关注第一个小伙伴',100,0,2,1,1,0,0,'关注你的第一个小伙伴，一起玩吧'),(5,'首次注册成功',2800,0,2,1,1,0,0,'成功完成注册'),(6,'幸运大抽奖',0,0,1,100,1,0,0,'每日抽奖赚金币'),(7,'看视频，开宝箱',0,0,1,100,1,0,0,'看视频开宝箱赚金币'),(8,'晒晒收入',100,0,1,1,1,0,0,'晒收入得100金币'),(9,'分享给好友，提升收益',100,0,1,1,1,0,0,'每天获取好友金币的5%'),(10,'玩游戏，领金币',0,0,1,0,1,0,0,'玩得越久领的越多'),(11,'游戏达到20分钟',1000,0,1,20,1,0,0,'边玩边赚，时间越久赚得越多'),(12,'金币欢乐送',0,0,1,100,1,0,0,'iPhone XR大奖等你拿'),(13,'开宝箱',0,0,1,100,1,0,0,'4小时一开启，邀友赚更多');
/*!40000 ALTER TABLE `task_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `games_category`
--

LOCK TABLES `games_category` WRITE;
/*!40000 ALTER TABLE `games_category` DISABLE KEYS */;
INSERT INTO `games_category` VALUES (1,'battle','对战',0),(3,'casual','休闲',0),(5,'action','动作类',1),(6,'card_battle','卡牌对战',1),(7,'moba','多人在线战术竞技',1),(8,'role_playing','角色扮演',1),(9,'sports','运动类',1),(10,'strategy','策略',1),(14,'board','竞猜与字谜',3),(15,'simulation','模拟类',3),(16,'card','棋类',3),(18,'puzzle','益智类',3);
/*!40000 ALTER TABLE `games_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `email_rule`
--

LOCK TABLES `email_rule` WRITE;
/*!40000 ALTER TABLE `email_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sms_rule`
--

LOCK TABLES `sms_rule` WRITE;
/*!40000 ALTER TABLE `sms_rule` DISABLE KEYS */;
INSERT INTO `sms_rule` VALUES (1,'登陆','验证码为：#code# 用于登录/注册开心小游戏，5分钟后失效，如非本人操作请忽略',1,10,60,1,294664),(2,'绑定','验证码为：#code# 用于绑定开心小游戏，5分钟后失效， 如非本人操作请忽略',1,10,60,1,302720),(3,'注册','您的验证码为#code#',1,10,60,1,294664),(4,'找回密码','您的验证码为#code#',1,10,60,1,303613),(5,'报警','#errInfo#',2,NULL,NULL,NULL,NULL),(6,'设置密码','验证码为：#code#  用于设置开心小游戏登录密码，5分钟后失效，如非本人操作请忽略',1,10,60,1,302723),(7,'PC端登陆','您的验证码为#code#',1,10,60,1,303614),(8,'实名认证','验证码为：#code# 用于认证开心小游戏，5分钟后失效，如非本人操作请忽略',1,10,60,1,302727);
/*!40000 ALTER TABLE `sms_rule` ENABLE KEYS */;
UNLOCK TABLES;
