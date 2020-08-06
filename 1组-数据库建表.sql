CREATE DATABASE `imooc` ;

USE `imooc`;

/*默认提供管理员账号 账号为admin@qq.com 密码为ROOTroot123 其余账号及信息需手动注册*/

DROP TABLE IF EXISTS `homework_teacher`;

CREATE TABLE `homework_teacher` (
  `Homework_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Homework_name` VARCHAR(30) NOT NULL,
  `Lesson_name` VARCHAR(30) NOT NULL,
  `Teacher_name` VARCHAR(30) NOT NULL,
  `Homework_file` VARCHAR(100) DEFAULT NULL,
  `Homework_description` VARCHAR(100) DEFAULT NULL,
  `Homework_create_time` DATE DEFAULT NULL,
  PRIMARY KEY (`Homework_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `homework_teacher` */

/*Table structure for table `learning_materials` */
`user`
DROP TABLE IF EXISTS `learning_materials`;

CREATE TABLE `learning_materials` (
  `Lm_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Lm_name` VARCHAR(30) DEFAULT NULL,
  `Upload_user_name` VARCHAR(30) DEFAULT NULL,
  `Lesson_name` VARCHAR(30) DEFAULT NULL,
  `Lm_file` VARCHAR(100) DEFAULT NULL,
  `Lm_description` VARCHAR(100) DEFAULT NULL,
  `Lm_create_time` DATE DEFAULT NULL,
  PRIMARY KEY (`Lm_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `learning_materials` */

/*Table structure for table `lesson_selected` */

DROP TABLE IF EXISTS `lesson_selected`;

CREATE TABLE `lesson_selected` (
  `User_name` VARCHAR(30) NOT NULL,
  `Lesson_name` VARCHAR(30) NOT NULL,
  `Finish_account` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `lesson_selected` */

/*Table structure for table `test_paper` */

DROP TABLE IF EXISTS `test_paper`;

CREATE TABLE `test_paper` (
  `Test_id` INT(11) NOT NULL,
  `Problem_number` INT(11) NOT NULL,
  `Student_name` VARCHAR(30) NOT NULL,
  `Answer_type` INT(11) DEFAULT NULL,
  `String_answer` VARCHAR(300) DEFAULT NULL,
  `Pic_answer` VARCHAR(100) DEFAULT NULL,
  `Teacher_name` VARCHAR(30) DEFAULT NULL,
  `Test_score` DOUBLE DEFAULT NULL,
  `Test_comment` VARCHAR(100) DEFAULT NULL
  
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `problem_id` INT PRIMARY KEY AUTO_INCREMENT,
  `Test_id` INT(11) DEFAULT NULL,
  `Problem_number` INT(11) DEFAULT NULL,
  `Problem_type` INT(11) DEFAULT NULL,
  `Problem_photo` VARCHAR(100) DEFAULT NULL,
  `Problem_answer` VARCHAR(100) DEFAULT NULL,
  `Problem_score` DOUBLE DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `test` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `User_id` INT(11) NOT NULL AUTO_INCREMENT,
  `User_name` VARCHAR(30) DEFAULT NULL,
  `User_type` INT(11) DEFAULT NULL,
  `User_class` INT(11) DEFAULT NULL,
  `Student_id` INT(11) DEFAULT NULL,
  `User_email` VARCHAR(50) DEFAULT NULL,
  `Password` VARCHAR(30) DEFAULT NULL,
  `User_photo` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

INSERT  INTO `user`(`User_id`,`User_name`,`User_type`,`User_class`,`Student_id`,`User_email`,`Password`,`User_photo`) 
VALUES (1,'管理员',0,100418,10041818,'admin@qq.com','ROOTroot123','a.jpg');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `Video_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Video_name` VARCHAR(30) DEFAULT NULL,
  `Upload_user_name` VARCHAR(30) DEFAULT NULL,
  `Lesson_name` VARCHAR(30) DEFAULT NULL,
  `Video_file` VARCHAR(100) DEFAULT NULL,
  `Video_description` VARCHAR(100) DEFAULT NULL,
  `Video_create_time` DATE DEFAULT NULL,
  PRIMARY KEY (`Video_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `lesson`;

CREATE TABLE lesson(
Lesson_id INT PRIMARY KEY AUTO_INCREMENT, 
Lesson_name VARCHAR(30), 
Teacher_name VARCHAR(20),
Students_number VARCHAR(30), 
Videos_number VARCHAR(20), 
Lesson_photo VARCHAR(100), 
Description VARCHAR(100), 
Lesson_create_time DATE,
flag VARCHAR(10)
);

CREATE TABLE test_total(
test_id INT PRIMARY KEY AUTO_INCREMENT,
test_name VARCHAR(30),
lesson_name VARCHAR(30),
teacher_name VARCHAR(10),
test_password VARCHAR(30),
begin_time DATETIME,
end_time DATETIME);

CREATE TABLE `homework_student` (

  `Student_name` VARCHAR(30) DEFAULT NULL,

  `Homework_id` INT(11) DEFAULT NULL,

  `Homework_name` VARCHAR(30) DEFAULT NULL,

  `Teacher_name` VARCHAR(30) DEFAULT NULL,

  `Submit_file` VARCHAR(100) DEFAULT NULL,

  `Homework_score` DOUBLE DEFAULT NULL,

  `Homework_comment` VARCHAR(50) DEFAULT NULL

) ENGINE=INNODB DEFAULT CHARSET=utf8;

