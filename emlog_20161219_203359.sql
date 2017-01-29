#version:emlog 6.0.0-Beta
#date:2016-12-19 20:33
#tableprefix:test_
DROP TABLE IF EXISTS test_attachment;
CREATE TABLE `test_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `blogid` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `width` int(10) NOT NULL DEFAULT '0',
  `height` int(10) NOT NULL DEFAULT '0',
  `mimetype` varchar(40) NOT NULL DEFAULT '',
  `thumfor` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `blogid` (`blogid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
INSERT INTO test_options VALUES('13','index_lognum','6');
INSERT INTO test_options VALUES('14','index_comnum','10');
INSERT INTO test_options VALUES('15','index_twnum','10');
INSERT INTO test_options VALUES('16','index_newtwnum','5');
INSERT INTO test_options VALUES('17','index_newlognum','5');
INSERT INTO test_options VALUES('18','index_randlognum','5');
INSERT INTO test_options VALUES('19','index_hotlognum','5');
INSERT INTO test_options VALUES('20','comment_subnum','20');
INSERT INTO test_options VALUES('21','nonce_templet','default');
INSERT INTO test_options VALUES('22','admin_style','default');
INSERT INTO test_options VALUES('23','tpl_sidenum','1');
INSERT INTO test_options VALUES('24','comment_code','y');
INSERT INTO test_options VALUES('25','comment_needchinese','y');
INSERT INTO test_options VALUES('26','comment_interval','60');
INSERT INTO test_options VALUES('27','isgravatar','y');
INSERT INTO test_options VALUES('28','isthumbnail','y');
INSERT INTO test_options VALUES('29','att_maxsize','20480');
INSERT INTO test_options VALUES('30','att_type','rar,zip,gif,jpg,jpeg,png,txt,pdf,docx,doc,xls,xlsx');
INSERT INTO test_options VALUES('31','att_imgmaxw','420');
INSERT INTO test_options VALUES('32','att_imgmaxh','460');
INSERT INTO test_options VALUES('33','comment_paging','y');
INSERT INTO test_options VALUES('34','comment_pnum','10');
INSERT INTO test_options VALUES('35','comment_order','newer');
INSERT INTO test_options VALUES('36','login_code','y');
INSERT INTO test_options VALUES('37','reply_code','n');
INSERT INTO test_options VALUES('38','iscomment','y');
INSERT INTO test_options VALUES('39','ischkcomment','y');
INSERT INTO test_options VALUES('40','ischkreply','n');
INSERT INTO test_options VALUES('41','isurlrewrite','0');
INSERT INTO test_options VALUES('42','isalias','n');
INSERT INTO test_options VALUES('43','isalias_html','n');
INSERT INTO test_options VALUES('44','isexcerpt','y');
INSERT INTO test_options VALUES('45','excerpt_subnum','120');
INSERT INTO test_options VALUES('46','istreply','n');
INSERT INTO test_options VALUES('47','timezone','Asia/Shanghai');
INSERT INTO test_options VALUES('48','active_plugins','a:2:{i:0;s:21:\"html_mp4/html_mp4.php\";i:1;s:29:\"themeseditor/themeseditor.php\";}');
INSERT INTO test_options VALUES('49','widget_title','a:11:{s:7:\"blogger\";s:12:\"个人资料\";s:8:\"calendar\";s:6:\"日历\";s:3:\"tag\";s:6:\"标签\";s:4:\"sort\";s:6:\"分类\";s:7:\"archive\";s:6:\"存档\";s:7:\"newcomm\";s:12:\"最新评论\";s:6:\"newlog\";s:12:\"最新文章\";s:6:\"hotlog\";s:12:\"热门文章\";s:4:\"link\";s:6:\"链接\";s:6:\"search\";s:6:\"搜索\";s:11:\"custom_text\";s:15:\"自定义组件\";}');
INSERT INTO test_options VALUES('50','custom_widget','a:0:{}');
INSERT INTO test_options VALUES('51','widgets1','a:7:{i:0;s:7:\"archive\";i:1;s:4:\"link\";i:2;s:6:\"search\";i:3;s:8:\"calendar\";i:4;s:3:\"tag\";i:5;s:6:\"newlog\";i:6;s:6:\"hotlog\";}');
INSERT INTO test_options VALUES('52','widgets2','');
INSERT INTO test_options VALUES('53','widgets3','');
INSERT INTO test_options VALUES('54','widgets4','');
INSERT INTO test_options VALUES('55','detect_url','n');

DROP TABLE IF EXISTS test_navi;
CREATE TABLE `test_navi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naviname` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(75) NOT NULL DEFAULT '',
  `newtab` enum('n','y') NOT NULL DEFAULT 'n',
  `hide` enum('n','y') NOT NULL DEFAULT 'n',
  `taxis` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `isdefault` enum('n','y') NOT NULL DEFAULT 'n',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO test_navi VALUES('1','首页','','n','n','1','0','y','1','0');
INSERT INTO test_navi VALUES('3','登录','admin','n','n','11','0','y','3','0');
INSERT INTO test_navi VALUES('4','计重','','n','n','2','0','n','4','1');
INSERT INTO test_navi VALUES('5','工作站','','n','n','6','0','n','4','6');
INSERT INTO test_navi VALUES('6','监控','','n','n','3','0','n','4','7');
INSERT INTO test_navi VALUES('7','栏杆机','','n','n','7','0','n','4','8');
INSERT INTO test_navi VALUES('8','软件','','n','n','4','0','n','4','12');
INSERT INTO test_navi VALUES('9','服务器','','n','n','8','0','n','4','13');
INSERT INTO test_navi VALUES('10','通信','','n','n','5','0','n','4','14');
INSERT INTO test_navi VALUES('11','其他','','n','n','10','0','n','4','15');
INSERT INTO test_navi VALUES('12','数据库','','n','n','9','0','n','4','22');
INSERT INTO test_navi VALUES('16','信息板','','n','n','6','0','n','4','28');

DROP TABLE IF EXISTS test_sort;
CREATE TABLE `test_sort` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sortname` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`)
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(60) NOT NULL DEFAULT '',
  `gid` text NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tagname` (`tagname`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

INSERT INTO test_tag VALUES('1','网线','1,8');
INSERT INTO test_tag VALUES('2','网线制作','1');
INSERT INTO test_tag VALUES('3','网线做法','1');
INSERT INTO test_tag VALUES('4','马格','3');
INSERT INTO test_tag VALUES('5','马格栏杆机设置','3');
INSERT INTO test_tag VALUES('6','server raid1','4');
INSERT INTO test_tag VALUES('13','GPT与UEFI','11');
INSERT INTO test_tag VALUES('14','坏道检测MHDD','12');
INSERT INTO test_tag VALUES('15','sql密码清除','13');
INSERT INTO test_tag VALUES('16','Dell PowerEdge SC1420','14');
INSERT INTO test_tag VALUES('17','Adaptec 39320 RAID','15');
INSERT INTO test_tag VALUES('18','网络不通','8');
INSERT INTO test_tag VALUES('19','网线距离太远','8');
INSERT INTO test_tag VALUES('20','安装多串口卡 win7添加新硬件','16');
INSERT INTO test_tag VALUES('21','U创Q100高速栏杆机','17');
INSERT INTO test_tag VALUES('22','测试网络通断','18');
INSERT INTO test_tag VALUES('23','麦克风','');
INSERT INTO test_tag VALUES('24','麦克风杂音大','19');
INSERT INTO test_tag VALUES('25','分页emlog6','22');
INSERT INTO test_tag VALUES('26','windows','');
INSERT INTO test_tag VALUES('27','windows7 8 10设置共享','23');
INSERT INTO test_tag VALUES('28','putty简单颜色搭配','24');
INSERT INTO test_tag VALUES('29','MHDD的简单用法','25');
INSERT INTO test_tag VALUES('30','bios','26');
INSERT INTO test_tag VALUES('31','bios引导快捷键','27');
INSERT INTO test_tag VALUES('32','线圈','');
INSERT INTO test_tag VALUES('33','线圈制作规格','29');
INSERT INTO test_tag VALUES('34','mssql','');
INSERT INTO test_tag VALUES('35','mssql语句大全','30');
INSERT INTO test_tag VALUES('36','2003下软RAID手册','31');
INSERT INTO test_tag VALUES('37','RAID术语大全','32');
INSERT INTO test_tag VALUES('38','万集计重工作原理','33');
INSERT INTO test_tag VALUES('39','万集计重使用操作手册','34');
INSERT INTO test_tag VALUES('40','万集计重常见故障','35');
INSERT INTO test_tag VALUES('41','马格栏杆机模块操作','36');
INSERT INTO test_tag VALUES('42','悬臂式情报板说明书','37');
INSERT INTO test_tag VALUES('43','门架式情报板说明书','38');
INSERT INTO test_tag VALUES('44','费额显示器说明书','39');
INSERT INTO test_tag VALUES('45','新马格栏杆机说明书','42');
INSERT INTO test_tag VALUES('46','配置欧曼特监控','45');
INSERT INTO test_tag VALUES('47','静寂之声-音乐欣赏','46');
INSERT INTO test_tag VALUES('48','服务器U盘做系统IBM','47');
INSERT INTO test_tag VALUES('49','tar命令','48');
INSERT INTO test_tag VALUES('50','sql默认数据库','49');
INSERT INTO test_tag VALUES('51','正则表达式','50');
INSERT INTO test_tag VALUES('52','MegaRAID 配置指导','51');
INSERT INTO test_tag VALUES('53','powershell安装模块提示错误','53');
INSERT INTO test_tag VALUES('54','phpmyadmin安全配置','55');

DROP TABLE IF EXISTS test_user;
CREATE TABLE `test_user` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `nickname` varchar(20) NOT NULL DEFAULT '',
  `role` varchar(60) NOT NULL DEFAULT '',
  `ischeck` enum('n','y') NOT NULL DEFAULT 'n',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
