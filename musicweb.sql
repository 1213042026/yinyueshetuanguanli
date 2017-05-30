/*
Navicat MySQL Data Transfer

Source Server         : localmysal
Source Server Version : 50148
Source Host           : localhost:3306
Source Database       : musicweb

Target Server Type    : MYSQL
Target Server Version : 50148
File Encoding         : 65001

Date: 2017-05-27 17:41:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_applyinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_applyinfo`;
CREATE TABLE `t_applyinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_stuid` varchar(200) DEFAULT NULL,
  `t_stuname` varchar(200) DEFAULT NULL,
  `t_status` varchar(200) DEFAULT NULL,
  `t_stunum` varchar(200) DEFAULT NULL,
  `t_college` varchar(200) DEFAULT NULL,
  `t_classinfo` varchar(200) DEFAULT NULL,
  `t_dormitory` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_remark` longtext,
  `t_zy` longtext,
  `t_qf` longtext,
  `t_sex` longtext,
  `t_jg` longtext,
  `t_file` longtext,
  `t_name` longtext,
  `t_bumen` longtext,
  `t_bmdate` longtext,
  `t_isgood` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_applyinfo
-- ----------------------------
INSERT INTO `t_applyinfo` VALUES ('2', '333', '333', '审核通过', '12312', '计算机学院', '12', '608', '2017-04-17', 'testing', '', '软件工程', '1', '男', '上海', '170417014225982.JPG', '李思', '办公室', null,'Y');
INSERT INTO `t_applyinfo` VALUES ('15', 'qqq123', '阿迪王', '提交申请', '43534', '人文学院', '01', '3号楼111', '2017-05-31', '打我', '打我', '软件工程', '1', '女', '北京', '1705251847125119.jpg', '测方式', '外联部', null, 'N');

-- ----------------------------
-- Table structure for `t_baoming`
-- ----------------------------
DROP TABLE IF EXISTS `t_baoming`;
CREATE TABLE `t_baoming` (
  `t_userId` varchar(222) DEFAULT NULL,
  `t_huoDongId` varchar(222) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_baoming
-- ----------------------------
INSERT INTO `t_baoming` VALUES ('333', '5', '3');

-- ----------------------------
-- Table structure for `t_bumen`
-- ----------------------------
DROP TABLE IF EXISTS `t_bumen`;
CREATE TABLE `t_bumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(200) DEFAULT NULL,
  `t_remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_bumen
-- ----------------------------
INSERT INTO `t_bumen` VALUES ('1', '办公室', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。</p>');
INSERT INTO `t_bumen` VALUES ('2', '宣传部', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。</p>');
INSERT INTO `t_bumen` VALUES ('3', '外联部', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">&nbsp; &nbsp; &nbsp; &nbsp; 个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。</span></p>');
INSERT INTO `t_bumen` VALUES ('4', '实践部', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">&nbsp; &nbsp; &nbsp; &nbsp; 个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。</span></p>');
INSERT INTO `t_bumen` VALUES ('5', '咨询部', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">&nbsp; &nbsp; &nbsp; &nbsp; 个人原创音乐网站用于展示本人及身边音乐大学及编曲爱好朋友们的原创作品及商业作品。目前网站成立3年，不断有新的小伙伴前来合作原创音乐作品。同时提供网络各种免费教学资料帮助对音乐制作感兴趣的小伙伴们成就梦想。希望在新的一年里共同进步，创造出更多受众的原创音乐。迷音Los音乐团队，成立于2013年6月29日，由妤诺发起并联合多个艺术院校毕业生创建的的网络音乐团队。风格多样化，汇集了全国各地的音乐爱好者，并不断有喜爱原创音乐的朋友加入，力求打造一个深受大家喜爱的原创音乐团队。</span></p>');

-- ----------------------------
-- Table structure for `t_collectmusic`
-- ----------------------------
DROP TABLE IF EXISTS `t_collectmusic`;
CREATE TABLE `t_collectmusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_stuid` varchar(200) DEFAULT NULL,
  `t_stuname` varchar(200) DEFAULT NULL,
  `t_musicid` varchar(200) DEFAULT NULL,
  `t_types` varchar(200) DEFAULT NULL,
  `t_musicname` varchar(200) DEFAULT NULL,
  `t_file` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_collectmusic
-- ----------------------------
INSERT INTO `t_collectmusic` VALUES ('2', '----', '----', '1', '翻唱', '大海', '1704162301559750.mp3', '给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情');
INSERT INTO `t_collectmusic` VALUES ('3', '----', '----', '1', '翻唱', '大海', '1704162301559750.mp3', '给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情');
INSERT INTO `t_collectmusic` VALUES ('4', '333', '333', '1', '翻唱', '大海', '1704162301559750.mp3', '给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情');
INSERT INTO `t_collectmusic` VALUES ('5', '333', '333', '3', '翻唱', '12', '1705122319008802.mp3', '12');
INSERT INTO `t_collectmusic` VALUES ('6', '111', '111', '5', '翻唱', '夜的第七章', '1705141611229849.mp3', '打字机继续推向接近事实的那下一行\r\n石楠烟斗的雾\r\n飘向枯萎的树\r\n沉默的对我哭诉\r\n贝克街旁的圆形广场\r\n盔甲骑士臂上\r\n鸢尾花的徽章 微亮\r\n无人马车声响\r\n深夜的拜访\r\n邪恶在维多利亚的月光下血色的开场\r\n消失的手枪\r\n焦黑的手杖\r\n融化的蜡像\r\n谁不在场\r\n珠宝箱上符号的假象\r\n矛盾通往他堆砌的死巷\r\n证据被完美的埋葬\r\n那嘲弄苏格兰警场的嘴角上场\r\n如果邪恶 是华丽残酷的乐章\r\n（那么正义 是深沉无奈的惆怅）\r\n它的终场 我会亲手写上\r\n（那我就点亮 在灰烬中的微光）\r\n晨曦的光 风干最后一行忧伤\r\n（那么夜雨 会洗净黑暗的高墙）\r\n黑色的墨 染上安详\r\n（散场灯关上 红色的布幕下降）\r\n事实只能穿向\r\n没有脚印的土壤\r\n突兀的细微花香\r\n刻意显眼的服装\r\n每个人为不同的理由戴着面具说谎\r\n动机也只有一种名字那叫做欲望\r\nfafadefadefafa\r\ndedefafadefafa\r\n越过人性的沼泽\r\n谁真的可以不被弄脏\r\n我们可以遗忘原谅\r\n但必须要知道真相\r\n被移动过的铁床\r\n那最后一块图终于拼上\r\n我听见脚步声 预料的软皮鞋跟\r\n他推开门 晚风晃了煤油灯一阵\r\n打字机停在凶手的名称我转身\r\n西敏寺的夜空开始沸腾\r\n在胸口绽放艳丽的死亡\r\n我品尝这最后一口甜美的真相\r\n微笑回想正义只是安静的伸张\r\n提琴在泰晤士\r\n如果邪恶 是华丽残酷的乐章\r\n（我听见脚步声 预料的软皮鞋跟）\r\n（他推开门晚风晃了煤油灯一阵）\r\n它的终场 我会亲手写上\r\n（打字机停在凶手的名称我转身）\r\n（西敏寺的夜空开始沸腾）\r\n黑色的墨 染上安详\r\n如果邪恶 是华丽残酷的乐章\r\n那它的终场 我会亲手写上\r\n晨夕的光 风干最后一行忧伤\r\n黑色的墨 染上安详');
INSERT INTO `t_collectmusic` VALUES ('7', '111', '111', '6', '翻唱', '夜的第七章', '170514161305549.mp3', '打字机继续推向接近事实的那下一行\r\n石楠烟斗的雾\r\n飘向枯萎的树\r\n沉默的对我哭诉\r\n贝克街旁的圆形广场\r\n盔甲骑士臂上\r\n鸢尾花的徽章 微亮\r\n无人马车声响\r\n深夜的拜访\r\n邪恶在维多利亚的月光下血色的开场\r\n消失的手枪\r\n焦黑的手杖\r\n融化的蜡像\r\n谁不在场\r\n珠宝箱上符号的假象\r\n矛盾通往他堆砌的死巷\r\n证据被完美的埋葬\r\n那嘲弄苏格兰警场的嘴角上场\r\n如果邪恶 是华丽残酷的乐章\r\n（那么正义 是深沉无奈的惆怅）\r\n它的终场 我会亲手写上\r\n（那我就点亮 在灰烬中的微光）\r\n晨曦的光 风干最后一行忧伤\r\n（那么夜雨 会洗净黑暗的高墙）\r\n黑色的墨 染上安详\r\n（散场灯关上 红色的布幕下降）\r\n事实只能穿向\r\n没有脚印的土壤\r\n突兀的细微花香\r\n刻意显眼的服装\r\n每个人为不同的理由戴着面具说谎\r\n动机也只有一种名字那叫做欲望\r\nfafadefadefafa\r\ndedefafadefafa\r\n越过人性的沼泽\r\n谁真的可以不被弄脏\r\n我们可以遗忘原谅\r\n但必须要知道真相\r\n被移动过的铁床\r\n那最后一块图终于拼上\r\n我听见脚步声 预料的软皮鞋跟\r\n他推开门 晚风晃了煤油灯一阵\r\n打字机停在凶手的名称我转身\r\n西敏寺的夜空开始沸腾\r\n在胸口绽放艳丽的死亡\r\n我品尝这最后一口甜美的真相\r\n微笑回想正义只是安静的伸张\r\n提琴在泰晤士\r\n如果邪恶 是华丽残酷的乐章\r\n（我听见脚步声 预料的软皮鞋跟）\r\n（他推开门晚风晃了煤油灯一阵）\r\n它的终场 我会亲手写上\r\n（打字机停在凶手的名称我转身）\r\n（西敏寺的夜空开始沸腾）\r\n黑色的墨 染上安详\r\n如果邪恶 是华丽残酷的乐章\r\n那它的终场 我会亲手写上\r\n晨夕的光 风干最后一行忧伤\r\n黑色的墨 染上安详');
INSERT INTO `t_collectmusic` VALUES ('8', '111', '111', '8', '原创', '12', '1705242013525557.mp3', '32');
INSERT INTO `t_collectmusic` VALUES ('9', '111', '111', '1', '翻唱', '大海', '1704162301559750.mp3', '给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情');

-- ----------------------------
-- Table structure for `t_huodong`
-- ----------------------------
DROP TABLE IF EXISTS `t_huodong`;
CREATE TABLE `t_huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_datetime` varchar(222) DEFAULT NULL,
  `t_num` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_huodong
-- ----------------------------
INSERT INTO `t_huodong` VALUES ('1', '乐师招聘', '<p>&nbsp;<span style=\"color: rgb(104, 104, 104); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 16px; line-height: 28.8px;\">考核Q群：</span><span style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 16px; line-height: 28.8px; color: rgb(255, 0, 0);\"><font size=\"3\" style=\"box-sizing: border-box;\"><b style=\"box-sizing: border-box;\">303670790</b></font></span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">乐团部门划分：</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">1、</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">宣传：宣传</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、传播</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">2、曲部：作曲、谱曲、编曲、乐器伴奏、作曲软件</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">3、歌部：演唱</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、录音</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">4、美工：美工、宣传</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">5、后期：音乐后期制作</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"color: rgb(104, 104, 104); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 16px; line-height: 28.8px;\">6</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">词部：填词、作词</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、文案</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"color: rgb(104, 104, 104); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 16px; line-height: 28.8px;\">7</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、策划：策划</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、编剧<br style=\"box-sizing: border-box;\" />\r\n8</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、声部：配音</span><span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">、声优</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<br style=\"box-sizing: border-box; color: rgb(104, 104, 104); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 16px; line-height: 28.8px;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">考核要求：</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">1、主唱：流行或古风歌曲为主，音准、气息平稳、咬字清晰、对气息把握度强、环境适应度好、无喷麦现象、较好音律节奏把握，具备录歌用的电容麦克风和外置声卡。</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">2、词作：词格准确，押韵，意境好，有新意，词句不堆砌（严禁抄袭）、符合乐曲意境</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">3、曲作：古风为主，节奏准确、音准、作曲编曲有新意有自己的想法和风格，掌握CUBASE ，FL 或其他编曲软件。</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">4、策划：可以设计乐团活动策划书、要求新颖创新、有策划音乐剧的能力（负责乐团策划活动、并联系相关活动所需人员）</span><br style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(17, 17, 17); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 21px; white-space: pre-wrap;\">5、宣传：在线时间长、在各大贴吧论坛活跃者，将团队作品分享QQ空间和微博，人脉cc。<br style=\"box-sizing: border-box;\" />\r\n</span></p>', null, 'admin', '2017-04-17 00:00:00', '30', '2017-05-17');
INSERT INTO `t_huodong` VALUES ('3', '测试', '<p>&nbsp;12343</p>', 'ggg', 'ggg', '2017-05-15 15:21:29', '30', '2017-05-17');
INSERT INTO `t_huodong` VALUES ('4', '12', '<p>&nbsp;12</p>', 'ggg', 'ggg', '2017-05-15 15:24:07', '30', '2017-05-17');
INSERT INTO `t_huodong` VALUES ('5', '菜单', '<p>&nbsp;菜单</p>', 'ggg', 'ggg', '2017-05-15 15:29:27', '30', '2017-05-17');
INSERT INTO `t_huodong` VALUES ('8', '咋额', '<p>&nbsp;无法擦</p>', 'ggg', 'ggg', '2017-05-26 16:30:27', '20', '2017-06-17');
INSERT INTO `t_huodong` VALUES ('9', '飞洒', '<p>&nbsp;打我</p>', 'ggg', 'ggg', '2017-05-26 17:43:27', '10', '2017-05-17');

-- ----------------------------
-- Table structure for `t_liuyanban`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyanban`;
CREATE TABLE `t_liuyanban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_lianxiren` varchar(200) DEFAULT NULL,
  `t_lianxidianhua` varchar(200) DEFAULT NULL,
  `t_email` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_date` varchar(200) DEFAULT NULL,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_status` varchar(200) DEFAULT NULL,
  `t_remark` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_liuyanban
-- ----------------------------
INSERT INTO `t_liuyanban` VALUES ('1', '国内外房产销售为主干，专业化投资为主要项目', '张华', '1321321', '519646017@qq.com', '<p>&nbsp;<span style=\"color: rgb(43, 43, 43); font-family: arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(248, 248, 248);\">这就是为什么我努力做最紧凑,引人入胜,容易跟随Udemy钢琴和音乐理论课程。逻辑结构化的讲座,和努力制定清楚的概念。通过这门课的结束你会明白的适当的钢琴技巧，白色和黑色的钢琴键盘，音乐的元素(音符、间隔、和弦、音阶)，主要的和次要的键位，有节奏的细分，如何阅读乐谱(音符页面)。</span></p>', '2017-04-16', '111', '111', '已回复', '<p>啊啊啊</p>');
INSERT INTO `t_liuyanban` VALUES ('2', '投融界专访', 'aaa', '1321321', '519646017@qq.com', '<p>&nbsp;test tttttttttttttttttttttttttt</p>', '2017-04-17', '333', '333', '未回复', null);
INSERT INTO `t_liuyanban` VALUES ('3', '1', '1', '1', '1', '<p>&nbsp;1</p>', '2017-05-31', 'test(社员)', 'test(社员)', '未回复', null);
INSERT INTO `t_liuyanban` VALUES ('4', '2', '2', '2', '2', '', '2017-05-31', '游客', '游客', '未回复', null);
INSERT INTO `t_liuyanban` VALUES ('5', '12', '12', '12345678901', '11@1111.1', '', '2017-05-31', '游客', '游客', '未回复', null);
INSERT INTO `t_liuyanban` VALUES ('6', '测试', '李四', '12345678901', '1019894100@qq.com', '<p>&nbsp;123</p>', null, '游客', '游客', '未回复', null);
INSERT INTO `t_liuyanban` VALUES ('7', '册', '才', '12111111111', '1019894100@qq.com', '<p>&nbsp;1</p>', null, 'test(社员)', 'test(社员)', '未回复', null);

-- ----------------------------
-- Table structure for `t_message`
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_datetime` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('1', '1', '啊啊啊', 'otheruser', 'otheruser', '2017-04-17 01:46:06');
INSERT INTO `t_message` VALUES ('2', '1', '11', 'otheruser', 'otheruser', '2017-05-11 22:58:44');
INSERT INTO `t_message` VALUES ('3', '1', '111', 'otheruser', 'otheruser', '2017-05-11 22:58:47');
INSERT INTO `t_message` VALUES ('4', '1', '111', 'otheruser', 'otheruser', '2017-05-11 22:58:49');
INSERT INTO `t_message` VALUES ('5', '1', '11', 'otheruser', 'otheruser', '2017-05-11 23:00:10');
INSERT INTO `t_message` VALUES ('6', '1', '11', '111', '111', '2017-05-11 23:20:57');
INSERT INTO `t_message` VALUES ('7', '1', '12', 'ggg', 'ggg', '2017-05-12 23:21:28');
INSERT INTO `t_message` VALUES ('8', '1', '12', 'ggg', 'ggg', '2017-05-12 23:21:32');
INSERT INTO `t_message` VALUES ('9', '1', '12', 'otheruser', 'otheruser', '2017-05-12 23:21:44');
INSERT INTO `t_message` VALUES ('10', '1', '', 'otheruser', 'otheruser', '2017-05-13 23:10:07');
INSERT INTO `t_message` VALUES ('11', '1', '', 'otheruser', 'otheruser', '2017-05-13 23:10:09');
INSERT INTO `t_message` VALUES ('12', '1', '', 'otheruser', 'otheruser', '2017-05-13 23:21:25');
INSERT INTO `t_message` VALUES ('13', '1', '', 'otheruser', 'otheruser', '2017-05-14 12:35:56');
INSERT INTO `t_message` VALUES ('14', '1', '', 'otheruser', 'otheruser', '2017-05-14 12:55:32');
INSERT INTO `t_message` VALUES ('15', '1', '1', 'otheruser', 'otheruser', '2017-05-14 13:21:26');
INSERT INTO `t_message` VALUES ('16', '3', '<p>&nbsp;1222</p>', '333', 'test(社员)', '2017-05-14 14:23:16');
INSERT INTO `t_message` VALUES ('17', '3', '<p>&nbsp;212</p>', '333', 'test(社员)(社员)', '2017-05-14 14:30:27');
INSERT INTO `t_message` VALUES ('18', '4', '<p>&nbsp;123</p>', '333', 'test(社员)', '2017-05-14 14:46:02');
INSERT INTO `t_message` VALUES ('19', '5', '<p>&nbsp;qw</p>', '111', 'jane(社员)', '2017-05-24 20:16:10');
INSERT INTO `t_message` VALUES ('20', '7', '<p>&nbsp;qw</p>', '111', 'jane(社员)', '2017-05-24 20:16:36');
INSERT INTO `t_message` VALUES ('21', '8', '<p>&nbsp;23&nbsp;</p>', '111', 'jane(社员)', '2017-05-26 19:49:46');
INSERT INTO `t_message` VALUES ('22', '8', '<p>&nbsp;阿瓦达</p>', '111', 'jane(社员)', '2017-05-26 19:54:20');
INSERT INTO `t_message` VALUES ('23', '4', '<p>&nbsp;sad&nbsp;</p>', '111', 'jane(社员)', '2017-05-26 20:26:36');

-- ----------------------------
-- Table structure for `t_musicinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_musicinfo`;
CREATE TABLE `t_musicinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_types` varchar(200) DEFAULT NULL,
  `t_musicname` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_file` varchar(200) DEFAULT NULL,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_renqi` varchar(200) DEFAULT NULL,
  `t_tuijian` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  `t_shenhe` varchar(200) DEFAULT NULL,
  `t_remark` longtext,
  `t_zuociz` longtext,
  `t_bqz` longtext,
  `t_ycz` longtext,
  `t_yuanchang` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_musicinfo
-- ----------------------------
INSERT INTO `t_musicinfo` VALUES ('1', '翻唱', '大海', '给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情\r\n给你一张过去的CD，听听那时我们的爱情', '1704162301559750.mp3', '333', 'test(社员)', '8', '否', '2017-04-16', '通过', 'testing', null, null, null, null);
INSERT INTO `t_musicinfo` VALUES ('5', '翻唱', '夜的第七章', '打字机继续推向接近事实的那下一行\r\n石楠烟斗的雾\r\n飘向枯萎的树\r\n沉默的对我哭诉\r\n贝克街旁的圆形广场\r\n盔甲骑士臂上\r\n鸢尾花的徽章 微亮\r\n无人马车声响\r\n深夜的拜访\r\n邪恶在维多利亚的月光下血色的开场\r\n消失的手枪\r\n焦黑的手杖\r\n融化的蜡像\r\n谁不在场\r\n珠宝箱上符号的假象\r\n矛盾通往他堆砌的死巷\r\n证据被完美的埋葬\r\n那嘲弄苏格兰警场的嘴角上场\r\n如果邪恶 是华丽残酷的乐章\r\n（那么正义 是深沉无奈的惆怅）\r\n它的终场 我会亲手写上\r\n（那我就点亮 在灰烬中的微光）\r\n晨曦的光 风干最后一行忧伤\r\n（那么夜雨 会洗净黑暗的高墙）\r\n黑色的墨 染上安详\r\n（散场灯关上 红色的布幕下降）\r\n事实只能穿向\r\n没有脚印的土壤\r\n突兀的细微花香\r\n刻意显眼的服装\r\n每个人为不同的理由戴着面具说谎\r\n动机也只有一种名字那叫做欲望\r\nfafadefadefafa\r\ndedefafadefafa\r\n越过人性的沼泽\r\n谁真的可以不被弄脏\r\n我们可以遗忘原谅\r\n但必须要知道真相\r\n被移动过的铁床\r\n那最后一块图终于拼上\r\n我听见脚步声 预料的软皮鞋跟\r\n他推开门 晚风晃了煤油灯一阵\r\n打字机停在凶手的名称我转身\r\n西敏寺的夜空开始沸腾\r\n在胸口绽放艳丽的死亡\r\n我品尝这最后一口甜美的真相\r\n微笑回想正义只是安静的伸张\r\n提琴在泰晤士\r\n如果邪恶 是华丽残酷的乐章\r\n（我听见脚步声 预料的软皮鞋跟）\r\n（他推开门晚风晃了煤油灯一阵）\r\n它的终场 我会亲手写上\r\n（打字机停在凶手的名称我转身）\r\n（西敏寺的夜空开始沸腾）\r\n黑色的墨 染上安详\r\n如果邪恶 是华丽残酷的乐章\r\n那它的终场 我会亲手写上\r\n晨夕的光 风干最后一行忧伤\r\n黑色的墨 染上安详', '1705141611229849.mp3', '333', 'test(社员)', '2', '否', '2017-05-31', '提交', null, '方文山', '周杰伦', '周杰伦', '周杰伦');
INSERT INTO `t_musicinfo` VALUES ('6', '翻唱', '夜的第七章', '打字机继续推向接近事实的那下一行\r\n石楠烟斗的雾\r\n飘向枯萎的树\r\n沉默的对我哭诉\r\n贝克街旁的圆形广场\r\n盔甲骑士臂上\r\n鸢尾花的徽章 微亮\r\n无人马车声响\r\n深夜的拜访\r\n邪恶在维多利亚的月光下血色的开场\r\n消失的手枪\r\n焦黑的手杖\r\n融化的蜡像\r\n谁不在场\r\n珠宝箱上符号的假象\r\n矛盾通往他堆砌的死巷\r\n证据被完美的埋葬\r\n那嘲弄苏格兰警场的嘴角上场\r\n如果邪恶 是华丽残酷的乐章\r\n（那么正义 是深沉无奈的惆怅）\r\n它的终场 我会亲手写上\r\n（那我就点亮 在灰烬中的微光）\r\n晨曦的光 风干最后一行忧伤\r\n（那么夜雨 会洗净黑暗的高墙）\r\n黑色的墨 染上安详\r\n（散场灯关上 红色的布幕下降）\r\n事实只能穿向\r\n没有脚印的土壤\r\n突兀的细微花香\r\n刻意显眼的服装\r\n每个人为不同的理由戴着面具说谎\r\n动机也只有一种名字那叫做欲望\r\nfafadefadefafa\r\ndedefafadefafa\r\n越过人性的沼泽\r\n谁真的可以不被弄脏\r\n我们可以遗忘原谅\r\n但必须要知道真相\r\n被移动过的铁床\r\n那最后一块图终于拼上\r\n我听见脚步声 预料的软皮鞋跟\r\n他推开门 晚风晃了煤油灯一阵\r\n打字机停在凶手的名称我转身\r\n西敏寺的夜空开始沸腾\r\n在胸口绽放艳丽的死亡\r\n我品尝这最后一口甜美的真相\r\n微笑回想正义只是安静的伸张\r\n提琴在泰晤士\r\n如果邪恶 是华丽残酷的乐章\r\n（我听见脚步声 预料的软皮鞋跟）\r\n（他推开门晚风晃了煤油灯一阵）\r\n它的终场 我会亲手写上\r\n（打字机停在凶手的名称我转身）\r\n（西敏寺的夜空开始沸腾）\r\n黑色的墨 染上安详\r\n如果邪恶 是华丽残酷的乐章\r\n那它的终场 我会亲手写上\r\n晨夕的光 风干最后一行忧伤\r\n黑色的墨 染上安详', '170514161305549.mp3', '333', 'test(社员)', '1', '否', '2017-05-31', '通过', null, '方文山', '周杰伦', '周杰伦', '周杰伦');
INSERT INTO `t_musicinfo` VALUES ('7', '原创', '234', '234', '1705232320089580.mp3', '111', 'jane(社员)', '0', '否', '17-05-23 23:20:08', '通过', null, '324', '234', '324', '324');
INSERT INTO `t_musicinfo` VALUES ('8', '原创', '12', '32', '1705242013525557.mp3', '111', 'jane(社员)', '1', '否', '17-05-24 20:13:52', '通过', null, '32', '12', '12', '1232');
INSERT INTO `t_musicinfo` VALUES ('9', '原创', '味儿', '方式', '1705251851506293.mp3', 'qqq123', '阿迪王', '0', '否', '17-05-25 18:51:50', '提交', null, '二', '二五任务', '算法', '算法');
INSERT INTO `t_musicinfo` VALUES ('10', '原创', '你好', '王企鹅发达', '170525193315591.mp3', 'qqq123', '阿迪王', '0', '否', '17-05-25 19:33:15', '提交', null, '周杰伦', '234', 'jame', 'jame');
INSERT INTO `t_musicinfo` VALUES ('11', '翻唱', '的方式', '阿斯顿', '1705271440498938.mp3', '111', 'jane(社员)', '0', '否', '17-05-27 14:40:49', '提交', null, '撒旦', '山大啊', '阿斯顿', '洒出');
INSERT INTO `t_musicinfo` VALUES ('13', '翻唱', '我问问', '二', '1705271641387444.mp3', '111', 'jane(社员)', '0', '否', '2017-05-27 16:41:38', '通过', null, '4234', '3423', '324 ', '234');
INSERT INTO `t_musicinfo` VALUES ('14', '翻唱', 'qq群qq群', '34', '1705271643201057.mp3', '111', 'jane(社员)', '0', '否', '2017-05-27 16:43:20', '通过', null, '123', '324', '324', '4234');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_datetime` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '8Dio Blendstrument Motion Textures KONTAKT', '<p>&nbsp;<span style=\"font-size: 14px; color: rgb(105, 105, 105); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; line-height: 28px;\">Blendstrument Motion</span><span style=\"font-size: 14px; color: rgb(105, 105, 105); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; box-sizing: border-box; line-height: 24px;\">&nbsp;Textures&nbsp;</span><span style=\"font-size: 14px; color: rgb(105, 105, 105); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; line-height: 28px;\">版是围绕一个先进的PULSE架构创建的，允许仪器在不同样本之间的PULSE与DAW主机速度同步。此外，它还包含300多个手工制作的音质卷积，可以对Blendstrument产生纹理延迟。 Blendstrument也配有一个完整的REVERSED补丁，它给Blendstrument提供了向后的感觉。我们还添加了我们最新的混沌FX 3.3和全新的Panorama架构，可以对每个采样层进行单独的调谐和平移。</span></p>\r\n<div style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\">&nbsp;</div>\r\n<div style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\"><span style=\"box-sizing: border-box; color: rgb(105, 105, 105);\"><span style=\"box-sizing: border-box; font-size: 14px;\">Blendstrument包含由Mario Bajardi教授创建的超过21GB的内容（压缩到7.5GB），通过使用非常复杂的链接设置，包括完整的KYMA系统和实时绘制波形的能力。 Blendstrument就像一个永恒的巧克力盒子。你永远不知道你会得到什么但是，我们承诺，你创造的只有你和你的创造。我们打算提供这个工具，所以你可以创造一些完全独特的东西。</span></span><br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\n<strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; color: rgb(255, 0, 0);\"><span style=\"box-sizing: border-box; font-size: 14px;\"><span style=\"box-sizing: border-box; font-size: 26px;\">原文</span></span></span></strong></div>\r\n<p style=\"box-sizing: border-box; margin-bottom: 16px; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\"><span style=\"box-sizing: border-box; color: rgb(105, 105, 105);\"><span style=\"box-sizing: border-box; font-size: 14px;\"><span style=\"box-sizing: border-box; line-height: 24px;\">Blendstrument Motion Textures was created by Academy Award, TEC and G.A.N.G Award Winning Composer, Troels Folmann and one of the world&rsquo;s leading experimental music designers. The Blendstrument is a deep creative environment that gives you the ability to create an entire new instrument with a single click of a button. The Blendstrument has an infinite amount of combinations and can never produce the same instrument twice. It can generate anything from the most beautiful angelic ambiences to pulsing filmic motion textures, anything from dark and disturbing textures to the most extraordinary EDM drums.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 16px; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\"><span style=\"box-sizing: border-box; color: rgb(105, 105, 105);\"><span style=\"box-sizing: border-box; font-size: 14px;\">The Blendstrument Motion Texture Edition was created around an advance PULSE architecture that allows the instrument to PULSE between different samples in sync with your DAW Host-Tempo. In addition it contains over 300 hand-crafted Textural Convolutions that creates a textural delay to the Blendstrument. The Blendstrument also comes with a full REVERSED patch, which gives that backwards feel to the Blendstrument. We also added our newest Chaos FX 3.3 and a brand new Panorama architecture that allows individual tuning and panning of each sample layer.</span></span></p>', null, null, '2017-04-16 00:00:00');
INSERT INTO `t_news` VALUES ('3', 'Udemy The Complete Piano and Music Theory Beginners Course', '<p>&nbsp;<span style=\"font-size: 13.3333px;\">&nbsp;</span><span style=\"color: rgb(43, 43, 43); font-family: arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(248, 248, 248);\">新的音乐吗?有一些&ldquo;音乐理论漏洞&rdquo;你需要填吗?总是想弹钢琴,但不知道从哪里开始?如果这些都是真的,就是把这门课!我想要你快速学习钢琴和音乐理论。</span></p>\r\n<p class=\"tgt\" style=\"box-sizing: border-box; margin: 0px 0px 0.4em; padding: 0px; border: 0px; font-size: 14px; line-height: 21px; color: rgb(43, 43, 43); font-family: arial, sans-serif; background-color: rgb(248, 248, 248);\"><br style=\"box-sizing: border-box;\" />\r\n这就是为什么我努力做最紧凑,引人入胜,容易跟随Udemy钢琴和音乐理论课程。逻辑结构化的讲座,和努力制定清楚的概念。通过这门课的结束你会明白的适当的钢琴技巧，白色和黑色的钢琴键盘，音乐的元素(音符、间隔、和弦、音阶)，主要的和次要的键位，有节奏的细分，如何阅读乐谱(音符页面)。<br style=\"box-sizing: border-box;\" />\r\n&nbsp;</p>\r\n<p class=\"tgt\" style=\"box-sizing: border-box; margin: 0px 0px 0.4em; padding: 0px; border: 0px; font-size: 14px; line-height: 21px; color: rgb(43, 43, 43); font-family: arial, sans-serif; background-color: rgb(248, 248, 248);\">这将给你一个坚实的基础去追求更先进的研究。无论是在一个私人老师,Udemy或更先进的钢琴课程。我认为你会非常喜欢这门课程,我期待着看到你在里面!</p>\r\n<p style=\"font-size: 13.3333px;\"><br style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\" />\r\n<span style=\"box-sizing: border-box; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; line-height: 28px; font-size: 14px;\"><span style=\"box-sizing: border-box; color: rgb(255, 0, 0);\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 26px;\">原文</span></strong></span></span></p>\r\n<p class=\"正文\" style=\"box-sizing: border-box; margin-bottom: 16px; color: rgb(85, 85, 85); font-family: \'Helvetica Neue\', \'Lantinghei SC\', Arial, \'Microsoft Yahei\', \'Hiragino Sans GB\', STXihei, Helvetica, sans-serif; font-size: 15px; line-height: 28px;\"><span style=\"box-sizing: border-box; font-size: 14px;\"><span style=\"box-sizing: border-box; color: rgb(105, 105, 105);\">Concise, compact, and easy to follow guide to learning piano and music theory basics! Well planned out lessons<br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\nBrand new to music?<br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\nHave some &quot;music theory holes&quot; you need to fill?<br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\nAlways wanted to play the piano, but didn\'t know where to start?<br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\nIf any of these are true, take this course!<br style=\"box-sizing: border-box;\" />\r\n<br style=\"box-sizing: border-box;\" />\r\nI want you to learn piano and music theory fast.</span></span></p>', null, null, '2017-04-16 00:00:00');
INSERT INTO `t_news` VALUES ('4', 'dse', '<p>&nbsp;adwadaw</p>', null, null, '17-05-24 12:07:37');
INSERT INTO `t_news` VALUES ('5', 'fs3e', '<p>&nbsp;fse</p>', null, null, '2017-05-24 12:15:32');

-- ----------------------------
-- Table structure for `t_pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun`;
CREATE TABLE `t_pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_musicid` varchar(200) DEFAULT NULL,
  `t_musicname` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_date` varchar(200) DEFAULT NULL,
  `t_pinlunid` varchar(200) DEFAULT NULL,
  `t_pinglunname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_pinglun
-- ----------------------------
INSERT INTO `t_pinglun` VALUES ('1', '1', '大海', '沙发', '2017-04-17', '111', '111');
INSERT INTO `t_pinglun` VALUES ('2', '1', '大海', '122', '2017-05-14', 'test(社员)', 'test(社员)');
INSERT INTO `t_pinglun` VALUES ('3', '1', '大海', '打算', '2017-05-26', 'jane(社员)', 'jane(社员)');
INSERT INTO `t_pinglun` VALUES ('4', '1', '大海', '阿斯顿', '2017-05-26', 'jane(社员)', 'jane(社员)');
INSERT INTO `t_pinglun` VALUES ('5', '5', '夜的第七章', 'asd ', '2017-05-26', 'jane(社员)', 'jane(社员)');

-- ----------------------------
-- Table structure for `t_shortcut`
-- ----------------------------
DROP TABLE IF EXISTS `t_shortcut`;
CREATE TABLE `t_shortcut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(200) DEFAULT NULL,
  `t_url` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_shortcut
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sysadmin`
-- ----------------------------
DROP TABLE IF EXISTS `t_sysadmin`;
CREATE TABLE `t_sysadmin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isLocked` varchar(255) DEFAULT NULL,
  `isLogon` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `usertype` varchar(255) DEFAULT NULL,
  `accountCreateTime` datetime DEFAULT NULL,
  `passErrorTimes` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `isvip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_sysadmin
-- ----------------------------
INSERT INTO `t_sysadmin` VALUES ('111', '12', null, null, null, '2', null, '0', null, null, '1231231', null, '519646017@qq.com', '22', '0', null, null, 'jane', '111.JPG', 'N');
INSERT INTO `t_sysadmin` VALUES ('222', '2', null, null, null, '2', null, '0', null, null, '12312312', null, '519646017@qq.com', '22', '0', null, '计算机学院', 'testing', '1704170126321169.JPG', null);
INSERT INTO `t_sysadmin` VALUES ('333', '4', null, null, null, '2', null, '0', null, null, '12312312', null, '519646017@qq.com', '11111111', '0', null, null, 'test', '170417014225982.JPG', 'Y');
INSERT INTO `t_sysadmin` VALUES ('eee123', 'eee123', null, null, null, '2', null, '0', null, null, '12312313242', null, '2@3.com', null, '0', null, null, '发色弱', '1705271633423522.jpg', null);
INSERT INTO `t_sysadmin` VALUES ('ggg', 'g', null, null, null, '1', null, '0', null, null, null, null, null, '22', '0', null, null, 'cc', null, null);
INSERT INTO `t_sysadmin` VALUES ('jh37847', '101', null, null, null, '2', null, '0', null, null, '17602125701', null, '1019894100@qq.com', '22', '0', null, null, 'lisi', '1705141653487051.png', 'N');
INSERT INTO `t_sysadmin` VALUES ('www123', 'www123', null, null, null, '1', null, '0', null, null, null, null, null, null, '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_title`
-- ----------------------------
DROP TABLE IF EXISTS `t_title`;
CREATE TABLE `t_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_datetime` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_title
-- ----------------------------
INSERT INTO `t_title` VALUES ('4', 'java1234', 'public*{\r\nssa\r\nsasa\r\nasas\r\nasas\r\nas\r\nas\r\nas\r\na\r\ns\r\n}', 'test(社员)', 'test(社员)', '2017-05-31 00:00:00');
INSERT INTO `t_title` VALUES ('5', '12', '<p>&nbsp;12</p>', '333', 'test(社员)', '2017-05-14 14:50:26');
INSERT INTO `t_title` VALUES ('13', '435 ', '<p>&nbsp;543&nbsp;</p>', '111', 'jane(社员)', '2017-05-27 16:15:03');

-- ----------------------------
-- Table structure for `t_zhaopin`
-- ----------------------------
DROP TABLE IF EXISTS `t_zhaopin`;
CREATE TABLE `t_zhaopin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `t_title` varchar(200) DEFAULT NULL,
  `t_content` longtext,
  `t_userid` varchar(200) DEFAULT NULL,
  `t_username` varchar(200) DEFAULT NULL,
  `t_datetime` varchar(22) DEFAULT NULL,
  `t_zmdx` varchar(200) DEFAULT NULL,
  `t_num` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of t_zhaopin
-- ----------------------------
INSERT INTO `t_zhaopin` VALUES ('3', '12', '<p>&nbsp;1212</p>', null, null, '2017-05-15 14:45:26', null, '10');
INSERT INTO `t_zhaopin` VALUES ('4', '大娃娃的', '<p>&nbsp;大</p>', null, null, '2017-05-24 13:05:49', 'java程序员', '20');
INSERT INTO `t_zhaopin` VALUES ('5', '安德门', '<p>&nbsp;阿斯顿</p>', null, null, '2017-05-26 16:11:16', 'php程序员', '30');
