/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : sh

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 25/06/2019 15:06:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `classID` int(8) NOT NULL,
  `className` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeID` int(4) NULL DEFAULT NULL,
  `studentNumber` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`classID`) USING BTREE,
  INDEX `FKgdw29rvcuq0okc9uccbsbw59g`(`collegeID`) USING BTREE,
  CONSTRAINT `FKgdw29rvcuq0okc9uccbsbw59g` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `class_college` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (814161, '计科一班', 8, 1);
INSERT INTO `class` VALUES (814162, '计科二班', 8, 2);
INSERT INTO `class` VALUES (914161, '电气一班', 9, 3);
INSERT INTO `class` VALUES (914162, '电气二班', 9, 2);
INSERT INTO `class` VALUES (1014161, '土木一班', 10, 2);
INSERT INTO `class` VALUES (1014162, '土木二班', 10, 2);

-- ----------------------------
-- Table structure for class_course
-- ----------------------------
DROP TABLE IF EXISTS `class_course`;
CREATE TABLE `class_course`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `classID` int(8) NOT NULL,
  `courseID` int(4) NOT NULL,
  `count` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `class1`(`classID`) USING BTREE,
  INDEX `course1`(`courseID`) USING BTREE,
  CONSTRAINT `class1` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class_course
-- ----------------------------
INSERT INTO `class_course` VALUES (1, 814161, 1, 3);
INSERT INTO `class_course` VALUES (2, 814162, 1, 3);
INSERT INTO `class_course` VALUES (3, 814161, 2, 1);
INSERT INTO `class_course` VALUES (4, 814162, 2, 2);
INSERT INTO `class_course` VALUES (5, 814161, 3, 0);
INSERT INTO `class_course` VALUES (6, 814162, 3, 0);
INSERT INTO `class_course` VALUES (7, 914161, 4, 1);
INSERT INTO `class_course` VALUES (8, 914162, 4, 1);
INSERT INTO `class_course` VALUES (9, 914161, 5, 1);
INSERT INTO `class_course` VALUES (10, 914162, 5, 1);
INSERT INTO `class_course` VALUES (11, 1014161, 6, 0);
INSERT INTO `class_course` VALUES (12, 1014162, 6, 0);
INSERT INTO `class_course` VALUES (13, 1014161, 7, 0);
INSERT INTO `class_course` VALUES (14, 1014162, 7, 0);

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `collegeID` int(4) NOT NULL,
  `collegeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`collegeID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (8, '计算机与数据科学学院');
INSERT INTO `college` VALUES (9, '电气与控制工程学院');
INSERT INTO `college` VALUES (10, '土木与交通工程学院');
INSERT INTO `college` VALUES (11, '管理学院');
INSERT INTO `college` VALUES (12, '市政与环境工程学院');
INSERT INTO `college` VALUES (13, '建筑与城市规划学院');
INSERT INTO `college` VALUES (14, '能源与建筑环境工程学院');
INSERT INTO `college` VALUES (15, '测绘与城市空间信息学院');
INSERT INTO `college` VALUES (16, '艺术设计学院');
INSERT INTO `college` VALUES (17, '材料与化工学院');
INSERT INTO `college` VALUES (18, '生命科学与工程学院');
INSERT INTO `college` VALUES (19, '数理学院');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `courseID` int(4) NOT NULL,
  `teacherID` int(8) NULL DEFAULT NULL,
  `courseName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `term` int(2) NULL DEFAULT NULL,
  PRIMARY KEY (`courseID`) USING BTREE,
  INDEX `course_teacher`(`teacherID`) USING BTREE,
  CONSTRAINT `course_teacher` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`teacherID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 34343434, 'Java高级应用', 2);
INSERT INTO `course` VALUES (2, 30080803, '编译', 2);
INSERT INTO `course` VALUES (3, 20161021, 'Linux系统', 1);
INSERT INTO `course` VALUES (4, 30081112, '嵌入式系统', 2);
INSERT INTO `course` VALUES (5, 30081113, '电力系统自动化', 2);
INSERT INTO `course` VALUES (6, 30081117, '工程制图', 2);
INSERT INTO `course` VALUES (7, 30081118, '工程测量', 2);

-- ----------------------------
-- Table structure for kcsj
-- ----------------------------
DROP TABLE IF EXISTS `kcsj`;
CREATE TABLE `kcsj`  (
  `kscjID` int(4) NOT NULL AUTO_INCREMENT,
  `studentID` int(8) NOT NULL,
  `courseID` int(4) NOT NULL,
  `kname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `getTime` datetime(0) NOT NULL,
  PRIMARY KEY (`kscjID`) USING BTREE,
  INDEX `kcsj_student`(`studentID`) USING BTREE,
  INDEX `kcsj_course`(`courseID`) USING BTREE,
  CONSTRAINT `kcsj_course` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `kcsj_student` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kcsj
-- ----------------------------
INSERT INTO `kcsj` VALUES (2, 81416252, 1, 'Java课程设计2', '良好', '2019-06-04 20:23:43');
INSERT INTO `kcsj` VALUES (3, 81416155, 2, '编译课程设计1', '良好', '2019-06-04 20:24:34');
INSERT INTO `kcsj` VALUES (4, 81416202, 2, '编译课程设计2', '未批改', '2019-06-06 14:46:01');
INSERT INTO `kcsj` VALUES (5, 81416252, 2, '编译课程设计3', '未批改', '2019-06-06 14:46:44');
INSERT INTO `kcsj` VALUES (6, 81416155, 1, 'Java课程设计3', '未批改', '2019-06-06 14:48:31');
INSERT INTO `kcsj` VALUES (7, 91416101, 4, '嵌入式系统课程设计1', '未批改', '2019-06-06 14:50:03');
INSERT INTO `kcsj` VALUES (8, 91416101, 5, '电力系统自动化课设1', '未批改', '2019-06-05 14:50:44');
INSERT INTO `kcsj` VALUES (9, 91416102, 4, '嵌入式系统课设2', '未批改', '2019-06-05 14:51:25');
INSERT INTO `kcsj` VALUES (10, 91416102, 5, '电力系统自动化课设2', '未批改', '2019-06-04 14:51:51');
INSERT INTO `kcsj` VALUES (14, 81416202, 1, 'Java课程设计', '未批改', '2019-06-14 12:14:10');
INSERT INTO `kcsj` VALUES (15, 81416252, 1, '081416202阙文斌实验十.doc', '优秀', '2019-06-24 20:44:23');
INSERT INTO `kcsj` VALUES (16, 81416155, 1, '0814162502阙文斌软件工程验四.doc', '优秀', '2019-06-24 21:08:14');
INSERT INTO `kcsj` VALUES (17, 81416155, 1, '2.doc', '优秀', '2019-06-24 22:37:41');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `classID` int(11) NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sage` int(11) NULL DEFAULT NULL,
  `ssex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`studentID`) USING BTREE,
  INDEX `FKan60jhgnghuvc1ux07re7qgj0`(`classID`) USING BTREE,
  CONSTRAINT `FKan60jhgnghuvc1ux07re7qgj0` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `student_class` FOREIGN KEY (`classID`) REFERENCES `class` (`classID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 101416203 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (81416155, 814161, '刘梦伦', 22, '男', '123456');
INSERT INTO `student` VALUES (81416202, 814162, '阙文斌', 21, '0', '123456');
INSERT INTO `student` VALUES (81416252, 814162, '施江涛', 23, '男', '123456');
INSERT INTO `student` VALUES (91416101, 914161, '孙子函', 20, '女', '123456');
INSERT INTO `student` VALUES (91416102, 914161, '李大江', 22, '男', '123456');
INSERT INTO `student` VALUES (91416103, 914161, '孙菲芸', 20, '女', '123456');
INSERT INTO `student` VALUES (91416201, 914162, '朱希亮', 22, '男', '123456');
INSERT INTO `student` VALUES (91416202, 914162, '汤绍箕', 22, '男', '123456');
INSERT INTO `student` VALUES (101416101, 1014161, '马连良', 22, '男', '123456');
INSERT INTO `student` VALUES (101416102, 1014161, '杨勇', 22, '男', '123456');
INSERT INTO `student` VALUES (101416201, 1014162, '??', 31, 'woman', '123');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `teacherID` int(8) NOT NULL,
  `teacherName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `collegeID` int(4) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(2) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`teacherID`) USING BTREE,
  INDEX `FKfnsew0qj2bfan3ctrrlcux5j`(`collegeID`) USING BTREE,
  CONSTRAINT `FKfnsew0qj2bfan3ctrrlcux5j` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teacher_college` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (20161021, '老师一', 8, '男', 45, '123456');
INSERT INTO `teacher` VALUES (30080803, '老师二', 8, '女', 40, '123456');
INSERT INTO `teacher` VALUES (30081112, '老师四', 9, '女', 40, '123456');
INSERT INTO `teacher` VALUES (30081113, '老师五', 9, '女', 40, '123456');
INSERT INTO `teacher` VALUES (30081117, '老师六', 10, '男', 45, '123456');
INSERT INTO `teacher` VALUES (30081118, '老师七', 10, '男', 45, '123456');
INSERT INTO `teacher` VALUES (30081119, 'test1', 14, '0', 40, '123456');
INSERT INTO `teacher` VALUES (34343434, '老师三', 8, '0', 40, '123456');
INSERT INTO `teacher` VALUES (300811110, 'test2', 14, 'man', 40, '123456');

-- ----------------------------
-- View structure for cc1
-- ----------------------------
DROP VIEW IF EXISTS `cc1`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cc1` AS select class_course.id,class.classID,class.className,class.studentNumber,class_course.courseID,class_course.count
from class,class_course
where class.classID=class_course.classID ;

-- ----------------------------
-- View structure for cl_co_kc
-- ----------------------------
DROP VIEW IF EXISTS `cl_co_kc`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `cl_co_kc` AS select class_course.classID,kcsj.courseID,kcsj.studentID,kcsj.kscjID,kcsj.kname,kcsj.getTime
from class_course,kcsj
where class_course.courseID=kcsj.courseID ;

-- ----------------------------
-- View structure for kcsj_course
-- ----------------------------
DROP VIEW IF EXISTS `kcsj_course`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `kcsj_course` AS select 
kcsj.studentID as studentID,
kcsj.kname as kname,
kcsj.score as score,
kcsj.getTime as getTime,
course.courseName as courseName,
kcsj.kscjID as id,
course.term as term 
from course,kcsj 
where course.courseID=kcsj.courseID ;

-- ----------------------------
-- View structure for student_kcsj
-- ----------------------------
DROP VIEW IF EXISTS `student_kcsj`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `student_kcsj` AS select student.classID,kcsj.courseID,kcsj.kname,kcsj.kscjID,kcsj.studentID,kcsj.getTime,kcsj.score from kcsj,student 

where student.studentID=kcsj.studentID ;

-- ----------------------------
-- View structure for st_cl_co
-- ----------------------------
DROP VIEW IF EXISTS `st_cl_co`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `st_cl_co` AS select cc1.id,course.courseID,course.courseName,course.term,cc1.classID,cc1.className,cc1.studentNumber,cc1.count
from cc1,course
where course.courseID=cc1.courseID ;

-- ----------------------------
-- View structure for teacher_course
-- ----------------------------
DROP VIEW IF EXISTS `teacher_course`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `teacher_course` AS select teacher.teacherID as 教师ID,
teacher.teacherName as 教师姓名,
course.courseID as 课程ID,
course.courseName as 课程名称
from course,teacher 
where course.teacherID=teacher.teacherID ;

SET FOREIGN_KEY_CHECKS = 1;
