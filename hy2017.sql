-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 �?10 �?11 �?21:49
-- 服务器版本: 5.5.38
-- PHP 版本: 5.6.0beta4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `hy2017`
--

-- --------------------------------------------------------

--
-- 表的结构 `hy_admin`
--

CREATE TABLE IF NOT EXISTS `hy_admin` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `hy_admin`
--

INSERT INTO `hy_admin` (`id`, `username`, `password`) VALUES
(1, 'root', '8c28874821f20322f4206c1a5f039dae'),
(6, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'user', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `hy_admin_log`
--

CREATE TABLE IF NOT EXISTS `hy_admin_log` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `admin_id` mediumint(8) unsigned NOT NULL COMMENT '管理员id',
  `logintime` datetime NOT NULL COMMENT '添加时间',
  `ip` varchar(50) NOT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='管理员登录日志' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `hy_admin_log`
--

INSERT INTO `hy_admin_log` (`id`, `admin_id`, `logintime`, `ip`) VALUES
(1, 1, '2017-03-16 11:59:09', '127.0.0.1'),
(2, 6, '2017-03-16 12:03:40', '127.0.0.1'),
(3, 16, '2017-03-16 12:05:39', '127.0.0.1'),
(4, 1, '2017-03-16 12:05:58', '127.0.0.1'),
(5, 6, '2017-03-16 12:06:23', '127.0.0.1'),
(6, 6, '2017-03-16 12:08:51', '127.0.0.1'),
(7, 6, '2017-03-16 12:10:20', '127.0.0.1'),
(8, 16, '2017-03-16 12:10:44', '127.0.0.1'),
(9, 1, '2017-03-16 12:11:01', '127.0.0.1'),
(10, 6, '2017-03-16 12:45:37', '127.0.0.1'),
(11, 1, '2017-03-16 12:52:47', '127.0.0.1'),
(12, 1, '2017-03-22 14:23:34', '127.0.0.1'),
(13, 1, '2017-10-11 21:37:06', '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `hy_admin_role`
--

CREATE TABLE IF NOT EXISTS `hy_admin_role` (
  `admin_id` mediumint(8) unsigned NOT NULL COMMENT '管理员id',
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色id',
  KEY `admin_id` (`admin_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员角色';

--
-- 转存表中的数据 `hy_admin_role`
--

INSERT INTO `hy_admin_role` (`admin_id`, `role_id`) VALUES
(16, 23),
(6, 22);

-- --------------------------------------------------------

--
-- 表的结构 `hy_banner`
--

CREATE TABLE IF NOT EXISTS `hy_banner` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `img` varchar(150) NOT NULL DEFAULT '' COMMENT 'banner路径',
  `states` int(11) NOT NULL DEFAULT '1' COMMENT '是否使用，1表示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='banner表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `hy_banner`
--

INSERT INTO `hy_banner` (`id`, `img`, `states`) VALUES
(2, '20170304/31c4bdc37b872e0c6f02f5e7182cee2a.jpg', 1),
(5, '20170304/382cedb280054032b5ec7224c154e807.jpg', 1),
(6, '20170304/65d49496f6a1b72e67b3527505389dfc.jpg', 1),
(7, '20170304/55985615f08e6ad0020fbca9eedd7472.png', 1),
(8, '20170308/320f1d407842be570ebe3e9f1e6522ff.jpg', 1),
(9, '20170308/383327beab552d4ab59dbec8c00b5a02.jpg', 1),
(10, '20170308/f4d9e47a3850eaef55c4abef30396a3f.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hy_culture`
--

CREATE TABLE IF NOT EXISTS `hy_culture` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `content` longtext COMMENT '文化内容',
  `type_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文化类型内容表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `hy_culture`
--

INSERT INTO `hy_culture` (`id`, `content`, `type_id`) VALUES
(1, '华云网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。华捷网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。公司简介														', 2),
(2, '华云网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。企业文化', 3),
(3, '华云网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。	荣誉资质', 4),
(5, '发展历史', 8);

-- --------------------------------------------------------

--
-- 表的结构 `hy_culture_type`
--

CREATE TABLE IF NOT EXISTS `hy_culture_type` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `type_name` varchar(150) NOT NULL COMMENT '文化类型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文化类型表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `hy_culture_type`
--

INSERT INTO `hy_culture_type` (`id`, `type_name`) VALUES
(2, '公司简介'),
(3, '企业文化'),
(4, '荣誉资质'),
(8, '发展历史');

-- --------------------------------------------------------

--
-- 表的结构 `hy_links`
--

CREATE TABLE IF NOT EXISTS `hy_links` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(150) NOT NULL COMMENT '名称',
  `url` varchar(150) NOT NULL COMMENT '链接',
  `states` enum('1','0') NOT NULL DEFAULT '1' COMMENT '是否使用，默认使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='友情链接表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `hy_links`
--

INSERT INTO `hy_links` (`id`, `name`, `url`, `states`) VALUES
(2, '百度', 'http://www.baidu.com/', '1'),
(3, 'hao123网址之家', 'http://www.hao123.com/', '1'),
(4, '华云工作室', 'http://www.hy2017.com/', '1');

-- --------------------------------------------------------

--
-- 表的结构 `hy_message`
--

CREATE TABLE IF NOT EXISTS `hy_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(150) NOT NULL COMMENT '姓名',
  `content` longtext NOT NULL COMMENT '新闻内容',
  `tel` varchar(150) NOT NULL DEFAULT '' COMMENT '电话',
  `email` varchar(150) NOT NULL DEFAULT '' COMMENT '邮箱',
  `addtime` datetime NOT NULL COMMENT '留言时间',
  `states` int(11) NOT NULL DEFAULT '1' COMMENT '是否已读了(0表示已读)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='留言表' AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `hy_message`
--

INSERT INTO `hy_message` (`id`, `name`, `content`, `tel`, `email`, `addtime`, `states`) VALUES
(1, '职业第三者', '请问你们可以做网站吗？', '18702044207', '1920853199@qq.com', '2017-03-02 00:20:00', 0),
(2, '烟雨', '你们是干嘛的？', '18702044207', '491126240@qq.com', '2017-03-23 08:29:38', 0),
(3, '兰花儿', '接单吗？', '18824784565', '491126240@qq.com', '2017-03-04 16:13:16', 0),
(4, '职业第三者', '放学别走！！', '18702044207', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(5, '兰花人', '谁走谁是狗！', '18702044207', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(6, '镇镇', '你们这是要打架吗！？', '18824784565', '491126240@qq.com', '0000-00-00 00:00:00', 0),
(7, '业业', '打往死里打', '12598756844', '491126240@qq.com', '0000-00-00 00:00:00', 0),
(8, '丰丰', '你们牛逼', '18888888880', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(9, '茵茵', '吓到我了', '18888888880', '208323263@qq.com', '0000-00-00 00:00:00', 0),
(10, '鹏鹏', '你们在干嘛', '18888888880', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(11, '鹏鹏', '你们在干嘛', '18888888880', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(12, '鹏鹏', '你们在干嘛', '18888888880', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(13, 'aaa', 'aaa', '18702044207', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(14, 'text02', 'asdarfa', '18824784565', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(15, '职业第三者', '我又来了', '18824784565', 'aa@qq.com', '0000-00-00 00:00:00', 0),
(16, 'aaa', 'aerqarwa', '18824784565', '1920853199@qq.com', '0000-00-00 00:00:00', 0),
(17, 'aaa', 'ASDRAWEQA', '18888888880A', 'aa@qq.com', '0000-00-00 00:00:00', 0),
(18, 'text02', 'sdaedadwe', '18702044207', '1920853199@qq.com', '2017-03-09 11:41:22', 0),
(19, '职业第三者', '20170316', '18888888880', 'aa@qq.com', '2017-03-16 10:36:41', 0),
(20, 'AAA', 'aaa', '18888888880', 'aa@qq.com', '2017-03-16 10:44:58', 0),
(21, 'sistalk', 'ssss', '12345667890', 'chenli@banggood.com', '2017-10-11 21:35:46', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hy_nav`
--

CREATE TABLE IF NOT EXISTS `hy_nav` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `title` varchar(150) NOT NULL COMMENT '导航名称',
  `url` varchar(150) NOT NULL COMMENT '导航链接',
  `states` enum('1','0') NOT NULL DEFAULT '1' COMMENT '是否使用，默认使用',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类的Id,0:顶级分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='导航表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `hy_nav`
--

INSERT INTO `hy_nav` (`id`, `title`, `url`, `states`, `parent_id`) VALUES
(1, '首页', '/index.php/home/index/index', '1', 0),
(3, '华云服务', 'http://www.hy2017.com/admin', '1', 0),
(4, '新闻资讯', 'http://www.hy2017.com/admin', '1', 0),
(5, '华云家园', 'http://www.hy2017.com/admin', '1', 0),
(6, '关于我们', 'http://www.hy2017.com/admin', '1', 0),
(7, '联系我们', 'http://www.hy2017.com/admin', '1', 0),
(8, '公司简介', 'http://www.hy2017.com/admin', '1', 6),
(9, '企业文化', 'http://www.hy2017.com/admin', '1', 6),
(10, '荣誉资质', 'http://www.hy2017.com/admin', '1', 6),
(11, '发展历史', 'http://www.hy2017.com/admin', '1', 6);

-- --------------------------------------------------------

--
-- 表的结构 `hy_news`
--

CREATE TABLE IF NOT EXISTS `hy_news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `title` varchar(150) NOT NULL COMMENT '新闻题目',
  `news_desc` longtext COMMENT '新闻描述',
  `content` longtext COMMENT '新闻内容',
  `img` varchar(150) NOT NULL DEFAULT '' COMMENT '原图',
  `is_on_sale` enum('1','0') NOT NULL DEFAULT '1' COMMENT '是否发布',
  `is_delete` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否放到回收站',
  `addtime` datetime NOT NULL COMMENT '添加时间',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '1' COMMENT '发布者ID',
  `cat_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类Id',
  `sum` int(11) NOT NULL DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`id`),
  KEY `addtime` (`addtime`),
  KEY `cat_id` (`cat_id`),
  KEY `is_on_sale` (`is_on_sale`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='新闻表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `hy_news`
--

INSERT INTO `hy_news` (`id`, `title`, `news_desc`, `content`, `img`, `is_on_sale`, `is_delete`, `addtime`, `admin_id`, `cat_id`, `sum`) VALUES
(1, '北京地铁骂人男：全世界欠你爸一个避孕套', '华捷网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。', '<div class="rich_media_content " id="js_content" style="margin: 0px; padding: 0px; overflow: hidden; color: rgb(62, 62, 62); position: relative; min-height: 350px; font-family: &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 25.6000003814697px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">看到北京地铁男子辱骂两个女生的视频，我炸毛了。2017年最傻逼的人，这个哥们认了第二，绝对没有人敢认第一。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">事情发生在前天，在北京地铁十号线上，两个创业推广扫码的姑娘与一男子起了争执，男子全程脏字不断，并抢夺姑娘的手机，甚至在列车门即将关闭时一把将姑娘推出车外。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">最让人觉得不可思议的地方在于——<strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">全车厢内的人。竟然。全都。他妈。保持。沉默</strong>。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">起初，这条视频只在一些北京的营销账号上转发，大家的关注点都在“这傻逼是不是冒充北京人”之类的，随后，经过薛之谦的助攻，事件迅速成为整个微博的焦点。<br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="http://mmbiz.qpic.cn/mmbiz_jpg/2efoRpziaxMxApLG8fnSlfKPdIGlLKVD3BGMSVFXgvZLqfibibWaEWpCRjbI6TRKLfMlwaDoAibY0JtW06v15gEjicA/640?wx_fmt=jpeg&tp=webp&wxfrom=5&wx_lazy=1" style="margin: 0px; padding: 0px; height: auto !important; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; width: auto !important; visibility: visible !important;"/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">随后该男子在微博被人人肉出，并删除了所有照片和记录，只留下一条说明：<br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAIAAACQd1PeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkJDQzA1MTVGNkE2MjExRTRBRjEzODVCM0Q0NEVFMjFBIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkJDQzA1MTYwNkE2MjExRTRBRjEzODVCM0Q0NEVFMjFBIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QkNDMDUxNUQ2QTYyMTFFNEFGMTM4NUIzRDQ0RUUyMUEiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QkNDMDUxNUU2QTYyMTFFNEFGMTM4NUIzRDQ0RUUyMUEiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6p+a6fAAAAD0lEQVR42mJ89/Y1QIABAAWXAsgVS/hWAAAAAElFTkSuQmCC" style="margin: 0px; padding: 0px; height: 629.525px !important; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; width: 596px !important; visibility: visible !important;"/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">什么叫双标狗朋友们！这就是！自己一口一个X你妈，轮到自己了，你们骂我随便骂，别带上我家人朋友。我：目瞪口呆.JPG</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">是不是北京人其实已经不重要了，或者说根本就不要，重要的是他极端恶劣的言行，满嘴喷粪，老韩听了都想打人！</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">痞人周鱼说，「说什么前因后果？不扫你拒绝就好了，她们再骚扰你的话你可以报警。一口一个“你妈逼”，张口就是“你们这些外地逼”，除了给北京丢脸还有啥。现在你知道让别人骂你别带上家人了，那俩女孩家人就不是家人了？<span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(0, 122, 170);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">真是全世界都欠你爸一个避孕套。</strong></span>」</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">真的。当时边看视频，我就想边摔手机了，我无法想象，在北京，在首都，青天白日，朗朗乾坤，居然还有这种傻逼出现在大庭广众之下，而周围的人，居然都感觉在看电影。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(136, 136, 136); font-size: 12px;"><br/></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><section><section></section><section><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: inherit;">2</span></strong></section></section><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">我们再来捋一遍剧情，划一下重点。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">这几年因为创业潮，催生出了很多地推人员，你可能也遇见过，尤其是在科技园区，CBD，地铁站，电影院...会有人让你拿出手机扫一扫二维码，关注一下他们的微信号，或者下载一下APP，然后送你一个小礼品啥的。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">其实大部分让你扫码的人，都非常有礼貌，你说不扫，或者没有兴趣，一般不会过多的纠缠于你。再说要是创业容易，获取用户容易，谁会在风里雨里一直等你啊。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">然后北京地铁上，视频中的二逼男就遇到了这样的地推人员，随后发生了争执，该男子全程在辱骂两个女生，用最脏最刻薄的词，随后放地图炮，夺人手机，在地铁门即将关上的刹那，将女生推出车门。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">而整个车厢的人，沉默不语。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">于是，<span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(51, 51, 51);">整个事件激发了民众的大面积愤怒。</span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(51, 51, 51);"><br/></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><section><section></section><section><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: inherit;">3</span></strong></section></section><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">这件事最让人气愤的，除了该男子骂人+地域黑＋抢东西＋打人之外，还有路人的冷漠。<br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">很奇怪，那些坐着的人，尤其是那些男的，居然没有一个站起来的。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">想起前段时间微博上不是还流传那个，在东北公交车上，一个男子猥亵小姑娘，用语言恐吓，最后被一群爷们打得头破血流，跪地求饶，真是高下立判了。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">真特么不解气。。。。。。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">很多人说，<span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(0, 122, 170);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">最热心的永远是网友，最冷漠的永远是路人，也不知道是网友不出门，还是路人不上网。</strong></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">键盘侠们，一个个不挺牛逼的么？</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">今天在朋友圈抵制这个，明天在微博上抵制那个，但是在现实生活中，遇到任何需要仗义执言，拔刀相助的地方，立马就怂了。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(136, 136, 136); font-size: 12px;"><br/></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><section><section></section><section><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: inherit;">4</span></strong></section></section><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">这样的事情出现已经不是一两次了。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">还记得去年4月发生的和颐酒店事件吗？叫弯弯的女孩在酒店的电梯口，被陌生男子跟踪，并被拉住头发强行拖拽，而酒店保安全程目睹该陌生男子施暴，却没有半点阻止。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">还记得东莞女子被捅杀事件吗？一名女子被男子用水果刀捅伤，120赶到场后，该女子抢救无效死亡。有人用手机清楚拍下了男子行凶的部分过程，却没有及时阻止歹徒行凶。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">还记得马路上的老太太吗？学校里的霸凌吗？公交车上的小偷，猥琐的男人吗？</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">你可能会说，好人没有义务一定要帮助别人吧？毕竟现在做好人的成本和代价都太高了，反而做个傻逼挺简单的。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">那你肯定不会希望有一天，你，你的朋友，你的家人，你认识的任何一人，在周围坐满人的公共空间里，被一个你看不起的low逼，傻逼，二逼，羞辱，却没有任何反击余地，而边上全是冷漠的面孔吧。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">的确，好人没有义务一定要和傻逼正面交锋，但是作为一个四肢健全，心智成熟的成年人，起码可以在保证自己利益不受损的情况下，选择帮助别人的方式。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"></strong></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><section><section></section><section><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: inherit;">5</span></strong></section></section><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; white-space: normal;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; font-size: 16px; white-space: normal; color: rgb(62, 62, 62); background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">我没资格批评谁，因为我大概也当过沉默的路人。远离危险，明哲保身是大多数人的选择。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">我是一个不太会跟陌生人发生冲突的人，尤其是没有文化的陌生人，因为在我看来，没有文化的杀气重，一言不合就能跟你拼命。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">他反正贱命一条不值钱，但是你还有家庭，还有事业，还有很多需要顾忌的地方。<br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">但是，我想说但是，在这样一个场合，光天化日，众目睽睽之下，在确保自己不会出现生命危险的情况之下，居然都没人能够站起来，哪怕是说一句公道话，的确让人心寒。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">我们都怪这个社会冷漠，但我们在有些时候，的确是这种冷漠的一分子。</strong></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><section><section></section><section><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: inherit;">6</span></strong></section></section><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"></strong></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">很多人都知道旁观者效应，明白当一件事情发生时，身边聚集的旁观者越多，那么任何一个旁观者提供帮助的可能性就会减少。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">但是你知道，<span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(0, 122, 170);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">在同样一个社会里，当一个好人受到伤害，那么其他好人也有可能会遭殃。</strong></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">总得有人说话不是么？总得有人站起来不是么？你不能什么事情都等到别人搞定了，风气改善完了，才来享受胜利果实。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">总是指望来别人来改善这个世界，为什么不自己改造这个世界，让其慢慢变成自己喜欢的样子呢？人生没有那么多坐享其成的事情。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">尼采在《善恶的彼岸》说：</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(0, 122, 170);"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;">“当你凝望深渊时，深渊也在凝望你。”</strong></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">共勉。</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em; color: rgb(62, 62, 62); font-size: 16px; white-space: normal; background-color: rgb(255, 255, 255);">最后，我希望尽快可以看到该男子痛哭流涕的后续，请大家一起期待，搓手等！</p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><span style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; color: rgb(136, 136, 136); font-size: 12px;"><br/></span></p><p style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; clear: both; min-height: 1em;"><br/></p></div><div class="rich_media_tool" id="js_toobar3" style="margin: 0px; padding: 15px 0px 0px; font-size: 14px; overflow: hidden; line-height: 32px; color: rgb(0, 0, 0); font-family: &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><br/></div><p><br/></p>', '', '1', '0', '2017-03-04 01:59:30', 1, 11, 35),
(2, '华捷网络有限公司', '华捷网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。', '<p>华捷网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。</p>', '', '1', '0', '2017-03-28 16:06:24', 1, 11, 25),
(3, '爱情不容有错，即使错了那就重来', '华捷网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。', '<ul class="infos"><p>进一好友空间，再一次看到她置顶的那一篇《他和她的故事》爱情在他俩的生活中经历了不少分分合合，但最后俩人还是走在了一起。当今天再一次阅读的时候，我没有第一次那么感性，我注重他们俩曲折的过程，其中出现过第三者...</p><p>如果我是她，对于他当初的脚踏两只船、尽管仍然说爱但亦然离开而选择别人，我很肯定我是无法原谅他的，也许你会说是因为我不是真正爱他吧，我也不知道，这是不是因为爱得不够深，不能包容他的过错...我是很小气的人，就像很多人说的那样，一年365天，你364天对她好，只要有一天对她不好，她也会在n天也许n年后提出来，你哪天对我不好。</p><p><img src="http://www.hy2017.com/index.php/home/newsaction/images/e5e39b1148811261c78b933805d07232.png" alt="分手"/>aaaaaaa</p><p>大学时跟我分分合合的男朋友，却是这么一个爱犯错的人。跟他交往，会有意无意的伤到我自尊，至今我也那么认为那伤害了我的自尊。在我骨子里有一种骄傲和很强的自尊，而他却偏偏伤了一次又一次。他的朋友都说我小气，我至今也觉得如果我不小气，那就是我傻！</p><p>我认为大学时的恋爱，是毕业前进入社会的一次恋爱实习。参杂了很多的疑问和抉择。就像工作，从销售到文员到编辑到技术员，最后才知道什么工作适合自己。找一个人陪你恋爱实习，也许很简单，也许很难。</p><p>这么多年过去了，当初分手都会舍不得那段4年的感情，后来也是时间煮了这段记忆。现在我们各自有了各自的生活，他也找到了他心仪的女孩，我能感觉出他们俩很相爱，当初最后一次分手的过渡时间，无论有多么的不舍与难熬，现在看看都是正确的。</p><p><img src="http://www.hy2017.com/index.php/home/newsaction/images/1f8aea2172f6eb987c3de3f7ba474eb1.png" alt="分手"/></p><p>为何我会毅然放弃，因为在我心里，那些过去的伤，那些不好的记忆永远都抹不去，我无法面对，哪怕是当初妥协了，我想最后我也一定会再一次选择放弃....</p><p>我觉得爱情也可以重新来过，只是换换主角罢了...</p></ul><p><br/></p>', '20170310/1a52aed1e3c3debfefdcab6bc14fc820.jpg', '0', '0', '2017-03-21 09:51:22', 1, 6, 39);

-- --------------------------------------------------------

--
-- 表的结构 `hy_news_cat`
--

CREATE TABLE IF NOT EXISTS `hy_news_cat` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `cat_name` varchar(30) NOT NULL COMMENT '��������',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '�ϼ������Id,0:��������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='���ŷ����' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `hy_news_cat`
--

INSERT INTO `hy_news_cat` (`id`, `cat_name`, `parent_id`) VALUES
(3, '国内新闻', 0),
(4, '大家说国外新闻', 0),
(6, '国际新闻', 0),
(7, '世界新闻', 0),
(8, '仑头新闻', 0),
(9, '仑头小新闻', 0),
(10, '一点资讯', 0),
(11, '华云活动', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hy_privilege`
--

CREATE TABLE IF NOT EXISTS `hy_privilege` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `pri_name` varchar(30) NOT NULL COMMENT '权限名称',
  `module_name` varchar(30) NOT NULL DEFAULT '' COMMENT '模块名称',
  `controller_name` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器名称',
  `action_name` varchar(30) NOT NULL DEFAULT '' COMMENT '方法名称',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级权限Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='权限' AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `hy_privilege`
--

INSERT INTO `hy_privilege` (`id`, `pri_name`, `module_name`, `controller_name`, `action_name`, `parent_id`) VALUES
(1, '新闻中心', '', '', '', 0),
(2, '关于我们', '', '', '', 0),
(3, 'RBAC', '', '', '', 0),
(4, '系统参数设定', '', '', '', 0),
(5, '友情链接模块', 'Admin', 'Linksaction', 'lst', 4),
(6, '导航模块', 'Admin', 'Navaction', 'lst', 4),
(7, 'Banner模块', 'Admin', 'Banneraction', 'lst', 4),
(8, '信息', '', '', '', 0),
(10, '新闻列表', 'Admin', 'Newsaction', 'lst', 1),
(12, '修改新闻', 'Admin', 'Newsaction', 'edit', 10),
(13, '删除新闻', 'Admin', 'Newsaction', 'delete', 10),
(15, '添加新闻', 'Admin', 'Newsaction', 'addnews', 10),
(16, '文化类型中心', 'Admin', 'Culturetypeaction', 'lst', 2),
(17, '添加文化类型', 'Admin', 'Culturetypeaction', 'add', 16),
(18, '修改文化类型', 'Admin', 'Culturetypeaction', 'edit', 16),
(19, '新闻分类', 'Admin', 'Newscataction', 'catlist', 1),
(20, '删除文化类型', 'Admin', 'Culturetypeaction', 'delete', 16),
(21, '添加新闻分类', 'Admin', 'newscataction', 'addcat', 19),
(22, '修改新闻分类', 'Admin', 'Newscataction', 'editcat', 19),
(23, '删除新闻分类', 'Admin', 'Newscataction', 'deletecat', 19),
(24, '公司简介', 'Admin', 'cultureaction', 'add', 28),
(25, '企业文化', 'Admin', 'Cultureaction', 'add', 28),
(26, '荣誉资质', 'Admin', 'Cultureaction', 'add', 28),
(27, '发展历史', 'Admin', 'Cultureaction', 'add', 28),
(28, '文化中心', 'Admin', 'Cultureaction', 'lst', 2),
(29, '权限列表', 'Admin', 'Privilegeaction', 'lst', 3),
(30, '角色列表', 'Admin', 'Roleaction', 'lst', 3),
(31, '管理员列表', 'Admin', 'Adminaction', 'lst', 3),
(33, '系统参数设定', 'Admin', 'Systemaction', 'add', 4),
(34, '添加栏目', 'Admin', 'Navaction', 'add', 6),
(35, '修改栏目', 'Admin', 'Navaction', 'edit', 6),
(36, '删除栏目', 'Admin', 'Navaction', 'delete', 6),
(37, '添加Banner', 'Admin', 'Banneraction', 'add', 7),
(38, '删除Banner', 'Admin', 'Banneraction', 'delete', 7),
(39, '添加友情链接', 'Admin', 'Linksaction', 'add', 5),
(40, '修改友情链接', 'Admin', 'Linksaction', 'edit', 5),
(41, '删除友情链接', 'Admin', 'Linksaction', 'delete', 5),
(42, '留言', 'Admin', 'Messageaction', 'lst', 8);

-- --------------------------------------------------------

--
-- 表的结构 `hy_role`
--

CREATE TABLE IF NOT EXISTS `hy_role` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色' AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `hy_role`
--

INSERT INTO `hy_role` (`id`, `role_name`) VALUES
(22, '系统管理员'),
(23, '公司管理员');

-- --------------------------------------------------------

--
-- 表的结构 `hy_role_pri`
--

CREATE TABLE IF NOT EXISTS `hy_role_pri` (
  `pri_id` mediumint(8) unsigned NOT NULL COMMENT '权限id',
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色id',
  KEY `pri_id` (`pri_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限';

--
-- 转存表中的数据 `hy_role_pri`
--

INSERT INTO `hy_role_pri` (`pri_id`, `role_id`) VALUES
(1, 22),
(10, 22),
(12, 22),
(13, 22),
(15, 22),
(19, 22),
(21, 22),
(22, 22),
(23, 22),
(2, 22),
(16, 22),
(17, 22),
(18, 22),
(20, 22),
(28, 22),
(24, 22),
(25, 22),
(26, 22),
(27, 22),
(4, 22),
(5, 22),
(39, 22),
(40, 22),
(41, 22),
(6, 22),
(34, 22),
(35, 22),
(36, 22),
(7, 22),
(37, 22),
(38, 22),
(8, 22),
(42, 22),
(1, 23),
(10, 23),
(12, 23),
(13, 23),
(15, 23),
(19, 23),
(21, 23),
(22, 23),
(23, 23),
(2, 23),
(16, 23),
(17, 23),
(18, 23),
(20, 23),
(28, 23),
(24, 23),
(25, 23),
(26, 23),
(27, 23),
(8, 23),
(42, 23);

-- --------------------------------------------------------

--
-- 表的结构 `hy_system`
--

CREATE TABLE IF NOT EXISTS `hy_system` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `title` varchar(150) NOT NULL COMMENT '网站标题',
  `keywords` varchar(250) NOT NULL COMMENT '网站关键词',
  `description` varchar(250) NOT NULL COMMENT '网站描述',
  `num` varchar(150) NOT NULL COMMENT '备案号',
  `net` varchar(150) NOT NULL COMMENT '域名',
  `tel` varchar(150) DEFAULT NULL COMMENT '联系电话',
  `mail` varchar(150) DEFAULT NULL COMMENT '联系邮箱',
  `fax` varchar(150) DEFAULT NULL COMMENT '联系传真',
  `pho` varchar(150) DEFAULT NULL COMMENT '联系手机',
  `address` varchar(250) NOT NULL COMMENT '地址',
  `qq1` varchar(150) DEFAULT NULL COMMENT '客服QQ1',
  `qq2` varchar(150) DEFAULT NULL COMMENT '客服QQ2',
  `qqs` varchar(150) DEFAULT NULL COMMENT '技术QQ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='系统参数表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `hy_system`
--

INSERT INTO `hy_system` (`id`, `title`, `keywords`, `description`, `num`, `net`, `tel`, `mail`, `fax`, `pho`, `address`, `qq1`, `qq2`, `qqs`) VALUES
(1, '华云工作室-值得信赖的互联网之家', '网站开发#App开发#微信开发', '华云网络有限公司是一家集实验室检测和技术研发、结构计算为一体的科技机构，主要由实验中心和计算中心构成。在成立两年内具备中国合格评定国家认可委员会（CNAS）认可资质和CMA、保密资质认可等资质，拥有材料与结构检测实验室、环境可靠性实验室、产品强度计算与实验分析三大主体实验室。', '京ICP证080268号', 'hy2017.com', '020-666-8888', '1920853199@qq.com', '020-666-8888', '18702044207', '广州市海珠区涫洲街道余庆里8号', '1920853199', '491126240', '1920853199');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
