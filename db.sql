/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - changwanbeihailvyou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`changwanbeihailvyou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `changwanbeihailvyou`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2020-12-24 03:36:16',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2020-12-24 03:36:16',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2020-12-24 03:36:16',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2020-12-24 03:36:16',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2020-12-24 03:36:16',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2020-12-24 03:36:16',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `discountprice` decimal(10,2) DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620377938246 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/changwanbeihailvyou/upload/1620374001027.jpg'),(2,'picture2','http://localhost:8080/changwanbeihailvyou/upload/1620374005956.jpg'),(3,'picture3','http://localhost:8080/changwanbeihailvyou/upload/1620374012640.jpg'),(6,'homepage','http://localhost:8080/changwanbeihailvyou/upload/1620374022896.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-07 15:21:44'),(2,'sex_types','性别',2,'女',NULL,'2021-05-07 15:21:44'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-05-07 15:21:45'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-05-07 15:21:45'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-05-07 15:21:45'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-05-07 15:21:45'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-05-07 15:21:45'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-05-07 15:21:45'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-05-07 15:21:45'),(10,'luxian_types','路线类型名称',3,'其他',NULL,'2021-05-07 15:21:45'),(11,'techan_types','特产类型名称',1,'特产1',NULL,'2021-05-07 15:21:45'),(12,'techan_types','特产类型名称',2,'特产2',NULL,'2021-05-07 15:21:45'),(13,'techan_types','特产类型名称',3,'特产3',NULL,'2021-05-07 15:21:45'),(14,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-05-07 15:21:45'),(15,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-05-07 15:21:45'),(18,'jiudian_types','酒店星级',1,'星级1',NULL,'2021-05-07 15:21:45'),(19,'jiudian_types','酒店星级',2,'星级2',NULL,'2021-05-07 15:21:45'),(20,'jiudian_types','酒店星级',3,'星级3',NULL,'2021-05-07 15:21:45');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名  Search111 ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型  Search111 ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级  Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '参考门票价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',2,3,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373836410.jpg','景点详情1\r\n',100,'2021-05-07 15:42:40'),(2,'景点2',3,1,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373827514.jpg','景点详情2\r\n',200,'2021-05-07 15:42:55'),(3,'景点3',1,2,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373820813.jpg','景点详情3\r\n',300,'2021-05-07 16:27:01');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`insert_time`,`create_time`) values (3,3,1,'2021-05-07 19:47:34','2021-05-07 19:47:34');

/*Table structure for table `jiudian` */

DROP TABLE IF EXISTS `jiudian`;

CREATE TABLE `jiudian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称   ',
  `jiudian_types` int(11) DEFAULT NULL COMMENT '酒店星级   ',
  `jiudian_weizhi` varchar(200) DEFAULT NULL COMMENT '酒店位置   ',
  `jiudian_photo` varchar(200) DEFAULT NULL COMMENT '酒店缩略图',
  `jiudian_new_money` int(11) DEFAULT NULL COMMENT '单价',
  `jiudian_content` text COMMENT '酒店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='酒店';

/*Data for the table `jiudian` */

insert  into `jiudian`(`id`,`jiudian_name`,`jiudian_types`,`jiudian_weizhi`,`jiudian_photo`,`jiudian_new_money`,`jiudian_content`,`create_time`) values (1,'酒店1',1,'酒店位置1','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373903735.jpg',100,'<img src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373903738.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373903738.jpg\">打发撒发\r\n','2021-04-03 20:30:32'),(2,'酒店2',2,'酒店位置2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373923039.jpg',200,'<img src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373923040.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373923040.jpg\">\r\n','2021-05-07 15:52:07'),(3,'酒店3',3,'酒店位置3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373938150.jpg',300,'<img src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373938150.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/changwanbeihailvyou/upload/1620373938150.jpg\">\r\n','2021-05-07 15:52:22');

/*Table structure for table `jiudian_collection` */

DROP TABLE IF EXISTS `jiudian_collection`;

CREATE TABLE `jiudian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='酒店收藏';

/*Data for the table `jiudian_collection` */

insert  into `jiudian_collection`(`id`,`jiudian_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,1,1,'2021-04-03 20:41:53','2021-04-03 20:41:53'),(2,1,2,'2021-04-03 21:09:14','2021-04-03 21:09:14');

/*Table structure for table `jiudian_liuyan` */

DROP TABLE IF EXISTS `jiudian_liuyan`;

CREATE TABLE `jiudian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiudian_id` int(11) DEFAULT NULL COMMENT '酒店id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `jiudian_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='酒店留言';

/*Data for the table `jiudian_liuyan` */

insert  into `jiudian_liuyan`(`id`,`jiudian_id`,`yonghu_id`,`jiudian_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,2,'99\r\n','77\r\n','2021-04-03 21:09:19','2021-04-03 21:09:19');

/*Table structure for table `meishi` */

DROP TABLE IF EXISTS `meishi`;

CREATE TABLE `meishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meishi_name` varchar(200) DEFAULT NULL COMMENT '美食名称  Search111 ',
  `meishi_photo` varchar(200) DEFAULT NULL COMMENT '美食图片',
  `meishi_new_money` int(11) DEFAULT NULL COMMENT '单价',
  `meishi_content` text COMMENT '美食详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1  show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='美食';

/*Data for the table `meishi` */

insert  into `meishi`(`id`,`meishi_name`,`meishi_photo`,`meishi_new_money`,`meishi_content`,`create_time`) values (2,'美食1','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373964406.jpg',100,'美食详情1\r\n','2021-05-07 15:52:49'),(3,'美食2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373974617.jpg',200,'美食详情2\r\n','2021-05-07 15:52:58'),(4,'美食3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373983431.jpg',300,'美食详情3\r\n','2021-05-07 15:53:08');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',2,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620374043144.jpg','2021-05-07 15:50:50','新闻详情1\r\n','2021-05-07 15:50:50'),(2,'新闻名称2',1,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620374037167.jpg','2021-05-07 15:51:02','新闻详情2\r\n','2021-05-07 15:51:02');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格/积分',
  `discountprice` decimal(10,2) DEFAULT '0.00' COMMENT '折扣价格',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总价格/总积分',
  `discounttotal` decimal(10,2) DEFAULT '0.00' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1,'2021-05-07 17:42:47','20215717424761357717','techan',1,3,'特产2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373777048.png',4,'200.00','200.00','800.00','800.00',1,'已完成','宇宙银河系金星1号'),(2,'2021-05-07 17:51:10','20215717511078026010','techan',1,4,'特产3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373796448.jpg',1,'300.00','300.00','300.00','300.00',1,'已完成','宇宙银河系金星1号'),(3,'2021-05-07 17:51:33','20215717513371919740','techan',1,4,'特产3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373796448.jpg',1,'300.00','300.00','300.00','300.00',1,'已退款','宇宙银河系金星1号'),(4,'2021-05-07 17:54:55','20215717545540836205','techan',1,3,'特产2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373777048.png',1,'200.00','200.00','200.00','200.00',1,'已发货','宇宙银河系金星1号'),(5,'2021-05-07 17:55:30','20215717553083735477','techan',1,3,'特产2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373777048.png',1,'200.00','200.00','200.00','200.00',1,'已发货','宇宙银河系金星1号'),(6,'2021-05-07 19:47:50','20215719475083416056','techan',1,4,'特产3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373796448.jpg',1,'300.00','300.00','300.00','300.00',1,'未支付','宇宙银河系金星1号'),(7,'2021-05-07 19:48:12','20215719481241595022','techan',1,3,'特产2','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373777048.png',1,'200.00','200.00','500.00','200.00',1,'已发货','宇宙银河系金星1号'),(8,'2021-05-07 19:48:12','20215719481242077935','techan',1,4,'特产3','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373796448.jpg',1,'300.00','300.00','500.00','300.00',1,'已支付','宇宙银河系金星1号');

/*Table structure for table `techan` */

DROP TABLE IF EXISTS `techan`;

CREATE TABLE `techan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `techan_name` varchar(200) DEFAULT NULL COMMENT '特产名称 Search111',
  `techan_types` int(11) DEFAULT NULL COMMENT '特产类型 Search111',
  `techan_photo` varchar(200) DEFAULT NULL COMMENT '特产图片',
  `techan_new_money` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `techan_content` text COMMENT '特产详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1  show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='特产';

/*Data for the table `techan` */

insert  into `techan`(`id`,`techan_name`,`techan_types`,`techan_photo`,`techan_new_money`,`techan_content`,`create_time`) values (2,'特产1',1,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373762376.jpg','100.00','特产详情1\r\n','2021-05-07 15:49:28'),(3,'特产2',2,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373777048.png','200.00','特产详情2\r\n','2021-05-07 15:49:44'),(4,'特产3',3,'http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373796448.jpg','300.00','特产详情3\r\n','2021-05-07 15:50:02');

/*Table structure for table `techan_collection` */

DROP TABLE IF EXISTS `techan_collection`;

CREATE TABLE `techan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `techan_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='特产收藏';

/*Data for the table `techan_collection` */

insert  into `techan_collection`(`id`,`techan_id`,`yonghu_id`,`insert_time`,`create_time`) values (3,2,1,'2021-05-07 19:49:30','2021-05-07 19:49:30');

/*Table structure for table `techan_liuyan` */

DROP TABLE IF EXISTS `techan_liuyan`;

CREATE TABLE `techan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `techan_id` int(11) DEFAULT NULL COMMENT '特产id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `techan_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='特产留言';

/*Data for the table `techan_liuyan` */

insert  into `techan_liuyan`(`id`,`techan_id`,`yonghu_id`,`techan_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (2,2,1,'132132',NULL,'2021-05-07 19:49:33','2021-05-07 19:49:33');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','lnhq6cgyivqmhfnnlxf8i8jnbos0p6dx','2021-05-07 15:17:28','2021-05-07 20:52:44'),(2,1,'111','yonghu','用户','t2yjpixeaqb9akijcc8jakr31rtxzwvj','2021-05-07 15:19:30','2021-05-07 20:47:29');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`new_money`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373747066.jpg','600.00','2021-05-07 15:39:40'),(2,'222','123456','用户2',2,'410882200011064872','17789944562','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620373739498.jpg','0.00','2021-05-07 15:39:58'),(4,'123','123456','123',1,'410882200011064873','17789944563','http://localhost:8080/changwanbeihailvyou/file/download?fileName=1620387656669.jpg','0.00','2021-05-07 19:40:59');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
