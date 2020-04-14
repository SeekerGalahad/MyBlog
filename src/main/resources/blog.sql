/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-02-04 14:57:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_comments
-- ----------------------------
DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `coid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) unsigned DEFAULT '0',
  `ownerId` int(10) unsigned DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`coid`) USING BTREE,
  KEY `cid` (`cid`) USING BTREE,
  KEY `created` (`created`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '文章评论表';

-- ----------------------------
-- Records of t_comments
-- ----------------------------
INSERT INTO `t_comments` VALUES ('4', '34', '1580723064', '测试人员', null, null, 'test@163.com', '', '0:0:0:0:0:0:0:1', null, '我就评论试试', null, 'approved', null);

-- ----------------------------
-- Table structure for t_contents
-- ----------------------------
DROP TABLE IF EXISTS `t_contents`;
CREATE TABLE `t_contents` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `titlePic` varchar(55) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `modified` int(10) unsigned DEFAULT '0',
  `content` text COMMENT '内容文字',
  `authorId` int(10) unsigned DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(10) unsigned DEFAULT '0',
  `commentsNum` int(10) unsigned DEFAULT '0',
  `allowComment` tinyint(1) DEFAULT '1',
  `allowPing` tinyint(1) DEFAULT '1',
  `allowFeed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cid`) USING BTREE,
  UNIQUE KEY `slug` (`slug`) USING BTREE,
  KEY `created` (`created`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '文章表';

-- ----------------------------
-- Records of t_contents
-- ----------------------------
INSERT INTO `t_contents` VALUES ('34', '测试文章', null, null, '1580707167', '1580723064', '随便写写', null, 'post', 'publish', '随便写写,测试', '随笔', '1', '1', '1', null, null);

-- ----------------------------
-- Table structure for t_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_logs`;
CREATE TABLE `t_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `action` varchar(100) DEFAULT NULL COMMENT '事件',
  `data` varchar(2000) DEFAULT NULL COMMENT '数据',
  `authorId` int(10) DEFAULT NULL COMMENT '作者编号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '操作日志表';

-- ----------------------------
-- Records of t_logs
-- ----------------------------
INSERT INTO `t_logs` VALUES ('184', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580706710');
INSERT INTO `t_logs` VALUES ('185', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580712999');
INSERT INTO `t_logs` VALUES ('186', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580719384');
INSERT INTO `t_logs` VALUES ('187', '保存系统设置', '{\"site_record\":\"无\",\"google_site_verification\":\"无\",\"site_description\":\"个人博客\",\"baidu_site_verification\":\"无\",\"site_title\":\"wagic的个人博客\",\"allow_install\":\"\"}', '1', '0:0:0:0:0:0:0:1', '1580719864');
INSERT INTO `t_logs` VALUES ('188', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580721240');
INSERT INTO `t_logs` VALUES ('189', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580721615');
INSERT INTO `t_logs` VALUES ('190', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580722425');
INSERT INTO `t_logs` VALUES ('191', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580722997');
INSERT INTO `t_logs` VALUES ('192', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580744348');
INSERT INTO `t_logs` VALUES ('193', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580784863');
INSERT INTO `t_logs` VALUES ('194', '登录后台', 'admin用户', '1', '0:0:0:0:0:0:0:1', '1580797951');

-- ----------------------------
-- Table structure for t_metas
-- ----------------------------
DROP TABLE IF EXISTS `t_metas`;
CREATE TABLE `t_metas` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `contentType` varchar(32) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '0',
  `parent` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`mid`) USING BTREE,
  KEY `slug` (`slug`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '元数据表';

-- ----------------------------
-- Records of t_metas
-- ----------------------------
INSERT INTO `t_metas` VALUES ('49', '随笔', null, 'category', null, null, null, null);
INSERT INTO `t_metas` VALUES ('50', '随便写写', '随便写写', 'tag', null, null, null, null);
INSERT INTO `t_metas` VALUES ('51', '测试', '测试', 'tag', null, null, null, null);

-- ----------------------------
-- Table structure for t_options
-- ----------------------------
DROP TABLE IF EXISTS `t_options`;
CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '配置表';

-- ----------------------------
-- Records of t_options
-- ----------------------------
INSERT INTO `t_options` VALUES ('baidu_site_verification', '无', '');
INSERT INTO `t_options` VALUES ('google_site_verification', '无', '');
INSERT INTO `t_options` VALUES ('site_description', '个人博客', '');
INSERT INTO `t_options` VALUES ('site_record', '无', '');
INSERT INTO `t_options` VALUES ('site_title', 'wagic的个人博客', '');
INSERT INTO `t_options` VALUES ('social_csdn', '', '');
INSERT INTO `t_options` VALUES ('social_github', '', '');
INSERT INTO `t_options` VALUES ('social_jianshu', '', '');
INSERT INTO `t_options` VALUES ('social_resume', '', '');
INSERT INTO `t_options` VALUES ('social_twitter', '', '');
INSERT INTO `t_options` VALUES ('social_weibo', '', '');
INSERT INTO `t_options` VALUES ('social_zhihu', '', '');

-- ----------------------------
-- Table structure for t_relationships
-- ----------------------------
DROP TABLE IF EXISTS `t_relationships`;
CREATE TABLE `t_relationships` (
  `cid` int(10) unsigned NOT NULL,
  `mid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cid`,`mid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '文章与元数据关联表';

-- ----------------------------
-- Records of t_relationships
-- ----------------------------
INSERT INTO `t_relationships` VALUES ('27', '41');
INSERT INTO `t_relationships` VALUES ('27', '42');
INSERT INTO `t_relationships` VALUES ('27', '43');
INSERT INTO `t_relationships` VALUES ('27', '46');
INSERT INTO `t_relationships` VALUES ('28', '41');
INSERT INTO `t_relationships` VALUES ('28', '43');
INSERT INTO `t_relationships` VALUES ('29', '41');
INSERT INTO `t_relationships` VALUES ('29', '42');
INSERT INTO `t_relationships` VALUES ('29', '43');
INSERT INTO `t_relationships` VALUES ('30', '48');
INSERT INTO `t_relationships` VALUES ('31', '48');
INSERT INTO `t_relationships` VALUES ('32', '41');
INSERT INTO `t_relationships` VALUES ('32', '43');
INSERT INTO `t_relationships` VALUES ('33', '48');
INSERT INTO `t_relationships` VALUES ('34', '49');
INSERT INTO `t_relationships` VALUES ('34', '50');
INSERT INTO `t_relationships` VALUES ('34', '51');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `homeUrl` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) unsigned DEFAULT '0',
  `activated` int(10) unsigned DEFAULT '0',
  `logged` int(10) unsigned DEFAULT '0',
  `groupName` varchar(16) DEFAULT 'visitor',
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `name` (`username`) USING BTREE,
  UNIQUE KEY `mail` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT '用户表';

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('1', 'admin', 'a66abb5684c45962d887564f08346e8d', '376014243@qq.com', null, 'admin', '1490756162', '0', '0', 'visitor');
