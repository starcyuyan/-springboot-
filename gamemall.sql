/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : localhost:3306
 Source Schema         : gamemall

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 16/04/2024 19:54:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复',
  `isreply` int(11) NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708653663228 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客服聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (71, '2021-03-20 16:33:33', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (72, '2021-03-20 16:33:33', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (73, '2021-03-20 16:33:33', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (74, '2021-03-20 16:33:33', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (75, '2021-03-20 16:33:33', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (76, '2021-03-20 16:33:33', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1616229793085, '2021-03-20 16:43:13', 1616229558016, NULL, '你好', NULL, 0);
INSERT INTO `chat` VALUES (1616229996783, '2021-03-20 16:46:35', 1616229558016, 1, NULL, '请问有什么能帮你的', NULL);
INSERT INTO `chat` VALUES (1708606660762, '2024-02-22 20:57:40', 11, NULL, '2121', NULL, 0);
INSERT INTO `chat` VALUES (1708653663227, '2024-02-23 10:01:02', 11, NULL, 'wqw', NULL, 1);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/gameMall/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/gameMall/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/gameMall/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `youximingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏分类',
  `kaifashang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发商',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `goumairiqi` date NULL DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708653685203 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi` VALUES (1708606508041, '2024-02-22 20:55:07', '20242222055361168254', 'FIFA16', '休闲', 'EA体育游戏', '480', NULL, '用户1', '用户姓名1', '13823888881', '已支付');
INSERT INTO `dingdanxinxi` VALUES (1708606728849, '2024-02-22 20:58:48', '202422220584590202729', '屠龙少年', '角色', '九游游戏公司', '500', NULL, '用户1', '用户姓名1', '13823888881', '已支付');
INSERT INTO `dingdanxinxi` VALUES (1708653685202, '2024-02-23 10:01:24', '20242231011734293123', 'FIFA16', '休闲', 'EA体育游戏', '480', '2024-02-23', '用户1', '用户姓名1', '13823888881', '已支付');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for shangchenggonggao
-- ----------------------------
DROP TABLE IF EXISTS `shangchenggonggao`;
CREATE TABLE `shangchenggonggao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城公告' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangchenggonggao
-- ----------------------------
INSERT INTO `shangchenggonggao` VALUES (21, '2021-03-20 16:33:33', '【公告】春节我们一直在', 'http://localhost:8080/gameMall/upload/1708240232396.jpg', '<p>新春期间,商城正常上班,欢迎各位玩家咨询下单.</p><p>				祝大家新年快乐,龙年大吉</p>', '2024-02-01');
INSERT INTO `shangchenggonggao` VALUES (23, '2021-03-20 16:33:33', '诛仙手游正式上线啦~~~', 'http://localhost:8080/gameMall/upload/shangchenggonggao_tupian3.jpg', '<p>诛仙手游正式上线,全新玩法,精美画质,梦幻剧情,</p>', '2024-02-07');

-- ----------------------------
-- Table structure for shangchengyouxi
-- ----------------------------
DROP TABLE IF EXISTS `shangchengyouxi`;
CREATE TABLE `shangchengyouxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youximingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏名称',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `youxifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏分类',
  `jiage` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `kaifashang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发商',
  `youxijianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '游戏简介',
  `shangshiriqi` date NULL DEFAULT NULL COMMENT '上市日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城游戏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangchengyouxi
-- ----------------------------
INSERT INTO `shangchengyouxi` VALUES (41, '2021-03-20 16:33:33', 'FIFA16', 'http://localhost:8080/gameMall/upload/shangchengyouxi_tupian1.jpg', '休闲', '480', 'EA体育游戏', '<p>一般来说，一款游戏的开发时间会超过一年，然而像《FIFA》这样每年都推出的游戏又不太一样。因为游戏本身的基础技术和内容并不会有核心的改变，开发商需要做的是，保留游戏主要的机制，然后每一款新作的都加入创新元素，让游戏保持新鲜感。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1]</span></p><p>	EA的Peter Moore最近的一次采访表示开发有两个阶段。游戏核心是一部分。我们有几百个人负责这部分，这是一个复杂的开发过程，所以我们已经有人开始制作《FIFA 16》了。我认为一些玩家误以为我们一般都先完成一款游戏，然后整班人马，休息几个星期才会开始下一款游戏的制作，实际情况不是这样的。开发都是平行进行的，你需要一些人提前考虑《FIFA 16》和《FIFA 17》，因为需要考虑开发上和工程上的技术问题。</p>', '2021-03-20');
INSERT INTO `shangchengyouxi` VALUES (42, '2021-03-20 16:33:33', '屠龙少年', 'http://localhost:8080/gameMall/upload/shangchengyouxi_tupian2.jpg', '角色', '500', '九游游戏公司', '<p><span style=\"color: rgb(34, 36, 38);\">屠龙少年是一款传奇类型的角色扮演手游，游戏画风十分复古，在屠龙少年手游中将可以在不同的副本中进行探索，获得各种强力神器，让玩家能更好的进行攻沙。</span></p>', '2021-03-20');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616229632998 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1616229632997, '2021-03-20 16:40:32', 1616229558016, 42, 'shangchengyouxi', '游戏名称2', 'http://localhost:8080/gameMall/upload/shangchengyouxi_tupian2.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户1', 'yonghu', '用户', 'y4eo09zbksoeu890r103l0xjrjinud0a', '2021-03-20 16:35:29', '2024-02-23 11:00:48');
INSERT INTO `token` VALUES (2, 1, 'abo', 'users', '管理员', 'lmc1s8o44lbrv2hzfky4xhi18wweigd9', '2021-03-20 16:36:08', '2024-04-12 12:49:13');
INSERT INTO `token` VALUES (3, 1616229558016, '11', 'yonghu', '用户', 'jg8k86dpif13x2byo2xdanfd16gi0ew4', '2021-03-20 16:39:27', '2021-03-20 17:46:58');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-03-20 16:33:33');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1616229558017 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-03-20 16:33:33', '用户1', '123456', '用户姓名1', 'http://localhost:8080/gameMall/upload/yonghu_touxiang1.jpg', '男', '13823888881', '773890001@qq.com');
INSERT INTO `yonghu` VALUES (12, '2021-03-20 16:33:33', '用户2', '123456', '用户姓名2', 'http://localhost:8080/gameMall/upload/yonghu_touxiang2.jpg', '男', '13823888882', '773890002@qq.com');
INSERT INTO `yonghu` VALUES (13, '2021-03-20 16:33:33', '用户3', '123456', '用户姓名3', 'http://localhost:8080/gameMall/upload/yonghu_touxiang3.jpg', '男', '13823888883', '773890003@qq.com');
INSERT INTO `yonghu` VALUES (14, '2021-03-20 16:33:33', '用户4', '123456', '用户姓名4', 'http://localhost:8080/gameMall/upload/yonghu_touxiang4.jpg', '男', '13823888884', '773890004@qq.com');
INSERT INTO `yonghu` VALUES (15, '2021-03-20 16:33:33', '用户5', '123456', '用户姓名5', 'http://localhost:8080/gameMall/upload/yonghu_touxiang5.jpg', '男', '13823888885', '773890005@qq.com');
INSERT INTO `yonghu` VALUES (16, '2021-03-20 16:33:33', '用户6', '123456', '用户姓名6', 'http://localhost:8080/gameMall/upload/yonghu_touxiang6.jpg', '男', '13823888886', '773890006@qq.com');
INSERT INTO `yonghu` VALUES (1616229558016, '2021-03-20 16:39:18', '11', '123456', '陈先生', 'http://localhost:8080/gameMall/upload/1616229576618.jpg', '男', '13823899999', '');

-- ----------------------------
-- Table structure for youxifenlei
-- ----------------------------
DROP TABLE IF EXISTS `youxifenlei`;
CREATE TABLE `youxifenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youxifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of youxifenlei
-- ----------------------------
INSERT INTO `youxifenlei` VALUES (31, '2021-03-20 16:33:33', '休闲');
INSERT INTO `youxifenlei` VALUES (32, '2021-03-20 16:33:33', '角色');
INSERT INTO `youxifenlei` VALUES (33, '2021-03-20 16:33:33', 'moba');
INSERT INTO `youxifenlei` VALUES (34, '2021-03-20 16:33:33', '益智');
INSERT INTO `youxifenlei` VALUES (35, '2021-03-20 16:33:33', '战争');
INSERT INTO `youxifenlei` VALUES (36, '2021-03-20 16:33:33', '网游RPG');

-- ----------------------------
-- Table structure for youxixiazai
-- ----------------------------
DROP TABLE IF EXISTS `youxixiazai`;
CREATE TABLE `youxixiazai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `youximingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏名称',
  `youxifenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏分类',
  `kaifashang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开发商',
  `goumairiqi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买日期',
  `youxiruanjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏软件',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708653994865 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏下载' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of youxixiazai
-- ----------------------------
INSERT INTO `youxixiazai` VALUES (1708653976294, '2024-02-23 10:06:16', '20242222055361168254', 'FIFA16', '休闲', 'EA体育游戏', NULL, 'http://localhost:8080/gameMall/upload/1708653966274.docx', '用户1', '用户姓名1', '13823888881');
INSERT INTO `youxixiazai` VALUES (1708653994864, '2024-02-23 10:06:34', '20242231011734293123', 'FIFA16', '休闲', 'EA体育游戏', '2024-02-23', '', '用户1', '用户姓名1', '13823888881');

SET FOREIGN_KEY_CHECKS = 1;
