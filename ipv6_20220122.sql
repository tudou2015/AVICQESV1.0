/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50514
Source Host           : localhost:3306
Source Database       : ipv6

Target Server Type    : MYSQL
Target Server Version : 50514
File Encoding         : 65001

Date: 2022-01-22 19:27:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ipv6_category`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_category`;
CREATE TABLE `ipv6_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_category
-- ----------------------------
INSERT INTO `ipv6_category` VALUES ('1', '1', '高清相似度', '0');
INSERT INTO `ipv6_category` VALUES ('2', '2', '清晰度', '0');
INSERT INTO `ipv6_category` VALUES ('3', '3', '流畅度', '0');
INSERT INTO `ipv6_category` VALUES ('4', '4', '细节丰富度', '0');
INSERT INTO `ipv6_category` VALUES ('5', '5', '总体感觉', '0');

-- ----------------------------
-- Table structure for `ipv6_item`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_item`;
CREATE TABLE `ipv6_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `seq` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_item
-- ----------------------------
INSERT INTO `ipv6_item` VALUES ('1', '1', 'a', '/a.jpg', 'jpg', '1', '1');
INSERT INTO `ipv6_item` VALUES ('2', '1', 'b', '/b.jpg', 'jpg', '2', '1');
INSERT INTO `ipv6_item` VALUES ('3', '1', 'c', '/c.jpg', 'jpg', '3', '1');
INSERT INTO `ipv6_item` VALUES ('4', '1', 'test2', 'http://10.1.11.5:58080/upload/2021/12/21/42c86adc78a944fba890652c1159fd00.jpg', 'jpg2', '2', '1');
INSERT INTO `ipv6_item` VALUES ('5', '1', 'ttt', 'https://ip46.ahtvu.ah.cn/upload/2021/12/31/58872a9b0378468292a5d6004c06dbd9.jpg', 'jpg', '3', '1');
INSERT INTO `ipv6_item` VALUES ('6', '1', '111', 'https://ip46.ahtvu.ah.cn/upload/2022/1/3/466a139d3ffa4aee8cd79f89add6aec6.jpg', 'jpg', '33', '1');
INSERT INTO `ipv6_item` VALUES ('7', '5', 'rrr', 'https://ip46.ahtvu.ah.cn/upload/2022/1/3/86aba0154ace406db45cbd0915181c10.mp3', 'mp3', '12', '1');
INSERT INTO `ipv6_item` VALUES ('8', '6', 'ww', 'https://ip46.ahtvu.ah.cn/upload/2022/1/3/eae4ebd825304bb29a522e612ae922e6_1.mp4', 'mp4', '1', '1');
INSERT INTO `ipv6_item` VALUES ('9', '1', 'image1_ppt_png', 'https://ip46.ahtvu.ah.cn/upload/2022/1/4/d19ed7485f1b40448ed3f7eacae9ea0f.jpg', 'png', '2', '1');
INSERT INTO `ipv6_item` VALUES ('10', '5', 'q', 'https://ip46.ahtvu.ah.cn/upload/2022/1/4/e24fa915a7e741b589d49a3dc6fd5d6d.mp3', 'mp3', '2', '1');
INSERT INTO `ipv6_item` VALUES ('11', '6', 'c', 'https://ip46.ahtvu.ah.cn/upload/2022/1/4/85e475e7e4834b71a570ee2077e1b2d3_1.mp4', 'mp4', '2', '1');
INSERT INTO `ipv6_item` VALUES ('12', '6', 'video5', '/upload/2022/1/5/0a2dddb4414943ed8904db70e1ae075a.mp4', 'video', '5', '1');
INSERT INTO `ipv6_item` VALUES ('13', '5', 'voice1_male_mp3', '/upload/2022/1/15/e24b52f547bb44619e690b024e442183.mp3', 'mp3', '2', '0');
INSERT INTO `ipv6_item` VALUES ('14', '5', 'voice1_male_ogg', '/upload/2022/1/15/2281f5b8313945dda54342fe3fc89d35.ogg', 'ogg', '4', '0');
INSERT INTO `ipv6_item` VALUES ('15', '5', 'voice1_male_mp3_8k', '/upload/2022/1/15/e72bf63c1d9d4c6786218b00a443851c.mp3', 'mp3', '3', '0');
INSERT INTO `ipv6_item` VALUES ('16', '10', 'voice2_female_mp3', '/upload/2022/1/15/84dab6664a1d406ba17a4f90cc5cd20a.mp3', 'mp3', '2', '0');
INSERT INTO `ipv6_item` VALUES ('17', '10', 'voice2_female_mp3_8k', '/upload/2022/1/15/d8db29c877e34e5da531a284cc4976b5.mp3', 'mp3', '3', '0');
INSERT INTO `ipv6_item` VALUES ('18', '10', 'voice2_female_ogg', '/upload/2022/1/15/f6ef6c2c53fd40328f7cb2724f13df1a.ogg', 'ogg', '4', '0');
INSERT INTO `ipv6_item` VALUES ('19', '11', 'voice3_old_mp3', '/upload/2022/1/15/e1d6b44729e74ddfaf731bf894b546af.mp3', 'mp3', '2', '0');
INSERT INTO `ipv6_item` VALUES ('20', '11', 'voice3_old_mp3_8k', '/upload/2022/1/15/283bb7b5dace44b2bf084ae2de819b5f.mp3', 'mp3', '3', '0');
INSERT INTO `ipv6_item` VALUES ('21', '11', 'voice3_old_ogg', '/upload/2022/1/15/0397a18fc9ed4a8b81002e0cc22f0460.ogg', 'ogg', '4', '0');
INSERT INTO `ipv6_item` VALUES ('22', '11', 'tt', '/upload/2022/1/15/2dbfa9ca42504ffbabb8ec8ee815935c.wav', 'wav', '1', '1');
INSERT INTO `ipv6_item` VALUES ('23', '5', 'voice1_male_wav', '/upload/2022/1/15/2d690c44413349d4aa9c1216d4bbe621.wav', 'wav', '1', '0');
INSERT INTO `ipv6_item` VALUES ('24', '10', 'voice2_female_wav', '/upload/2022/1/15/4c15b5196f3a449c96da2dc3c50fe883.wav', 'wav', '1', '0');
INSERT INTO `ipv6_item` VALUES ('25', '11', 'voice3_old_wav', '/upload/2022/1/15/5247272b0b7546a299496c82147d66d9.wav', 'wav', '1', '0');
INSERT INTO `ipv6_item` VALUES ('26', '1', 'tt', '/upload/2022/1/15/a3c223c7fb9a49878c896dba0fd0552f.png', 'bmp', '2', '1');
INSERT INTO `ipv6_item` VALUES ('27', '1', 'image1_ppt_bmp', '/upload/2022/1/15/e49044f500104375bea227838080ca28.bmp', 'bmp', '1', '0');
INSERT INTO `ipv6_item` VALUES ('28', '1', '33', '/upload/2022/1/15/c228fcd5d83f45498b39e4646e50a586.bmp', 'bmp', '4', '1');
INSERT INTO `ipv6_item` VALUES ('29', '1', 'image1_ppt_png', '/upload/2022/1/15/f118ea67a69c4824b9e661c6be28af8a.png', 'png', '2', '0');
INSERT INTO `ipv6_item` VALUES ('30', '1', 'image1_ppt_webp', '/upload/2022/1/15/68b02ef24f2942ef9a3cf694ea415818.webp', 'webp', '5', '0');
INSERT INTO `ipv6_item` VALUES ('31', '1', 'image1_ppt_jp2', '/upload/2022/1/15/b73fa2adf0f4497ca39540b5513db649.jp2', 'jp2', '4', '0');
INSERT INTO `ipv6_item` VALUES ('32', '1', '3333', '/upload/2022/1/15/2a0fce67e4874109b9b8884c9226b647.jpeg', 'jepg', '44', '1');
INSERT INTO `ipv6_item` VALUES ('33', '1', 'image1_ppt_jpeg', '/upload/2022/1/15/e24eb6846f5a4792b5885c45ea4bf960.jpeg', 'jpeg', '3', '0');
INSERT INTO `ipv6_item` VALUES ('34', '2', 'image2_ppt_man_bmp', '/upload/2022/1/15/465bd7781e7b4542bf15b852f6a07885.bmp', 'bmp', '1', '0');
INSERT INTO `ipv6_item` VALUES ('35', '2', 'image2_ppt_man_png', '/upload/2022/1/15/908cdf52e2d944d3bd383d7d37e200c6.png', 'png', '2', '0');
INSERT INTO `ipv6_item` VALUES ('36', '2', 'image2_ppt_man_jpeg', '/upload/2022/1/15/a80cc10067454493aaa43ee65b515fb5.jpeg', 'jpeg', '3', '0');
INSERT INTO `ipv6_item` VALUES ('37', '2', 'image2_ppt_man_jp2', '/upload/2022/1/15/955dcb3688094948b8d1acec086310fc.jp2', 'jp2', '4', '0');
INSERT INTO `ipv6_item` VALUES ('38', '2', 'image2_ppt_man_webp', '/upload/2022/1/15/4cd2ced5bee24b349418e10e15bcdfcb.webp', 'webp', '5', '0');
INSERT INTO `ipv6_item` VALUES ('39', '3', 'image3_screen_woman_bmp', '/upload/2022/1/15/381695963b5b4d7d8d9b00d06fbabe12.bmp', 'bmp', '1', '0');
INSERT INTO `ipv6_item` VALUES ('40', '3', 'image3_screen_woman_png', '/upload/2022/1/15/9eb9b8dfd9f549e39f46eeabe3c32b4d.png', 'png', '2', '0');
INSERT INTO `ipv6_item` VALUES ('41', '3', 'image3_screen_woman_jpeg', '/upload/2022/1/15/3604647bab1947d5bbb2dcb7081b124d.jpeg', 'jpeg', '3', '0');
INSERT INTO `ipv6_item` VALUES ('42', '3', 'image3_screen_woman_jp2', '/upload/2022/1/15/cee220d80da44937ac19cc64d0af333e.jp2', 'jp2', '4', '0');
INSERT INTO `ipv6_item` VALUES ('43', '3', 'image3_screen_woman_webp', '/upload/2022/1/15/844970b00ed5439abcea7685c3b1af6c.webp', 'webp', '5', '0');
INSERT INTO `ipv6_item` VALUES ('44', '12', 'video2_1000k_r25', '/upload/2022/1/18/3293d170670c41b39e815ee948201a3c.mp4', 'mp4', '1', '0');
INSERT INTO `ipv6_item` VALUES ('45', '12', 'video2_ppt2_700k_r25', '/upload/2022/1/18/53b13898d77d4e60983619ae6a9551fd.mp4', 'mp4', '2', '0');
INSERT INTO `ipv6_item` VALUES ('46', '12', 'video2_ppt2_700k_r15', '/upload/2022/1/18/944014dad82e49b496aa9cd0cb3428ea.mp4', 'mp4', '3', '0');
INSERT INTO `ipv6_item` VALUES ('47', '12', 'video2_ppt2_300k_r25', '/upload/2022/1/18/00c2f1f427e84a4a81a800f1170b9c38.mp4', 'mp4', '4', '0');
INSERT INTO `ipv6_item` VALUES ('48', '12', 'video2_ppt2_300k_r15', '/upload/2022/1/18/4d9d58a7c322454c922ca322477dd633.mp4', 'mp4', '5', '0');
INSERT INTO `ipv6_item` VALUES ('49', '13', 'video3_screen_woman_300k_r25', '/upload/2022/1/18/b5b47dbb38da4d9c98dd6869f108afd6.mp4', 'mp4', '4', '0');
INSERT INTO `ipv6_item` VALUES ('50', '13', 'video3_screen_woman_300k_r15', '/upload/2022/1/18/8786a209ba544864bf260e096d7c9831.mp4', 'mp4', '5', '0');
INSERT INTO `ipv6_item` VALUES ('51', '15', 't', '/upload/2022/1/19/a78008139ded4012be3a106b8fc813f7.mp4', 'mp4', '3', '1');
INSERT INTO `ipv6_item` VALUES ('52', '13', 'video3_screen_woman_1000k_r25', '/upload/2022/1/22/1528374974394745a00c11105c70ae08.mp4', 'mp4', '1', '0');
INSERT INTO `ipv6_item` VALUES ('53', '13', 'video3_screen_woman_700k_r25', '/upload/2022/1/22/c91b429b18d04c2c9787e19b2fcd5896.mp4', 'mp4', '2', '0');
INSERT INTO `ipv6_item` VALUES ('54', '13', 'video3_screen_woman_700k_r15', '/upload/2022/1/22/c0ae0aaa36e7442cb3bdd981ed18642a.mp4', 'mp4', '3', '0');
INSERT INTO `ipv6_item` VALUES ('55', '14', 'video5_live_1000k_r25', '/upload/2022/1/22/c10ec588c83a422195b053aa6108fa74.mp4', 'mp4', '1', '0');
INSERT INTO `ipv6_item` VALUES ('56', '14', 'video5_live_700k_r25', '/upload/2022/1/22/cbf4184701d14f86b714c94d4a7e4d4c.mp4', 'mp4', '2', '0');
INSERT INTO `ipv6_item` VALUES ('57', '14', 'video5_live_700k_r15', '/upload/2022/1/22/59e6e4fc8dcf49b2a3378b0397888802.mp4', 'mp4', '3', '0');
INSERT INTO `ipv6_item` VALUES ('58', '14', 'video5_live_300k_r25', '/upload/2022/1/22/2e42fc7870e34216b4344ebacc9b5621.mp4', 'mp4', '4', '0');
INSERT INTO `ipv6_item` VALUES ('59', '14', 'video5_live_300k_r15', '/upload/2022/1/22/a34bcfa40cdf4b2785c545e56274f035.mp4', 'mp4', '5', '0');
INSERT INTO `ipv6_item` VALUES ('60', '15', 'video4_dake_1000k_r25', '/upload/2022/1/22/8d0e57fb5384498da3bd8217ff1c5c1b.mp4', 'mp4', '1', '0');
INSERT INTO `ipv6_item` VALUES ('61', '15', 'video4_dake_700k_r25', '/upload/2022/1/22/4b42429293ac4e0591ad76004b8bcd2d.mp4', 'mp4', '2', '0');
INSERT INTO `ipv6_item` VALUES ('62', '15', 'video4_dake_300k_r25', '/upload/2022/1/22/efcba80cba9c4f9ba0d112b944adabf9.mp4', 'mp4', '4', '0');
INSERT INTO `ipv6_item` VALUES ('63', '15', 'video4_dake_700k_r15', '/upload/2022/1/22/8d9ef224d1e746de8130a0e4147db7d9.mp4', 'mp4', '3', '0');
INSERT INTO `ipv6_item` VALUES ('64', '15', 'video4_dake_300k_r15', '/upload/2022/1/22/deabd1868b9a489890061c6d431f0ddb.mp4', 'mp4', '5', '0');
INSERT INTO `ipv6_item` VALUES ('65', '16', 'video1_ppt_1000k_r25', '/upload/2022/1/22/4686d37ab3ad4b47a208ddf75d4269e2.mp4', 'mp4', '1', '0');
INSERT INTO `ipv6_item` VALUES ('66', '16', 'video1_ppt_700k_r25', '/upload/2022/1/22/547d635c830542c6bc0c0e98bcecac96.mp4', 'mp4', '2', '0');
INSERT INTO `ipv6_item` VALUES ('67', '16', 'video1_ppt_700k_r15', '/upload/2022/1/22/45ca97797dfe4a149bdde1d995ec55a6.mp4', 'mp4', '3', '0');
INSERT INTO `ipv6_item` VALUES ('68', '16', 'video1_ppt_300k_r25', '/upload/2022/1/22/c3207be7630b4f5287d4d358900e86af.mp4', 'mp4', '4', '0');
INSERT INTO `ipv6_item` VALUES ('69', '16', 'video1_ppt_300k_r15', '/upload/2022/1/22/e1e5bd3bfa1446a9b9fe78b0aa973a83.mp4', 'mp4', '5', '0');

-- ----------------------------
-- Table structure for `ipv6_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_rank`;
CREATE TABLE `ipv6_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_rank
-- ----------------------------
INSERT INTO `ipv6_rank` VALUES ('1', '1', '1分', '0');
INSERT INTO `ipv6_rank` VALUES ('2', '2', '2分', '0');
INSERT INTO `ipv6_rank` VALUES ('3', '3', '3分', '0');
INSERT INTO `ipv6_rank` VALUES ('4', '4', '4分', '0');
INSERT INTO `ipv6_rank` VALUES ('5', '5', '5分', '0');

-- ----------------------------
-- Table structure for `ipv6_score`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_score`;
CREATE TABLE `ipv6_score` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `iid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_score
-- ----------------------------

-- ----------------------------
-- Table structure for `ipv6_test`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_test`;
CREATE TABLE `ipv6_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_test
-- ----------------------------
INSERT INTO `ipv6_test` VALUES ('1', '1', 'image1', 'ppt', '0');
INSERT INTO `ipv6_test` VALUES ('2', '1', 'image2', 'ppt_man', '0');
INSERT INTO `ipv6_test` VALUES ('3', '1', 'image3', 'screen_woman', '0');
INSERT INTO `ipv6_test` VALUES ('4', '1', 'test', 'test', '1');
INSERT INTO `ipv6_test` VALUES ('5', '2', 'voice1_male', 'voice1_male', '0');
INSERT INTO `ipv6_test` VALUES ('6', '3', 't3', '53', '1');
INSERT INTO `ipv6_test` VALUES ('7', '1', 'a', 'b', '1');
INSERT INTO `ipv6_test` VALUES ('8', '1', 'a', 'b', '1');
INSERT INTO `ipv6_test` VALUES ('9', '1', 'image5', 'screen_woman', '1');
INSERT INTO `ipv6_test` VALUES ('10', '2', 'voice2_female', 'voice2_female', '0');
INSERT INTO `ipv6_test` VALUES ('11', '2', 'voice3_old', 'voice3_old', '0');
INSERT INTO `ipv6_test` VALUES ('12', '3', 'video2_ppt2', 'video2_ppt2', '0');
INSERT INTO `ipv6_test` VALUES ('13', '3', 'video3_screen_woman', 'video3_screen_woman', '0');
INSERT INTO `ipv6_test` VALUES ('14', '3', 'video5_live', 'video5_live', '0');
INSERT INTO `ipv6_test` VALUES ('15', '3', 'video4_dake', 'video4_dake', '0');
INSERT INTO `ipv6_test` VALUES ('16', '3', 'video1_ppt', 'video1_ppt', '0');

-- ----------------------------
-- Table structure for `ipv6_user`
-- ----------------------------
DROP TABLE IF EXISTS `ipv6_user`;
CREATE TABLE `ipv6_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ipv6_user
-- ----------------------------
INSERT INTO `ipv6_user` VALUES ('1', '1', 'zws', '-5364696734917542540', '11641cda075f58047fbd98a68cd17b33', '0');
INSERT INTO `ipv6_user` VALUES ('2', '2', 'test', 'uepj', '9746435d546bb9b25735eba7e3673e36', '0');
INSERT INTO `ipv6_user` VALUES ('3', '1', 'hk', '7510817095798733494', '7953cc455178d4b62b54f1744f36a2ae', '0');
INSERT INTO `ipv6_user` VALUES ('4', '2', '刘冬梅', '0.4353607813225694', '0af7dd5ae2131799d58e6af50db4c144', '0');
INSERT INTO `ipv6_user` VALUES ('5', '2', '汪冬冬', '0.18666886741916544', '95926e241debc4c5e0df5cc886ed3809', '0');
INSERT INTO `ipv6_user` VALUES ('6', '2', '何梦悦', '0.627262023861764', '30ec713ba85dca6bb08b9ffa8573624a', '0');
INSERT INTO `ipv6_user` VALUES ('7', '2', '平凡', '0.5763035477849688', '4071153266accd8c4d93106bc76d0c27', '0');
INSERT INTO `ipv6_user` VALUES ('8', '2', '邢佩', '0.9997316980731968', '78f83be74e45527833f559b7c8db3b69', '0');
INSERT INTO `ipv6_user` VALUES ('9', '2', '卜亚俊', '0.269747877744723', '20ab5ae336f297a4cf586aa8b40d0982', '0');
INSERT INTO `ipv6_user` VALUES ('10', '2', '舒晨岚', '0.3495443252376694', 'a014980d60d3e8cc2a483414b959969b', '0');
INSERT INTO `ipv6_user` VALUES ('11', '2', '刘想', '0.9384780236878227', 'ef18c450b55c08bb013ac66d55bd961c', '0');
INSERT INTO `ipv6_user` VALUES ('12', '2', '丁玉林', '0.6437571734597508', 'dc0932c10f3fa0a6aa6feb2b81cc6f21', '0');
INSERT INTO `ipv6_user` VALUES ('13', '2', '王金影', '0.4033518269689305', 'f85dd800e8793f3030c5e7a8b0b7896d', '0');
INSERT INTO `ipv6_user` VALUES ('14', '2', '刘琦', '0.08548764519904521', 'b7dbf572e46128a3e4b2751056321649', '0');
INSERT INTO `ipv6_user` VALUES ('15', '2', '李青雯', '0.21738277582207954', 'c4fd7eeb629e78013103d71291e64e50', '0');
INSERT INTO `ipv6_user` VALUES ('16', '2', '梅娜', '0.8304509742469071', '528e2cac7185eaf3e30998c7a1f7c6eb', '0');
INSERT INTO `ipv6_user` VALUES ('17', '2', '王力', '0.5001065745019415', '5b1115c552dfe5818eac16a007ce1e2c', '0');
INSERT INTO `ipv6_user` VALUES ('18', '2', '李伟', '0.009179980502631498', 'f49d0a923311867ec25b769c88149a2b', '0');
INSERT INTO `ipv6_user` VALUES ('19', '2', '陈秀文', '0.545580209740978', 'cbefc25bb69bb0a5e723b5fed067f582', '0');
INSERT INTO `ipv6_user` VALUES ('20', '2', '王燕泽', '0.7003611379306401', 'a08c8295250c30523f22c7f9ed57a268', '0');
INSERT INTO `ipv6_user` VALUES ('21', '2', '侯雪文', '0.865065091163912', '366838a45861f23e628b6f6c94162a56', '0');
INSERT INTO `ipv6_user` VALUES ('22', '2', '徐慢慢', '0.22424207276128424', '3d82f8d1e315d786ebfa5dfe0e98e70e', '0');
INSERT INTO `ipv6_user` VALUES ('23', '2', '何静雯', '0.5260151210483305', 'fd2599ffdd0ff83f62b86c0595171747', '0');
INSERT INTO `ipv6_user` VALUES ('24', '2', '卢克培', '0.9573494176914444', 'a24c02c283b901d853f059e258589559', '0');
INSERT INTO `ipv6_user` VALUES ('25', '2', '吴昊颖', '0.20870175604587585', 'e66169918209dcb4ecc5ebdac13cd397', '0');
INSERT INTO `ipv6_user` VALUES ('26', '2', '宗思琪', '0.1714605578886909', '0cb4804f41b589286d6fb3eb875f4f19', '0');
INSERT INTO `ipv6_user` VALUES ('27', '2', '何章龙', '0.23119755203947198', 'a182d53d6ba72f1cfe129ccdae66eca9', '0');
INSERT INTO `ipv6_user` VALUES ('28', '2', '王雪飞', '0.6416061172649321', 'f84011892eed01f90ba318bcd85d648d', '0');
INSERT INTO `ipv6_user` VALUES ('29', '2', '王冰洁', '0.5144379609398897', '40f4eca7d3a0d58808669e207b690360', '0');
INSERT INTO `ipv6_user` VALUES ('30', '2', '徐晓蕾', '0.6473714836382973', '9ccdaa252e633d23f19efeac195325af', '0');
INSERT INTO `ipv6_user` VALUES ('31', '2', '朱晶晶 ', '0.6935435661054622', 'a0541edc991e70c5d86f68bf0ba9ba74', '0');
INSERT INTO `ipv6_user` VALUES ('32', '2', '徐文婷', '0.5256034103460642', '6e99b04b12f90732be9fa9ccd4d6c285', '0');
INSERT INTO `ipv6_user` VALUES ('33', '2', '骆田田', '0.5473863841475792', '62c11c53581e4e099438cc5f7b5e5a4a', '0');
INSERT INTO `ipv6_user` VALUES ('34', '2', '王本超', '0.16012172043334852', 'b19b19536cd2ec7ec06eb801a66a5c85', '0');
INSERT INTO `ipv6_user` VALUES ('35', '2', '孙豆豆', '0.15844948045765', 'a3e341d0b38af9b04bb555a421bae01e', '0');
INSERT INTO `ipv6_user` VALUES ('36', '2', '张金荣', '0.31188227172184946', '713b01242e6ae5831640a2376f6a03a7', '0');
INSERT INTO `ipv6_user` VALUES ('37', '2', '彭亚', '0.0840629479699423', '13f8a1f1bf5120bdb6cfc8d9ed8dda22', '0');
INSERT INTO `ipv6_user` VALUES ('38', '2', '朱超', '0.4846679554178081', '468e1e23abb4b9bfb296bb752935eea4', '0');
INSERT INTO `ipv6_user` VALUES ('39', '2', '王瑞', '0.17115096391285858', '09a904cb0f780861ffa1f71a4eea1e9c', '0');
INSERT INTO `ipv6_user` VALUES ('40', '2', '马磊', '0.40175098404451365', 'f697eeadaa9ef0812e84aabd63c6f876', '0');
INSERT INTO `ipv6_user` VALUES ('41', '2', '朱强', '0.4953020592176375', '437a987739dc1e7ac8fb66b830acf1de', '0');
INSERT INTO `ipv6_user` VALUES ('42', '2', '汪显兰', '0.27125737468829136', 'd49aa285f74c289612d6804fea924d13', '0');
INSERT INTO `ipv6_user` VALUES ('43', '2', '潘清源', '0.8703807265221893', '0d5e0b8b1df10694ce9d0d32e3436207', '0');
INSERT INTO `ipv6_user` VALUES ('44', '2', '宋坤', '0.5381315392797176', '917ad90160efa015816d973ffbb35dca', '0');
INSERT INTO `ipv6_user` VALUES ('45', '2', '钱寿琴', '0.07951554756566467', 'aaaef640031f775ddb7b233aa05ce929', '0');
INSERT INTO `ipv6_user` VALUES ('46', '2', '姚嫚嫚', '0.7831831507228157', '1d8d757050e9da8c3e853cc2f4bbe3db', '0');
INSERT INTO `ipv6_user` VALUES ('47', '2', '陈丽娟', '0.6773691416507299', 'a81ff0b8ffa12b2b91ff6c1dcc6e0c99', '0');
INSERT INTO `ipv6_user` VALUES ('48', '2', '钱佳圆', '0.03729628681884733', '00c1eafbf8f1098168cb05799c052c8a', '0');
INSERT INTO `ipv6_user` VALUES ('49', '2', '黄滕', '0.1543740398756918', '2246d81faf5428d56092a19abf0ab538', '0');
INSERT INTO `ipv6_user` VALUES ('50', '2', '胡玲', '0.659981369655562', 'bb19b5afae93c387dd60411a996923d7', '0');
INSERT INTO `ipv6_user` VALUES ('51', '2', '吕尧', '0.8367847593843795', '0b576507515d22e61b7d43c41c31a546', '0');
INSERT INTO `ipv6_user` VALUES ('52', '2', '黄明巧', '0.20397971868885656', 'b4aee6acd337e027ca21d8b339f23917', '0');
INSERT INTO `ipv6_user` VALUES ('53', '2', '刘磊鑫', '0.5095443460247893', '40959d05d67f035f1648ca9ae42eec64', '0');
