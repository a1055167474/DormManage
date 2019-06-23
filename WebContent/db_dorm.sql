/*
Navicat MySQL Data Transfer

Source Server         : DormManage
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_dorm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-06-23 19:58:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', '111', 'tom', '男', '123');

-- ----------------------------
-- Table structure for `t_dorm`
-- ----------------------------
DROP TABLE IF EXISTS `t_dorm`;
CREATE TABLE `t_dorm` (
  `dormId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(20) DEFAULT NULL,
  `dormType` varchar(20) DEFAULT NULL,
  `dormNumber` int(11) DEFAULT NULL,
  `dormTel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dorm
-- ----------------------------
INSERT INTO `t_dorm` VALUES ('1', '1', '220', '男', '6', '110');

-- ----------------------------
-- Table structure for `t_dormbuild`
-- ----------------------------
DROP TABLE IF EXISTS `t_dormbuild`;
CREATE TABLE `t_dormbuild` (
  `dormBuildId` int(11) NOT NULL AUTO_INCREMENT,
  `dormBuildName` varchar(20) DEFAULT NULL,
  `dormBuildDetail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dormBuildId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormbuild
-- ----------------------------
INSERT INTO `t_dormbuild` VALUES ('1', '1栋', '');
INSERT INTO `t_dormbuild` VALUES ('4', '2栋', '');
INSERT INTO `t_dormbuild` VALUES ('5', '3栋', '');
INSERT INTO `t_dormbuild` VALUES ('6', '4栋', '');
INSERT INTO `t_dormbuild` VALUES ('7', '5栋', '');
INSERT INTO `t_dormbuild` VALUES ('8', '6栋', '');

-- ----------------------------
-- Table structure for `t_dormmanager`
-- ----------------------------
DROP TABLE IF EXISTS `t_dormmanager`;
CREATE TABLE `t_dormmanager` (
  `dormManId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dormManId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dormmanager
-- ----------------------------
INSERT INTO `t_dormmanager` VALUES ('2', 'manager2', '123', '4', 'tre', '男', '123');
INSERT INTO `t_dormmanager` VALUES ('3', 'manager3', '123', '1', 'fgdf', '女', '123');
INSERT INTO `t_dormmanager` VALUES ('4', 'manager4', '123', '5', 'ytr', '男', '123');
INSERT INTO `t_dormmanager` VALUES ('5', 'manager5', '123', '1', 'vcb', '男', '123');
INSERT INTO `t_dormmanager` VALUES ('7', 'manager6', '123', '0', 'sdf', '女', '123');
INSERT INTO `t_dormmanager` VALUES ('8', 'manager1', '123', '6', 'ewr', '男', '123');
INSERT INTO `t_dormmanager` VALUES ('9', 'manager7', '123', '7', 'ret', '女', '123');

-- ----------------------------
-- Table structure for `t_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `recordId` int(11) NOT NULL AUTO_INCREMENT,
  `studentNumber` varchar(20) DEFAULT NULL,
  `studentName` varchar(30) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('1', '002', '李四', '4', '120', '2019-06-05', '--');
INSERT INTO `t_record` VALUES ('3', '007', 'qwe', '1', '221', '2019-06-07', '--');
INSERT INTO `t_record` VALUES ('4', '005', '赵六', '4', '220', '2019-06-01', '--');
INSERT INTO `t_record` VALUES ('5', '006', 'abc', '4', '111', '2019-05-16', '---');
INSERT INTO `t_record` VALUES ('6', '001', 'rft', '1', '111', '2019-06-18', '--');
INSERT INTO `t_record` VALUES ('7', '004', '张三', '6', '220', '2019-06-19', '--');
INSERT INTO `t_record` VALUES ('8', '002', '李四', '4', '120', '2019-06-23', 'sad');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `studentId` int(11) NOT NULL AUTO_INCREMENT,
  `stuNum` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dormBuildId` int(11) DEFAULT NULL,
  `dormName` varchar(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('2', '002', '123', '李四', '4', '120', '男', '321');
INSERT INTO `t_student` VALUES ('3', '003', '123', '王五', '5', '201', '男', '223');
INSERT INTO `t_student` VALUES ('4', '004', '123', '张三', '6', '220', '女', '134');
INSERT INTO `t_student` VALUES ('5', '005', '123', '赵六', '4', '220', '女', '123');
INSERT INTO `t_student` VALUES ('6', '006', '123', 'abc', '4', '111', '女', '111');
INSERT INTO `t_student` VALUES ('9', '007', '123', 'qwe', '1', '221', '男', '123');
INSERT INTO `t_student` VALUES ('28', '001', '123', 'rft', '1', '111', '男', '123');
INSERT INTO `t_student` VALUES ('29', '008', '123', 'asd', '6', '123', '男', '123');
INSERT INTO `t_student` VALUES ('30', '009', '123', 'gfd', '5', '123', '男', '123');
INSERT INTO `t_student` VALUES ('31', '010', '123', 'asd', '4', '222', '男', '111');
INSERT INTO `t_student` VALUES ('32', '111', '111', '111', '4', '111', '男', '111');
INSERT INTO `t_student` VALUES ('33', '222', '222', '222', '4', '222', '男', '222');
INSERT INTO `t_student` VALUES ('34', '333', '333', '333', '4', '333', '女', '333');
INSERT INTO `t_student` VALUES ('35', '444', '444', '444', '4', '444', '女', '444');
INSERT INTO `t_student` VALUES ('36', '555', '555', '555', '7', '555', '女', '555');
INSERT INTO `t_student` VALUES ('37', '666', '666', '666', '6', '666', '男', '666');
INSERT INTO `t_student` VALUES ('38', '888', '888', '888', '1', '888', '男', '888');
INSERT INTO `t_student` VALUES ('39', '778', '778', '778', '1', '778', '男', '778');
