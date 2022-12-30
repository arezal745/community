/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : community

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2022-12-20 18:51:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cook_book`
-- ----------------------------
DROP TABLE IF EXISTS `cook_book`;
CREATE TABLE `cook_book` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT '/cookImg/',
  `time` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `foodNumber` int(255) NOT NULL,
  `mainMaterials` varchar(255) NOT NULL,
  `condiment` varchar(255) NOT NULL,
  `picID` int(255) DEFAULT NULL,
  `descID` int(255) DEFAULT NULL,
  `cateID` varchar(255) NOT NULL,
  `favorite` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook_book
-- ----------------------------
INSERT INTO `cook_book` VALUES ('1', '/cookImg/1657353677711.png', '10-30分钟', '天妇罗小黄鱼', '1', '小黄鱼', '生姜 生抽 料酒 蚝油 盐 淀粉 黑胡椒粉', '1', '1', '1000 1005', '425');
INSERT INTO `cook_book` VALUES ('2', '/cookImg/1657355736858.png', '10分钟左右', '雪菜春笋蒸黄鱼', '1', '小黄鱼', '料酒 生姜 小米椒 葱 芥菜 胡椒粉 春笋', '2', '2', '1000 1003 1004', '927');
INSERT INTO `cook_book` VALUES ('3', '/cookImg/c84f8d3ff2d8428eb7c93e17665ee831.png', '一小时以上', '沙姜猪肘煲', '1', '猪肘', '生抽 盐 葱 老抽 料酒 白芝麻 豆腐 蚝油 食用油 生姜', '3', '3', '1000 1003 1004 1006', '0');
INSERT INTO `cook_book` VALUES ('6', '/cookImg/7751a658642f40d696beb7d477a0ecd3.jpg', '5-6分钟', '西红柿炒鸡蛋', '2', '鸡蛋 番茄', '盐 葱', '6', '6', '1005 1004', '0');
INSERT INTO `cook_book` VALUES ('7', '/cookImg/ef1153a851a943bb9dfcd9637e736363.jpg', '10-20分钟', '番茄鸡蛋面', '3', '鸡蛋 番茄 面条', '盐 葱 酱油 老抽', '7', '7', '1000 1002 1004 1005', '0');
INSERT INTO `cook_book` VALUES ('8', '/cookImg/b3ffa26acdc3436a94b7febf9942401b.jpg', '5-6分钟', '炒白菜', '1', '白菜', '葱 姜 蒜', '8', '8', '1000 1003 1004 1005', '0');

-- ----------------------------
-- Table structure for `cook_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cook_cate`;
CREATE TABLE `cook_cate` (
  `cookid` int(255) NOT NULL,
  `catename` varchar(255) NOT NULL,
  PRIMARY KEY (`cookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook_cate
-- ----------------------------
INSERT INTO `cook_cate` VALUES ('1000', '全部');
INSERT INTO `cook_cate` VALUES ('1001', '春日鲜蔬');
INSERT INTO `cook_cate` VALUES ('1002', '夏日开胃');
INSERT INTO `cook_cate` VALUES ('1003', '冬日暖餐');
INSERT INTO `cook_cate` VALUES ('1004', '家常菜');
INSERT INTO `cook_cate` VALUES ('1005', '做菜小白');
INSERT INTO `cook_cate` VALUES ('1006', '主食');
INSERT INTO `cook_cate` VALUES ('1007', '素菜');
INSERT INTO `cook_cate` VALUES ('1008', '水产海鲜');
INSERT INTO `cook_cate` VALUES ('1009', '滋补靓汤');
INSERT INTO `cook_cate` VALUES ('1010', '烘焙');

-- ----------------------------
-- Table structure for `cook_collect`
-- ----------------------------
DROP TABLE IF EXISTS `cook_collect`;
CREATE TABLE `cook_collect` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NOT NULL,
  `cookid` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook_collect
-- ----------------------------
INSERT INTO `cook_collect` VALUES ('10', '1', '1');
INSERT INTO `cook_collect` VALUES ('11', '1', '2');

-- ----------------------------
-- Table structure for `cook_pic`
-- ----------------------------
DROP TABLE IF EXISTS `cook_pic`;
CREATE TABLE `cook_pic` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pic1` varchar(255) DEFAULT NULL,
  `pic2` varchar(255) DEFAULT NULL,
  `pic3` varchar(255) DEFAULT NULL,
  `pic4` varchar(255) DEFAULT NULL,
  `pic5` varchar(255) DEFAULT NULL,
  `pic6` varchar(255) DEFAULT NULL,
  `pic7` varchar(255) DEFAULT NULL,
  `pic8` varchar(255) DEFAULT NULL,
  `pic9` varchar(255) DEFAULT NULL,
  `pic10` varchar(255) DEFAULT NULL,
  `pic11` varchar(255) DEFAULT NULL,
  `pic12` varchar(255) DEFAULT NULL,
  `pic13` varchar(255) DEFAULT NULL,
  `pic14` varchar(255) DEFAULT NULL,
  `pic15` varchar(255) DEFAULT NULL,
  `pic16` varchar(255) DEFAULT NULL,
  `pic17` varchar(255) DEFAULT NULL,
  `pic18` varchar(255) DEFAULT NULL,
  `pic19` varchar(255) DEFAULT NULL,
  `pic20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook_pic
-- ----------------------------
INSERT INTO `cook_pic` VALUES ('1', '/cookImg/1657353695809.png', '/cookImg/1657353699228.png', '/cookImg/1657353702545.png', '/cookImg/1657353705810.png', '/cookImg/1657353709025.png', '/cookImg/1657353712153.png', '/cookImg/1657353715534.png', '/cookImg/1657353718889.png', '/cookImg/1657353722367.png', '/cookImg/1657353725647.png', '/cookImg/1657353728565.png', '/cookImg/1657353734839.png', '/cookImg/1657353731710.png', '/cookImg/1657353738014.png', '/cookImg/1657353746937.png', null, null, null, null, null);
INSERT INTO `cook_pic` VALUES ('2', '/cookImg/1657355740183.png', '/cookImg/1657355743166.png', '/cookImg/1657355746421.png', '/cookImg/1657355749815.png', '/cookImg/1657355753041.png', '/cookImg/1657355756196.png', '/cookImg/1657355759218.png', '/cookImg/1657355762123.png', '/cookImg/1657355765176.png', '/cookImg/1657355768286.png', '/cookImg/1657355771457.png', '/cookImg/1657355774725.png', null, null, null, null, null, null, null, null);
INSERT INTO `cook_pic` VALUES ('3', '/cookImg/cd697513a52f49c6b03afdaa53036340.png', '/cookImg/e1954dd2a305499bba67550272fd6844.png', '/cookImg/d5805ef6fdd34a1f886ba701e82f3b4a.png', '/cookImg/3d2b7932d07e48d7852f9da5efbf096c.png', '/cookImg/9a29b833e5a24330a037011b6b662056.png', '/cookImg/4ba84aecc5aa447f812ae02c45726e8d.png', '/cookImg/c51eee6651f74e95a8ded7f0a8fea051.png', '/cookImg/b815ca5dd09f4922bb223324a97f5186.png', '/cookImg/d49dcc726d0942689d3b8d1e56963b5f.png', '/cookImg/b76fbb66c99a405ab6a496d14972b2a0.png', '/cookImg/c84f8d3ff2d8428eb7c93e17665ee831.png', null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_pic` VALUES ('6', '/cookImg/55b8d428ffdd446b86abc9ed2a0e38ec.jpg', '/cookImg/64e23986c12a462c9334282b65b0b71b.jpg', '/cookImg/4008a047dcc848389fdbca1c34743988.jpg', '/cookImg/dc01610399c24b5d9665b69012859bde.jpg', '/cookImg/b86868b0389e4e2b8902ff018aa2a96b.jpg', '/cookImg/7751a658642f40d696beb7d477a0ecd3.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_pic` VALUES ('7', '/cookImg/e5930020d1504ecca6f049e125423b84.jpg', '/cookImg/2022af122d4d40fd8238ad6d2fbacd4d.jpg', '/cookImg/ef96b667303d47e794339fd8e85ec082.jpg', '/cookImg/04a4537d6cea45e1a519e87fbbc37c0c.jpg', '/cookImg/6c4de1e35c604916a40b9bec774756d1.jpg', '/cookImg/8fc773e737a24dadb4d950c12045fdb2.jpg', '/cookImg/04770b496ab2464e8cc920d352eff47d.jpg', '/cookImg/dd85eb1cb94342f6af1b27785c0906d5.jpg', '/cookImg/1363edc0b5c84c87b9695a888f1781a9.jpg', '/cookImg/ef1153a851a943bb9dfcd9637e736363.jpg', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_pic` VALUES ('8', '/cookImg/fee24a6a31394b05a7efa06644bde4d4.jpg', '/cookImg/225f7a516b964e96bc9f1e092dd8990a.jpg', '/cookImg/6f5e95ccae324385aea02511aa71c6d8.jpg', '/cookImg/db0b545565db4d40899cbfc5615afafa.jpg', '/cookImg/a2138a7f64c5486d9e96af11ecfe0a99.jpg', '/cookImg/b3ffa26acdc3436a94b7febf9942401b.jpg', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cook_txt`
-- ----------------------------
DROP TABLE IF EXISTS `cook_txt`;
CREATE TABLE `cook_txt` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `txt1` varchar(255) DEFAULT NULL,
  `txt2` varchar(255) DEFAULT NULL,
  `txt3` varchar(255) DEFAULT NULL,
  `txt4` varchar(255) DEFAULT NULL,
  `txt5` varchar(255) DEFAULT NULL,
  `txt6` varchar(255) DEFAULT NULL,
  `txt7` varchar(255) DEFAULT NULL,
  `txt8` varchar(255) DEFAULT NULL,
  `txt9` varchar(255) DEFAULT NULL,
  `txt10` varchar(255) DEFAULT NULL,
  `txt11` varchar(255) DEFAULT NULL,
  `txt12` varchar(255) DEFAULT NULL,
  `txt13` varchar(255) DEFAULT NULL,
  `txt14` varchar(255) DEFAULT NULL,
  `txt15` varchar(255) DEFAULT NULL,
  `txt16` varchar(255) DEFAULT NULL,
  `txt17` varchar(255) DEFAULT NULL,
  `txt18` varchar(255) DEFAULT NULL,
  `txt19` varchar(255) DEFAULT NULL,
  `txt20` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cook_txt
-- ----------------------------
INSERT INTO `cook_txt` VALUES ('1', '准备好食材。小黄鱼、天妇罗粉、生姜。', '生姜切丝放入小黄鱼中，准备腌制小黄鱼，还可以准备一些虾片，配起来吃非常好。', '腌制小黄鱼，放入调料盐、料酒、生抽、蚝油、黑胡椒粉、淀粉。', '搅拌均匀，腌制10分钟。', '天妇罗粉中加水，粉与水的比例1:1.5。', '用筷子将面糊搅拌均匀，不要有结块儿。', '锅中倒入油，烧热至七八成热。', '先放入虾片，膨胀开即可淋油捞出。', '一盘虾片就炸好了。', '腌制好的小黄鱼放入面糊中，均匀裹上面糊。', '裹好一条放入锅中炸，陆续一个个的放入，改为中火炸。', '用筷子将小黄鱼翻面，每年炸约2分钟翻面。', '大约炸5-6分钟，两面呈现金黄色，即可淋油出锅了。', '捞出的小黄鱼在吸油纸上吸油，吸出油口感更好。', '一盘金黄色咸鲜的天妇罗小黄鱼就上桌了，配上酥脆的虾片，很舒适的吃起来哟！', null, null, null, null, null);
INSERT INTO `cook_txt` VALUES ('2', '取鲜到鲜得海捕小黄鱼5条', '将鲜到鲜得海捕小黄鱼去掉腹内黑膜并清洗干净备用', '盆内加入料酒和胡椒粉腌制10分钟', '春笋洗净，切丁备用', '雪菜泡水（半个小时），去除多余盐分', '将小葱切葱花，小米辣切椒圈备用', '将雪菜清洗干净，挤出多余水分，切碎备用', '将雪菜丁与春笋丁混合搅拌均匀备用', '取一空盘，将葱段和姜片铺在盘内', '将鲜到鲜得海捕小黄鱼铺在葱姜上，再浇上料酒', '再将搅拌均匀的雪菜和春笋铺在小黄鱼上，凉水上锅蒸12分钟即可', '出锅撒葱花和小米辣', null, null, null, null, null, null, null, null);
INSERT INTO `cook_txt` VALUES ('3', '猪肘子处理干净后剁块泡水里去掉血水，同时把生姜切片，小葱切碎，沙姜拍扁剁碎', '猪肘子焯水，倒掉后冲洗干净', '倒进铸铁锅里，加入料酒、2/3沙姜碎、生抽、老抽、姜片和旧庄蚝油抓均匀', '用完旧庄蚝油要及时放回冰箱保存哦', '再加入没过的水，大火烧开后转小火慢炖约90分钟', '在炖的过程中，把豆腐切长条形厚块', '放点油盐煎至两面金黄', '用筷子很轻松的能扎进猪皮，就炖煮好了，可以转中火稍稍收汁', '我换了砂煲，把肉捞起来放底下，把豆腐码上去，淋上汤汁再慢炖3分钟', '另起一锅，热油，倒入剩下的1/3沙姜碎稍微炸一炸，然后淋入猪肘锅中，撒上熟白芝麻和葱花即可上桌', '成品', null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_txt` VALUES ('6', '1、西红柿洗干净切十字花刀，鸡蛋打散，葱花，蒜末姜末。', '2、打散的鸡蛋里放入少许盐增加底味，鸡蛋搅拌均匀，起锅烧油油热放入鸡蛋，翻炒至熟透盛入碗里备用。', '3、起锅烧水，水开放入西红柿烫1分钟捞出放入凉水里去皮，切成小块放入盘里备用', '4、起锅烧油，放入葱花蒜末姜末炒香，放入切好的西红柿块翻炒至出汤汁，放入少许盐，1勺白糖翻炒均匀，撒上葱花出锅即可！', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_txt` VALUES ('7', '1.准备好材料', '2.面冷水下锅煮熟', '3.煮熟后捞起放入凉开水中冷却并沥干水备用', '4.煮面期间把番茄切块，姜蒜切片，葱切碎。鸡蛋打散', '5.锅热油煎蛋', '6.煎好后盛起备用', '7.锅继续热油，放入姜蒜葱头爆香，然后倒入番茄，加1匙盐和糖翻炒片刻后加入一碗水。煮开之后把鸡蛋也加入，并加1匙蚝油调味继续煮2分钟左右。', '8.把煮好的番茄鸡蛋汤直接倒入装面的大碗里即可。', '9.撒上葱花就可以吃了！这样煮出来的面不但美观，而且滑嫩爽口，汤汁喝起来味道酸酸甜甜的，特别开胃消食。大人小孩都喜欢。', '10.味道真的很棒哦！喜欢的朋友快动手做起来吧！', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `cook_txt` VALUES ('8', '第1步、白菜切块，葱姜蒜切碎。', '第2步、炒锅放油烧热。', '第3步、放入葱姜。', '第4步、放白菜翻炒。', '第5步、放生抽，醋，盐，蒜炒匀。', '第6步、美食效果图。', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `goods_cart`
-- ----------------------------
DROP TABLE IF EXISTS `goods_cart`;
CREATE TABLE `goods_cart` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userID` int(255) NOT NULL,
  `goodsID` int(255) NOT NULL,
  `goodsName` varchar(255) NOT NULL,
  `goodsPrice` double NOT NULL,
  `goodsImg` varchar(255) NOT NULL,
  `goodsNumber` int(5) NOT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_cart
-- ----------------------------
INSERT INTO `goods_cart` VALUES ('4', '8', '2', '海南三亚 妃子笑荔枝 1.5kg', '51.3', '/images/1653898503173.jpg', '2', '0');
INSERT INTO `goods_cart` VALUES ('5', '8', '2', '海南三亚 妃子笑荔枝 1.5kg', '51.3', '/images/1653898503173.jpg', '2', '0');
INSERT INTO `goods_cart` VALUES ('27', '1', '26', '内蒙古 巴彦淖尔黑毛和牛谷饲 肥牛肉片 1kg（非当日达）', '169', '/images/1656667929508.jpg', '1', '0');
INSERT INTO `goods_cart` VALUES ('30', '1', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '74.9', '/images/1654502729981.jpg', '1', '0');
INSERT INTO `goods_cart` VALUES ('31', '1', '8', '澳洲贝拉米进口1段0-6个月900g*6罐婴幼儿配方奶粉', '1728', '/images/1654502771480.jpg', '1', '0');
INSERT INTO `goods_cart` VALUES ('32', '1', '61', '浙江象山 小黄鱼 1kg(18-22条)(非当日达)', '58.8', '/images/1667044920089.jpg', '3', '0');
INSERT INTO `goods_cart` VALUES ('56', '13', '62', '浙江象山 小黄鱼1kg(14-16条)(非当日达)', '98', '/images/1657352597407.jpg', '1', '0');
INSERT INTO `goods_cart` VALUES ('57', '13', '61', '浙江象山 小黄鱼 1kg(18-22条)(非当日达)', '48.8', '/images/1667044920089.jpg', '1', '0');

-- ----------------------------
-- Table structure for `goods_cate2`
-- ----------------------------
DROP TABLE IF EXISTS `goods_cate2`;
CREATE TABLE `goods_cate2` (
  `cateid2` int(255) NOT NULL AUTO_INCREMENT,
  `catename` varchar(255) NOT NULL,
  `cateid` int(11) NOT NULL,
  PRIMARY KEY (`cateid2`),
  KEY `ca` (`cateid`),
  CONSTRAINT `ca` FOREIGN KEY (`cateid`) REFERENCES `goods_category` (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_cate2
-- ----------------------------
INSERT INTO `goods_cate2` VALUES ('1', '柑橘橙柚柠', '1');
INSERT INTO `goods_cate2` VALUES ('2', '猕猴头', '1');
INSERT INTO `goods_cate2` VALUES ('3', '热带水果', '1');
INSERT INTO `goods_cate2` VALUES ('4', '桃李杏枣', '1');
INSERT INTO `goods_cate2` VALUES ('5', '葡萄/瓜类', '1');
INSERT INTO `goods_cate2` VALUES ('6', '苹果梨蕉', '1');
INSERT INTO `goods_cate2` VALUES ('7', '樱桃/莓类', '1');
INSERT INTO `goods_cate2` VALUES ('8', '根茎类', '2');
INSERT INTO `goods_cate2` VALUES ('9', '茄果瓜类', '2');
INSERT INTO `goods_cate2` VALUES ('10', '鲜花坊', '2');
INSERT INTO `goods_cate2` VALUES ('11', '菌菇豆类', '2');
INSERT INTO `goods_cate2` VALUES ('12', '葱姜蒜/调料', '2');
INSERT INTO `goods_cate2` VALUES ('13', '鱼类', '3');
INSERT INTO `goods_cate2` VALUES ('14', '虾', '3');
INSERT INTO `goods_cate2` VALUES ('15', '蟹类', '3');
INSERT INTO `goods_cate2` VALUES ('16', '贝类', '3');
INSERT INTO `goods_cate2` VALUES ('17', '鸡鸭鹅', '4');
INSERT INTO `goods_cate2` VALUES ('18', '牛肉', '4');
INSERT INTO `goods_cate2` VALUES ('19', '羊肉', '4');
INSERT INTO `goods_cate2` VALUES ('20', '猪肉', '4');
INSERT INTO `goods_cate2` VALUES ('21', '腌腊', '4');
INSERT INTO `goods_cate2` VALUES ('22', '速食面点', '5');
INSERT INTO `goods_cate2` VALUES ('23', '米面粮油', '5');
INSERT INTO `goods_cate2` VALUES ('24', '水饮冲调', '5');
INSERT INTO `goods_cate2` VALUES ('25', '干货', '5');
INSERT INTO `goods_cate2` VALUES ('26', '休闲零食', '5');
INSERT INTO `goods_cate2` VALUES ('27', '防晒', '6');
INSERT INTO `goods_cate2` VALUES ('28', '面膜', '6');
INSERT INTO `goods_cate2` VALUES ('29', '洁面卸妆', '6');
INSERT INTO `goods_cate2` VALUES ('30', '大牌护肤', '6');
INSERT INTO `goods_cate2` VALUES ('31', '身体护理', '6');
INSERT INTO `goods_cate2` VALUES ('32', '洗发染发', '6');
INSERT INTO `goods_cate2` VALUES ('33', '沐浴清洁', '6');
INSERT INTO `goods_cate2` VALUES ('34', '剃须/男士', '6');
INSERT INTO `goods_cate2` VALUES ('35', '牙膏牙刷', '6');
INSERT INTO `goods_cate2` VALUES ('36', '母婴奶粉', '7');
INSERT INTO `goods_cate2` VALUES ('37', '辅食营养', '7');
INSERT INTO `goods_cate2` VALUES ('38', '潮流玩具', '7');
INSERT INTO `goods_cate2` VALUES ('39', '尿裤湿巾', '7');
INSERT INTO `goods_cate2` VALUES ('40', '喂养用品', '7');
INSERT INTO `goods_cate2` VALUES ('41', '婴儿洗护', '7');
INSERT INTO `goods_cate2` VALUES ('42', '驱蚊防痱', '7');
INSERT INTO `goods_cate2` VALUES ('43', '孕妈用品', '7');
INSERT INTO `goods_cate2` VALUES ('44', '外用医疗', '7');
INSERT INTO `goods_cate2` VALUES ('45', '中西药品', '7');
INSERT INTO `goods_cate2` VALUES ('46', '计生情趣', '7');
INSERT INTO `goods_cate2` VALUES ('48', '锅具厨具', '7');
INSERT INTO `goods_cate2` VALUES ('49', '家居收纳', '7');
INSERT INTO `goods_cate2` VALUES ('50', '餐具水具', '7');
INSERT INTO `goods_cate2` VALUES ('51', '营养健康', '8');
INSERT INTO `goods_cate2` VALUES ('52', '滋补养生', '8');
INSERT INTO `goods_cate2` VALUES ('53', '谷物冲调', '8');
INSERT INTO `goods_cate2` VALUES ('54', '咖啡', '9');
INSERT INTO `goods_cate2` VALUES ('55', '葡萄酒', '9');
INSERT INTO `goods_cate2` VALUES ('56', '白酒', '9');
INSERT INTO `goods_cate2` VALUES ('57', '黄酒', '9');
INSERT INTO `goods_cate2` VALUES ('58', '洋酒', '9');
INSERT INTO `goods_cate2` VALUES ('59', '果酒', '9');
INSERT INTO `goods_cate2` VALUES ('60', '名酒礼盒', '9');
INSERT INTO `goods_cate2` VALUES ('61', '奢品配饰', '10');
INSERT INTO `goods_cate2` VALUES ('62', '美妆香氛', '10');
INSERT INTO `goods_cate2` VALUES ('63', '潮玩', '10');
INSERT INTO `goods_cate2` VALUES ('64', '数码家电', '10');

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `cateid` int(255) NOT NULL AUTO_INCREMENT,
  `catename` varchar(20) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`cateid`),
  KEY `catename` (`catename`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('1', '时令水果', '/cateImg/1.jpeg');
INSERT INTO `goods_category` VALUES ('2', '新鲜蔬菜', '/cateImg/2.jpeg');
INSERT INTO `goods_category` VALUES ('3', '海鲜水产', '/cateImg/3.jpeg');
INSERT INTO `goods_category` VALUES ('4', '肉禽蛋品', '/cateImg/4.jpeg');
INSERT INTO `goods_category` VALUES ('5', '食品干货', '/cateImg/5.jpeg');
INSERT INTO `goods_category` VALUES ('6', '美妆个护', '/cateImg/6.jpeg');
INSERT INTO `goods_category` VALUES ('7', '母婴百货', '/cateImg/7.jpeg');
INSERT INTO `goods_category` VALUES ('8', '保健滋补', '/cateImg/8.jpeg');
INSERT INTO `goods_category` VALUES ('9', '中外名酒', '/cateImg/9.jpeg');
INSERT INTO `goods_category` VALUES ('10', '彩妆时尚', '/cateImg/10.jpeg');

-- ----------------------------
-- Table structure for `goods_collect`
-- ----------------------------
DROP TABLE IF EXISTS `goods_collect`;
CREATE TABLE `goods_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`goodsid`),
  KEY `uid` (`userid`),
  CONSTRAINT `uid` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_collect
-- ----------------------------
INSERT INTO `goods_collect` VALUES ('1', '1', '3');
INSERT INTO `goods_collect` VALUES ('2', '1', '4');
INSERT INTO `goods_collect` VALUES ('3', '1', '14');
INSERT INTO `goods_collect` VALUES ('4', '1', '6');
INSERT INTO `goods_collect` VALUES ('5', '1', '1');
INSERT INTO `goods_collect` VALUES ('6', '13', '3');
INSERT INTO `goods_collect` VALUES ('7', '13', '2');

-- ----------------------------
-- Table structure for `goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `goods_comment`;
CREATE TABLE `goods_comment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `goodsid` int(255) NOT NULL,
  `userid` int(10) NOT NULL,
  `userImg` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `goods_estimate` varchar(10) NOT NULL,
  `goods_comment` varchar(200) NOT NULL,
  `datetime` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id2` (`goodsid`),
  KEY `Img2` (`userImg`),
  CONSTRAINT `Img2` FOREIGN KEY (`userImg`) REFERENCES `user` (`userimg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_comment
-- ----------------------------
INSERT INTO `goods_comment` VALUES ('1', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '刘**', '好评', '回购的给父母买的，味道依然不错，家里人都说好吃\r\n', '2022-06-13');
INSERT INTO `goods_comment` VALUES ('3', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '刘**', '好评', '回购的给父母买的，味道依然不错，家里人都说好吃\r\n', '2022-06-13');
INSERT INTO `goods_comment` VALUES ('4', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '刘**', '好评', '回购的给父母买的，味道依然不错，家里人都说好吃\r\n', '2022-06-13');
INSERT INTO `goods_comment` VALUES ('5', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '刘**', '好评', '回购的给父母买的，味道依然不错，家里人都说好吃\r\n', '2022-06-13');
INSERT INTO `goods_comment` VALUES ('6', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '好吃', '2022-10-30 18:26:50');
INSERT INTO `goods_comment` VALUES ('7', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '好吃', '2022-10-30 18:26:50');
INSERT INTO `goods_comment` VALUES ('8', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '好吃', '2022-10-30 18:26:57');
INSERT INTO `goods_comment` VALUES ('9', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '好吃', '2022-10-30 18:27:54');
INSERT INTO `goods_comment` VALUES ('10', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '好吃', '2022-10-30 18:40:32');
INSERT INTO `goods_comment` VALUES ('11', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '酸酸甜甜的，推荐购买。', '2022-10-30 20:20:18');
INSERT INTO `goods_comment` VALUES ('12', '3', '13', '/userImg/7c1b9a5e7f2c4f058932599e26e853b2.jpeg', 'l**', '好评', '推荐购买', '2022-12-19 19:38:27');
INSERT INTO `goods_comment` VALUES ('13', '2', '13', '/userImg/7c1b9a5e7f2c4f058932599e26e853b2.jpeg', 'l**', '好评', '推荐购买', '2022-12-19 19:38:27');
INSERT INTO `goods_comment` VALUES ('14', '1', '13', '/userImg/7c1b9a5e7f2c4f058932599e26e853b2.jpeg', 'l**', '一般', '推荐购买', '2022-12-19 19:38:27');
INSERT INTO `goods_comment` VALUES ('15', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '推荐购买', '2022-12-20 10:49:13');
INSERT INTO `goods_comment` VALUES ('16', '2', '1', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg', '李**', '好评', '推荐购买', '2022-12-20 10:49:13');

-- ----------------------------
-- Table structure for `goods_details`
-- ----------------------------
DROP TABLE IF EXISTS `goods_details`;
CREATE TABLE `goods_details` (
  `goodsid` int(255) NOT NULL AUTO_INCREMENT,
  `catename` varchar(20) NOT NULL,
  `cateid2` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `main` varchar(255) NOT NULL,
  `price` double(255,2) DEFAULT NULL,
  `price2` double(255,2) NOT NULL,
  `unit` varchar(255) NOT NULL DEFAULT '箱',
  `inventory` int(255) NOT NULL,
  `merchantid` int(255) NOT NULL,
  `regionname` varchar(255) NOT NULL,
  `tag` varchar(255) DEFAULT '',
  `status` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`goodsid`),
  KEY `cate` (`catename`),
  KEY `cate2` (`cateid2`),
  KEY `merchantid` (`merchantid`),
  CONSTRAINT `cate` FOREIGN KEY (`catename`) REFERENCES `goods_category` (`catename`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cate2` FOREIGN KEY (`cateid2`) REFERENCES `goods_cate2` (`cateid2`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchantid` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_details
-- ----------------------------
INSERT INTO `goods_details` VALUES ('1', '时令水果', '1', '时令水果', '沃柑', '58.90', '48.90', '箱', '-1', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('2', '时令水果', '3', '海南三亚 妃子笑荔枝 1.5kg', '荔枝', '108.00', '51.30', '箱', '64', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('3', '新鲜蔬菜', '9', '山东 水果玉米 1.0kg', '玉米', '49.90', '41.80', '箱', '56', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('4', '海鲜水产', '13', '山东威海 黄海小船小八爪鱼 1kg', '八爪鱼', '120.00', '108.00', '箱', '60', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('5', '肉禽蛋品', '18', '澳洲原切和牛M9眼肉涮肉片 150kg', '和牛肉片', '138.00', '138.00', '盒', '50', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('6', '食品干货', '22', '汇柒鲜 羊蝎子火锅 1.2kg', '火锅', '74.90', '72.00', '袋', '63', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('7', '美妆个护', '27', '安研科轻透防水防晒防蓝光乳液SPF50+50g', '乳液', '248.00', '98.00', '瓶', '62', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('8', '母婴百货', '36', '澳洲贝拉米进口1段0-6个月900g*6罐婴幼儿配方奶粉', '奶粉', '1728.00', '1276.00', '罐', '20', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('9', '保健滋补', '51', 'POLA 蓝莓红紫菊精华 祛黑眼圈护眼丸180粒 3个月量', '护眼丸', '1725.00', '659.00', '瓶', '50', '1', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('10', '中外名酒', '55', '法国名庄龙阁酒庄干红酒葡萄酒进口古堡波尔多', '红酒', '499.00', '198.00', '瓶', '18', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('11', '彩妆时尚', '61', 'APM MONACO 时尚纯银双层四叶草项链 情侣女友礼物银', '项链', '1410.00', '809.00', '条', '3', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('12', '时令水果', '1', '四川安岳 尤力克柠檬 8粒(单果140g+)', '柠檬', '37.20', '31.80', '箱', '90', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('13', '时令水果', '2', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '猕猴桃', '180.00', '145.50', '箱', '22', '1', '长沙市', '酸甜爽口', '1');
INSERT INTO `goods_details` VALUES ('14', '时令水果', '2', '佳沛 新西兰 阳光金果礼盒 10粒(单果145g+)', '猕猴桃', '139.00', '110.00', '箱', '30', '2', '常德市', '个大饱满 入口即化', '1');
INSERT INTO `goods_details` VALUES ('15', '时令水果', '3', '四川攀枝花 凯特芒礼盒 6粒(单果600g+)', '芒果', '62.80', '78.00', '箱', '60', '2', '常德市', '超大果', '1');
INSERT INTO `goods_details` VALUES ('16', '新鲜蔬菜', '8', '云南晋宁 小萝卜 1kg', '萝卜', '37.90', '29.90', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('17', '新鲜蔬菜', '9', '山东寿光 圣女果黄瓜组合 2kg', '圣女果黄瓜', '45.80', '25.80', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('18', '新鲜蔬菜', '9', '山东寿光 四色小番茄组合 2kg', '番茄', '65.80', '49.90', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('19', '新鲜蔬菜', '11', '云南西双版纳 黑牛肝菌 1kg', '牛肝菌', '150.00', '120.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('20', '新鲜蔬菜', '11', '云南香格里拉 鲜金耳 400g', '金耳', '88.00', '71.80', '盒', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('21', '海鲜水产', '13', '浙江温岭 东海墨鱼 1kg (2-4只) (非当日达)', '墨鱼', null, '78.00', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('22', '海鲜水产', '14', '鲜活 加拿大波士顿龙虾 3只(500-600g/只)\r\n', '波士顿青龙', '699.00', '499.00', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('23', '海鲜水产', '14', '鲜活 山东微山湖 清水小龙虾 1.5kg(7-9钱/只))\r\n', '小龙虾', null, '218.00', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('24', '海鲜水产', '15', '智利 熟冻 帝王蟹 1.4-1.6kg/只 （非当日达）\r\n', '帝王蟹', null, '699.00', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('25', '海鲜水产', '15', '浙江舟山 液氮活冻梭子蟹 6只(100-150g/只)(非当日达)', '梭子蟹', '199.00', '99.00', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('26', '肉禽蛋品', '18', '内蒙古 巴彦淖尔黑毛和牛谷饲 肥牛肉片 1kg（非当日达）', '肥牛肉片', '169.00', '159.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('27', '肉禽蛋品', '19', '【商家直发】内蒙古 锡林浩特 精选羔羊肉片 480g*3', '羊肉片', '219.00', '199.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('28', '肉禽蛋品', '19', '诺伯豪斯 内蒙古巴盟原切羔羊羊尾羊肉卷 180g(非当日达)', '羊肉卷', null, '79.00', '盒', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('29', '肉禽蛋品', '20', '黑龙江大兴安岭 有机认证 森林认证 黑猪肘子 1.5kg', '猪肘', null, '119.00', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('30', '肉禽蛋品', '20', '浙江金华两头乌猪蹄膀 500g', '猪蹄膀', '108.00', '106.00', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('31', '食品干货', '22', '福建三明 日式蒲烧整条鳗鱼 500g*2(非当日达)', '熟食', '188.00', '168.00', '盒', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('32', '食品干货', '23', '辣来主义 正宗重庆小面 麻辣小面 217g*4(非当日达）', '重庆小面 ', '66.00', '42.90', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('33', '食品干货', '23', '向往的生活同款 The Spice Lab喜马拉雅粉盐5磅', '喜马拉雅粉盐', null, '125.00', '袋', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('34', '食品干货', '24', '雀巢星巴克咖啡粉中度烘焙精选研磨阿拉比卡咖啡粉200g', '咖啡粉', null, '51.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('35', '食品干货', '24', '$ 澳洲阿诺农场水果混合谷物燕麦片早餐代餐食品1KG坚果', '代餐食品', null, '39.00', '袋', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('36', '美妆个护', '27', 'Clarins/娇韵诗清透防晒隔离霜美白30ml/50mlSPF50法国进口', '防晒霜', null, '338.00', '瓶', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('37', '美妆个护', '28', 'SK-II 前男友面膜 10片装 补水收缩毛孔护肤面膜', '面膜', null, '729.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('38', '美妆个护', '28', 'SULWHASOO/雪花秀雨润夜间修复睡眠面膜120ml 免洗涂抹式去黄保湿', '面膜', null, '179.00', '盒', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('39', '美妆个护', '29', 'cure天然去角质啫喱去角质100g深层清洁面部收缩毛孔女士脸部保湿', '去角质啫喱', null, '88.00', '箱', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('40', '美妆个护', '29', 'CEMOY白金流明洗面奶洁面乳 100ml 进口', '洗面奶', null, '129.00', '瓶', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('41', '母婴百货', '36', '赞臣港版蓝臻3段(1-3岁)900g*3罐Enfinitas婴儿奶粉', '奶粉', null, '1249.00', '瓶', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('42', '母婴百货', '37', '加拿大ddrops维生素VD3滴剂婴幼儿1岁+宝宝600IU2.8ml100滴*3瓶', '维生素VD', null, '261.00', '瓶', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('43', '母婴百货', '37', '澳洲bio island婴幼儿液体牛乳钙90粒软胶囊儿童VD宝宝补钙进口*3', '牛乳钙', null, '176.00', '瓶', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('44', '母婴百货', '38', 'LIVHEART北极熊、柴犬公仔、猪公仔、哈士奇暖手款毛绒睡觉抱枕', '公仔', null, '146.00', '个', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('45', '母婴百货', '38', '手办景品现货Furyu雷姆胡桃夹子从零开始的异世界生活', '手办', null, '110.00', '个', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('46', '保健滋补', '51', 'ON奥普帝蒙金装乳清蛋白粉健身增肌原欧普特蒙', '蛋白粉', null, '430.00', '罐', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('47', '保健滋补', '52', '英国AHMAD TEA/亚曼 草本清体茶20包/盒 独立包装袋泡茶包', '茶包', null, '49.00', '盒', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('48', '保健滋补', '52', '英国AHMAD TEA/亚曼 草本丽颜茶20包/盒 独立包装袋泡茶包\r\n', '茶包', null, '49.00', '盒', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('49', '保健滋补', '53', '喜马拉雅高原森林蜂蜜旅行装 140g', '蜂蜜', null, '268.00', '罐', '30', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('50', '保健滋补', '53', '江西九江 山之馈 树参土蜜蜂 400g\r\n', '蜂蜜', null, '208.00', '罐', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('51', '中外名酒', '56', '贵州 茅台 飞天茅台 2000-2001年 53度 500ml*2', '茅台', '20728.00', '18278.00', '盒', '5', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('52', '中外名酒', '56', '茅台 名门酒 灰色 53度 500ml*6\r\n', '茅台', null, '8394.00', '箱', '5', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('53', '中外名酒', '57', '女儿红 精品绍兴黄酒 3L', '黄酒', null, '108.00', '箱', '5', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('54', '中外名酒', '57', '会稽山 十年陈绍兴花雕酒 500ml*6', '黄酒', null, '488.00', '箱', '5', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('55', '中外名酒', '58', '人头马RemyMartinVSOP干邑白兰地法国原装进口洋酒700ml特级红酒', '红酒', null, '399.00', '箱', '30', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('56', '彩妆时尚', '61', '【新品】COACH/蔻驰 ZIP拉链托特包购物袋 超大容量通勤逛街遛娃', '购物袋', null, '1199.00', '个', '10', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('57', '彩妆时尚', '62', 'Gucci/古驰Bloom花悦绽放女士香水50ml/100ml花香调', '香水', null, '398.00', '瓶', '10', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('58', '彩妆时尚', '62', 'Marc Jacobs/莫杰雏菊女士香水50ml花香调\r\n', '香水', null, '488.00', '瓶', '20', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('59', '彩妆时尚', '64', '无印良品MUJI大容量超声波香薰机空气加湿器香薰灯家用静音卧室', '空气加湿器', null, '369.00', '台', '20', '1', '长沙市', '', '1');
INSERT INTO `goods_details` VALUES ('60', '彩妆时尚', '64', 'AirPods Pro无线蓝牙主动降噪耳机三代', '蓝牙耳机', null, '1699.00', '个', '10', '2', '常德市', '', '1');
INSERT INTO `goods_details` VALUES ('61', '海鲜水产', '13', '浙江象山 小黄鱼 1kg(18-22条)(非当日达)', '小黄鱼', '58.80', '48.80', '件', '30', '1', '长沙市', '营养丰富 顺丰到家', '1');
INSERT INTO `goods_details` VALUES ('62', '海鲜水产', '13', '浙江象山 小黄鱼1kg(14-16条)(非当日达)', '小黄鱼', null, '98.00', '件', '30', '1', '长沙市', '液态冷冻锁鲜 顺丰到家', '1');
INSERT INTO `goods_details` VALUES ('63', '新鲜蔬菜', '12', '山东潍坊 大黄姜 1.5kg', '生姜', '26.80', '20.80', '箱', '50', '1', '长沙市', '姜味辛辣 饱满紧致', '1');

-- ----------------------------
-- Table structure for `goods_picture`
-- ----------------------------
DROP TABLE IF EXISTS `goods_picture`;
CREATE TABLE `goods_picture` (
  `picid` int(11) NOT NULL AUTO_INCREMENT,
  `picname1` varchar(255) DEFAULT NULL,
  `picname2` varchar(255) DEFAULT NULL,
  `picname3` varchar(255) DEFAULT NULL,
  `picname4` varchar(255) DEFAULT NULL,
  `picname5` varchar(255) DEFAULT NULL,
  `goodsid` int(11) NOT NULL,
  PRIMARY KEY (`picid`),
  KEY `goodsid` (`goodsid`),
  KEY `picname` (`picname1`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_picture
-- ----------------------------
INSERT INTO `goods_picture` VALUES ('1', '/images/1653898474213.jpg', '/images/1653898476759.jpg', '/images/1653898478886.jpg', '/images/1653898481633.jpg', '/images/1653898484022.jpg', '1');
INSERT INTO `goods_picture` VALUES ('2', '/images/1653898503173.jpg', '/images/1653898505477.jpg', '/images/1653898508205.jpg', '/images/1653898508943.jpg', '/images/1653898508954.jpg', '2');
INSERT INTO `goods_picture` VALUES ('3', '/images/1654500342641.jpg', '/images/1654500346516.jpg', '/images/1654500351548.jpg', '/images/1654500353721.jpg', '/images/1654500355904.jpg', '3');
INSERT INTO `goods_picture` VALUES ('4', '/images/1654500510384.jpg', '/images/1654500513445.jpg', '/images/1654500516220.jpg', '/images/1654500518433.jpg', '/images/1654500522321.jpg', '4');
INSERT INTO `goods_picture` VALUES ('5', '/images/1654500608151.jpg', '/images/1654500611287.jpg', '/images/1654500613639.jpg', '/images/1654500615823.jpg', '/images/1654500619965.jpg', '5');
INSERT INTO `goods_picture` VALUES ('6', '/images/1654502729981.jpg', '/images/1654502732696.jpg', '/images/1654502734812.jpg', '/images/1654502737419.jpg', '/images/1654502739711.jpg', '6');
INSERT INTO `goods_picture` VALUES ('7', '/images/1654502752053.jpg', '/images/1654502754117.jpg', '/images/1654502756049.jpg', '/images/1654502757941.jpg', '/images/1654502759867.jpg', '7');
INSERT INTO `goods_picture` VALUES ('8', '/images/1654502771480.jpg', '/images/1654502773305.jpg', '/images/1654502777943.jpg', '/images/1654502779949.jpg', '/images/1654502781923.jpg', '8');
INSERT INTO `goods_picture` VALUES ('9', '/images/1654502790505.jpg', '/images/1654502793155.jpg', '/images/1654502795452.jpg', '/images/1654502797643.jpg', '', '9');
INSERT INTO `goods_picture` VALUES ('10', '/images/1654502952522.jpg', '/images/1654502954585.jpg', '/images/1654502957848.jpg', '/images/1654502960060.jpg', '/images/1654502962137.jpg', '10');
INSERT INTO `goods_picture` VALUES ('11', '/images/1654503084533.jpg', '/images/1654503086922.jpg', '/images/1654503088827.jpg', '/images/1654503090641.jpg', '/images/1654503093616.jpg', '11');
INSERT INTO `goods_picture` VALUES ('12', '/images/1656663031079.jpg', '/images/1656663033133.jpg', '/images/1656663036817.jpg', '/images/656663038963.jpg', '/images/1656663041139', '12');
INSERT INTO `goods_picture` VALUES ('13', '/images/1656663760213.jpg', '/images/1656663762635.jpg', '/images/1656663764805.jpg', '/images/1656663767056.jpg', '/images/1656663769116.jpg', '13');
INSERT INTO `goods_picture` VALUES ('14', '/images/1656663832772.jpg', '/images/1656663834871.jpg', '/images/1656663836804.jpg', '/images/1656663841202.jpg', '/images/1656663844828.jpg', '14');
INSERT INTO `goods_picture` VALUES ('15', '/images/1656664694760.jpg', '/images/1656664697105.jpg', '/images/1656664699129.jpg', '/images/1656664701162.jpg', '/images/1656664703627.jpg', '15');
INSERT INTO `goods_picture` VALUES ('16', '/images/1656665282667.jpg', '/images/1656665285466.jpg', '/images/1656665288131.jpg', '/images/1656665290577.jpg', '/images/1656665293195.jpg', '16');
INSERT INTO `goods_picture` VALUES ('17', '/images/1656665708271.jpg', '/images/1656665710569.jpg', '/images/1656665712758.jpg', '/images/1656665714703.jpg', '/images/1656665716770.jpg', '17');
INSERT INTO `goods_picture` VALUES ('18', '/images/4BF232B451EC43B524A5477EC0E1E5F4.jpg', '/images/8256384351F0534795F9AD5FB1F43DD4.jpg', '/images/F07382FB5A78C9F356EA5DA077534C57.jpg', '/images/8C8929FFBE9BE42727A0AADF78289483.jpg', '/images/44E1213FC533A2923DDE3B23D8D5ACB4.jpg', '18');
INSERT INTO `goods_picture` VALUES ('19', '/images/1656665830038.jpg', '/images/1656665832385.jpg', '/images/1656665834500.jpg', '/images/1656665838428.jpg', '/images/1656665840400.jpg', '19');
INSERT INTO `goods_picture` VALUES ('20', '/images/740268081F2D5ABB1F87AA4311D23324.jpg', '/images/A3618A09F456DEEEF328BD2A0AFA2940.jpg', '/images/6090D859B519D8E2ECF736F28F2BFDD6.jpg', '/images/460E507CF88AE03A06FF39BDB5FF10EB.jpg', '/images/0EC271AEC11FD7B902EBB3928DBB3F1E.jpg', '20');
INSERT INTO `goods_picture` VALUES ('21', '/images/AC6853F180E3E97FF594A0760F5C299D.jpg', '/images/DF33760377C80565AB8E381018E42D56.jpg', '/images/F7D7E847832DAB310EC17236DE28999C.jpg', '/images/6B4BBB60FDCA275D25AE79371B5ABE7F.jpg', '/images/578AECCB5DDF229C2BAB3DAF30684A24.jpg', '21');
INSERT INTO `goods_picture` VALUES ('22', '/images/1656666787701.jpg', '/images/1656666789792.jpg', '/images/1656666791673.jpg', '/images/1656666793660.jpg', '/images/1656666795665.jpg', '22');
INSERT INTO `goods_picture` VALUES ('23', '/images/1656666826326.jpg', '/images/1656666828189.jpg', '/images/1656666830118.jpg', '/images/1656666832123.jpg', '/images/1656666835611.jpg', '23');
INSERT INTO `goods_picture` VALUES ('24', '/images/1656666928945.jpg', '/images/1656666930927.jpg', '/images/1656666932840.jpg', '/images/1656666936510.jpg', '/images/1656666939222.jpg', '24');
INSERT INTO `goods_picture` VALUES ('25', '/images/1656666975712.jpg', '/images/1656666977542.jpg', '/images/1656666981032.jpg', '/images/1656666983382.jpg', '/images/1656666985620.jpg', '25');
INSERT INTO `goods_picture` VALUES ('26', '/images/1656667929508.jpg', '/images/1656667932710.jpg', '/images/1656667938998.jpg', '', '', '26');
INSERT INTO `goods_picture` VALUES ('27', '/images/1656667953648.jpg', '/images/1656667958237.jpg', '/images/1656667960376.jpg', '/images/1656667962441.jpg', '', '27');
INSERT INTO `goods_picture` VALUES ('28', '/images/1656668110520.jpg', '/images/1656668112608.jpg', '/images/1656668116821.jpg', '', '', '28');
INSERT INTO `goods_picture` VALUES ('29', '/images/1656668160493.jpg', '/images/1656668163270.jpg', '/images/1656668169044.jpg', '/images/1656668171272.jpg', '', '29');
INSERT INTO `goods_picture` VALUES ('30', '/images/1656668209128.jpg', '/images/1656668211033.jpg', '/images/1656668212924.jpg', '/images/1656668214833.jpg', '/images/1656668217406.jpg', '30');
INSERT INTO `goods_picture` VALUES ('31', '/images/1656747777033.jpg', '/images/1656747779415.jpg', '/images/1656747781401.jpg', '/images/1656747785131.jpg', '/images/1656747788371.jpg', '31');
INSERT INTO `goods_picture` VALUES ('32', '/images/1656747948992.jpg', '/images/1656747951592.jpg', '/images/1656747955754.jpg', '', '', '32');
INSERT INTO `goods_picture` VALUES ('33', '/images/1656747988570.jpg', '/images/1656747990773.jpg', '/images/1656747992812.jpg', '/images/1656747994851.jpg', '/images/1656747996704.jpg', '33');
INSERT INTO `goods_picture` VALUES ('34', '/images/1656748049222.jpg', '/images/1656748051273.jpg', '/images/1656748053053.jpg', '/images/1656748056933.jpg', '/images/1656748060826.jpg', '34');
INSERT INTO `goods_picture` VALUES ('35', '/images/1656748100453.jpg', '/images/1656748102307.jpg', '/images/1656748105401.jpg', '/images/1656748108605.jpg', '/images/1656748110911.jpg', '35');
INSERT INTO `goods_picture` VALUES ('36', '/images/1656749101048.jpg', '/images/1656749105279.jpg', '/images/1656749107350.jpg', '/images/1656749109425.jpg', '', '36');
INSERT INTO `goods_picture` VALUES ('37', '/images/1656749174492.jpg', '/images/1656749178407.jpg', '/images/1656749181564.jpg', '/images/1656749183624.jpg', '', '37');
INSERT INTO `goods_picture` VALUES ('38', '/images/1656749252541.jpg', '/images/1656749256528.jpg', '/images/1656749258807.jpg', '/images/1656749262393.jpg', '', '38');
INSERT INTO `goods_picture` VALUES ('39', '/images/1656749323739.jpg', '/images/1656749325634.jpg', '/images/1656749328198.jpg', '/images/1656749330473.jpg', '', '39');
INSERT INTO `goods_picture` VALUES ('40', '/images/1656749398693.jpg', '/images/1656749400664.jpg', '/images/1656749403180.jpg', '', '', '40');
INSERT INTO `goods_picture` VALUES ('41', '/images/1656750092923.jpg', '/images/1656750098236.jpg', '/images/1656750100595.jpg', '/images/1656750102729.jpg', '', '41');
INSERT INTO `goods_picture` VALUES ('42', '/images/1656750265872.jpg', '/images/1656750267800.jpg', '/images/1656750271201.jpg', '/images/1656750274046.jpg', '/images/1656750276170.jpg', '42');
INSERT INTO `goods_picture` VALUES ('43', '/images/1656750235513.jpg', '/images/1656750238665.jpg', '/images/1656750240688.jpg', '/images/1656750242773.jpg', '', '43');
INSERT INTO `goods_picture` VALUES ('44', '/images/1656750399943.jpg', '/images/1656750401822.jpg', '/images/1656750404564.jpg', '/images/1656750409270.jpg', '', '44');
INSERT INTO `goods_picture` VALUES ('45', '/images/1656750438230.jpg.jpg', '/images/1656750442777.jpg.jpg', '/images/1656750447605.jpg.jpg', '', '', '45');
INSERT INTO `goods_picture` VALUES ('46', '/images/1656751105768.jpg', '/images/1656751109229.jpg', '/images/1656751113438.jpg', '', '', '46');
INSERT INTO `goods_picture` VALUES ('47', '/images/1656751152106.jpg', '/images/1656751154175.jpg', '/images/1656751156056.jpg', '/images/1656751158187.jpg', '', '47');
INSERT INTO `goods_picture` VALUES ('48', '/images/1656751194918.jpg', '/images/1656751199397.jpg', '/images/1656751201326.jpg', '/images/1656751204804.jpg', '', '48');
INSERT INTO `goods_picture` VALUES ('49', '/images/1656751262080.jpg', '/images/1656751264338.jpg', '/images/1656751266592.jpg', '/images/1656751268753.jpg', '/images/1656751270878.jpg', '49');
INSERT INTO `goods_picture` VALUES ('50', '/images/1656751309801.jpg', '/images/1656751312559.jpg', '/images/1656751314819.jpg', '/images/1656751317047.jpg', '/images/1656751319656.jpg', '50');
INSERT INTO `goods_picture` VALUES ('51', '/images/1656752087925.jpg', '/images/1656752090026.jpg', '/images/1656752092085.jpg', '/images/1656752095268.jpg', '/images/1656752097552.jpg', '51');
INSERT INTO `goods_picture` VALUES ('52', '/images/1656752139332.jpg', '/images/1656752141217.jpg', '/images/1656752142966.jpg', '/images/1656752145608.jpg', '/images/1656752147575.jpg', '52');
INSERT INTO `goods_picture` VALUES ('53', '/images/1656752210606.jpg', '/images/1656752212528.jpg', '/images/1656752216156.jpg', '/images/1656752219506.jpg', '/images/1656752221784.jpg', '53');
INSERT INTO `goods_picture` VALUES ('54', '/images/1656752246665.jpg', '/images/1656752248718.jpg', '/images/1656752250642.jpg', '/images/1656752253247.jpg', '/images/1656752256059.jpg', '54');
INSERT INTO `goods_picture` VALUES ('55', '/images/1656752280888.jpg', '/images/1656752283041.jpg', '/images/1656752285091.jpg', '/images/1656752287336.jpg', '/images/1656752289580.jpg', '55');
INSERT INTO `goods_picture` VALUES ('56', '/images/1656753242339.jpg', '/images/1656753245150.jpg', '/images/1656753247496.jpg', '/images/1656753249622.jpg', '/images/1656753251810.jpg', '56');
INSERT INTO `goods_picture` VALUES ('57', '/images/1656753322542.jpg', '/images/1656753324404.jpg', '/images/1656753337974.jpg', '/images/1656753340016.jpg', '', '57');
INSERT INTO `goods_picture` VALUES ('58', '/images/1656753360998.jpg', '/images/1656753363069.jpg', '/images/1656753365086.jpg', '/images/1656753367121.jpg', '', '58');
INSERT INTO `goods_picture` VALUES ('59', '/images/1656753394017.jpg', '/images/1656753399849.jpg', '', '', '', '59');
INSERT INTO `goods_picture` VALUES ('60', '/images/1656753421839.jpg', '/images/1656753423796.jpg', '/images/1656753425649.jpg', '/images/1656753431040.jpg', '', '60');
INSERT INTO `goods_picture` VALUES ('61', '/images/1667044920089.jpg', '/images/1657351970695.jpg', '/images/1657351972795.jpg', '/images/1657351974740.jpg', '/images/1657351976819.jpg', '61');
INSERT INTO `goods_picture` VALUES ('62', '/images/1657352597407.jpg', '/images/1657352599654.jpg', '/images/1657352601800.jpg', '/images/1657352603943.jpg', '/images/1657352606146.jpg', '62');
INSERT INTO `goods_picture` VALUES ('63', '/images/1657352890075.jpg', '/images/1657352892088.jpg', '/images/1657352894052.jpg', '/images/1657352895993.jpg', '/images/1657352897927.jpg', '63');

-- ----------------------------
-- Table structure for `goods_sv`
-- ----------------------------
DROP TABLE IF EXISTS `goods_sv`;
CREATE TABLE `goods_sv` (
  `goodsid` int(11) NOT NULL,
  `sales_volume` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_sv
-- ----------------------------
INSERT INTO `goods_sv` VALUES ('1', '37');
INSERT INTO `goods_sv` VALUES ('2', '61');
INSERT INTO `goods_sv` VALUES ('3', '58');
INSERT INTO `goods_sv` VALUES ('4', '56');
INSERT INTO `goods_sv` VALUES ('5', '45');
INSERT INTO `goods_sv` VALUES ('6', '45');
INSERT INTO `goods_sv` VALUES ('7', '123');
INSERT INTO `goods_sv` VALUES ('8', '12');
INSERT INTO `goods_sv` VALUES ('9', '4');
INSERT INTO `goods_sv` VALUES ('10', '45');
INSERT INTO `goods_sv` VALUES ('11', '12');
INSERT INTO `goods_sv` VALUES ('12', '55');
INSERT INTO `goods_sv` VALUES ('13', '31');
INSERT INTO `goods_sv` VALUES ('14', '47');
INSERT INTO `goods_sv` VALUES ('15', '0');
INSERT INTO `goods_sv` VALUES ('16', '9');
INSERT INTO `goods_sv` VALUES ('17', '0');
INSERT INTO `goods_sv` VALUES ('18', '0');
INSERT INTO `goods_sv` VALUES ('19', '0');
INSERT INTO `goods_sv` VALUES ('20', '11');
INSERT INTO `goods_sv` VALUES ('21', '0');
INSERT INTO `goods_sv` VALUES ('22', '0');
INSERT INTO `goods_sv` VALUES ('23', '0');
INSERT INTO `goods_sv` VALUES ('24', '0');
INSERT INTO `goods_sv` VALUES ('25', '0');
INSERT INTO `goods_sv` VALUES ('26', '0');
INSERT INTO `goods_sv` VALUES ('27', '0');
INSERT INTO `goods_sv` VALUES ('28', '0');
INSERT INTO `goods_sv` VALUES ('29', '0');
INSERT INTO `goods_sv` VALUES ('30', '21');
INSERT INTO `goods_sv` VALUES ('31', '0');
INSERT INTO `goods_sv` VALUES ('32', '0');
INSERT INTO `goods_sv` VALUES ('33', '0');
INSERT INTO `goods_sv` VALUES ('34', '0');
INSERT INTO `goods_sv` VALUES ('35', '36');
INSERT INTO `goods_sv` VALUES ('36', '0');
INSERT INTO `goods_sv` VALUES ('37', '0');
INSERT INTO `goods_sv` VALUES ('38', '0');
INSERT INTO `goods_sv` VALUES ('39', '0');
INSERT INTO `goods_sv` VALUES ('40', '0');
INSERT INTO `goods_sv` VALUES ('41', '0');
INSERT INTO `goods_sv` VALUES ('42', '0');
INSERT INTO `goods_sv` VALUES ('43', '0');
INSERT INTO `goods_sv` VALUES ('44', '0');
INSERT INTO `goods_sv` VALUES ('45', '0');
INSERT INTO `goods_sv` VALUES ('46', '0');
INSERT INTO `goods_sv` VALUES ('47', '0');
INSERT INTO `goods_sv` VALUES ('48', '0');
INSERT INTO `goods_sv` VALUES ('49', '0');
INSERT INTO `goods_sv` VALUES ('50', '0');
INSERT INTO `goods_sv` VALUES ('51', '0');
INSERT INTO `goods_sv` VALUES ('52', '0');
INSERT INTO `goods_sv` VALUES ('53', '0');
INSERT INTO `goods_sv` VALUES ('54', '0');
INSERT INTO `goods_sv` VALUES ('55', '0');
INSERT INTO `goods_sv` VALUES ('56', '0');
INSERT INTO `goods_sv` VALUES ('57', '0');
INSERT INTO `goods_sv` VALUES ('58', '0');
INSERT INTO `goods_sv` VALUES ('59', '0');
INSERT INTO `goods_sv` VALUES ('60', '0');
INSERT INTO `goods_sv` VALUES ('61', '25');
INSERT INTO `goods_sv` VALUES ('62', '20');
INSERT INTO `goods_sv` VALUES ('63', '23');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', '123456');

-- ----------------------------
-- Table structure for `merchant`
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `merchantid` int(5) NOT NULL AUTO_INCREMENT,
  `rid` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `regionname` varchar(30) NOT NULL,
  PRIMARY KEY (`merchantid`),
  KEY `rid` (`rid`),
  CONSTRAINT `rid` FOREIGN KEY (`rid`) REFERENCES `rank` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('1', '102', '长沙社区', '123456', '1554214451', '长沙市', '湖南省长沙市芙蓉区黄兴中路88号');
INSERT INTO `merchant` VALUES ('2', '102', '常德社区社区生鲜平台', '123456', '18845698546', '常德市', '湖南省常德市武陵区滨江公园');
INSERT INTO `merchant` VALUES ('3', '102', 'test', '123456', '11111122222', '邵阳市', '湖南省长沙市芙蓉区黄兴中路99号');
INSERT INTO `merchant` VALUES ('11', '102', 'lisi', '123456', '18152853671', '长沙', 'lisi');

-- ----------------------------
-- Table structure for `merchant_monthincome`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_monthincome`;
CREATE TABLE `merchant_monthincome` (
  `merchantid` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `monthlyIncome` double NOT NULL,
  PRIMARY KEY (`merchantid`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_monthincome
-- ----------------------------
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-01', '685136');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-02', '641535');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-03', '3435652');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-04', '284156');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-05', '435525');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-06', '1646351');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-07', '415634');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-08', '5135435');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-09', '6534145');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-10', '6845111');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-11', '6845145');
INSERT INTO `merchant_monthincome` VALUES ('1', '2020-12', '6514561');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-01', '346534');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-02', '437552');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-03', '5435060');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-04', '46533');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-05', '874327');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-06', '5427452');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-07', '1152535');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-08', '4634536');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-09', '3215356');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-10', '437687');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-11', '3466546');
INSERT INTO `merchant_monthincome` VALUES ('1', '2021-12', '3427555');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-01', '135345');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-02', '387136');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-03', '1346456');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-04', '262564');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-05', '346657');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-06', '2475756');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-07', '2563656');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-08', '134442');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-09', '3414657');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-10', '978732');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-11', '257777');
INSERT INTO `merchant_monthincome` VALUES ('1', '2022-12', '-809');

-- ----------------------------
-- Table structure for `merchant_qualification`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_qualification`;
CREATE TABLE `merchant_qualification` (
  `merchantid` int(11) NOT NULL,
  `storePic` varchar(255) NOT NULL,
  `businessLicense` varchar(255) NOT NULL,
  `idCard` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'false',
  `msg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`merchantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_qualification
-- ----------------------------
INSERT INTO `merchant_qualification` VALUES ('1', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', 'true', '审核通过');
INSERT INTO `merchant_qualification` VALUES ('2', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', 'true', '审核通过');
INSERT INTO `merchant_qualification` VALUES ('3', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', '/qulifiImg/雪景.jpg', 'true', '审核通过');
INSERT INTO `merchant_qualification` VALUES ('11', '/qulifiImg/fd62e1a0da4e400cbd0476f8dfd924c7.jpg', '/qulifiImg/16a70e660a484cfd9587dd91218c3591.jpg', '/qulifiImg/c6bb1b0a86a640cf97bc044bf1c77481.jpeg', 'true', '审核通过');

-- ----------------------------
-- Table structure for `merchant_yearincome`
-- ----------------------------
DROP TABLE IF EXISTS `merchant_yearincome`;
CREATE TABLE `merchant_yearincome` (
  `merchantid` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `annualIncome` double NOT NULL,
  PRIMARY KEY (`merchantid`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of merchant_yearincome
-- ----------------------------
INSERT INTO `merchant_yearincome` VALUES ('1', '2015', '15345645.3');
INSERT INTO `merchant_yearincome` VALUES ('1', '2016', '461267412.7');
INSERT INTO `merchant_yearincome` VALUES ('1', '2017', '3745564');
INSERT INTO `merchant_yearincome` VALUES ('1', '2018', '95124962.9');
INSERT INTO `merchant_yearincome` VALUES ('1', '2019', '986516531');
INSERT INTO `merchant_yearincome` VALUES ('1', '2020', '39418386');
INSERT INTO `merchant_yearincome` VALUES ('1', '2021', '28901673');
INSERT INTO `merchant_yearincome` VALUES ('2', '2021', '63123864.6');

-- ----------------------------
-- Table structure for `mergoods`
-- ----------------------------
DROP TABLE IF EXISTS `mergoods`;
CREATE TABLE `mergoods` (
  `ID` int(30) NOT NULL AUTO_INCREMENT,
  `merchantid` int(30) NOT NULL,
  `goodsid` int(30) NOT NULL,
  `amount` int(30) NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mergoods
-- ----------------------------
INSERT INTO `mergoods` VALUES ('1', '1', '1', '1000', '1');
INSERT INTO `mergoods` VALUES ('2', '1', '2', '1000', '1');
INSERT INTO `mergoods` VALUES ('3', '1', '3', '1000', '1');
INSERT INTO `mergoods` VALUES ('4', '1', '4', '1000', '1');
INSERT INTO `mergoods` VALUES ('5', '1', '5', '1000', '1');
INSERT INTO `mergoods` VALUES ('6', '1', '6', '1000', '1');
INSERT INTO `mergoods` VALUES ('7', '1', '7', '1000', '1');
INSERT INTO `mergoods` VALUES ('8', '1', '8', '1000', '1');
INSERT INTO `mergoods` VALUES ('9', '1', '9', '1000', '1');
INSERT INTO `mergoods` VALUES ('10', '1', '10', '1000', '1');
INSERT INTO `mergoods` VALUES ('11', '1', '11', '1000', '1');
INSERT INTO `mergoods` VALUES ('12', '1', '12', '1000', '1');
INSERT INTO `mergoods` VALUES ('13', '1', '13', '1000', '1');
INSERT INTO `mergoods` VALUES ('14', '1', '14', '1000', '1');
INSERT INTO `mergoods` VALUES ('15', '1', '15', '1000', '1');
INSERT INTO `mergoods` VALUES ('16', '1', '16', '1000', '1');
INSERT INTO `mergoods` VALUES ('17', '1', '17', '1000', '1');
INSERT INTO `mergoods` VALUES ('18', '1', '18', '1000', '1');
INSERT INTO `mergoods` VALUES ('19', '1', '19', '1000', '1');
INSERT INTO `mergoods` VALUES ('20', '1', '20', '1000', '1');
INSERT INTO `mergoods` VALUES ('21', '1', '21', '1000', '1');
INSERT INTO `mergoods` VALUES ('22', '1', '22', '1000', '1');
INSERT INTO `mergoods` VALUES ('23', '1', '23', '1000', '1');
INSERT INTO `mergoods` VALUES ('24', '1', '24', '1000', '1');
INSERT INTO `mergoods` VALUES ('25', '1', '25', '1000', '1');
INSERT INTO `mergoods` VALUES ('26', '1', '26', '1000', '1');
INSERT INTO `mergoods` VALUES ('27', '1', '27', '1000', '1');
INSERT INTO `mergoods` VALUES ('28', '1', '28', '1000', '1');
INSERT INTO `mergoods` VALUES ('29', '1', '29', '1000', '1');
INSERT INTO `mergoods` VALUES ('30', '1', '30', '1000', '1');
INSERT INTO `mergoods` VALUES ('31', '1', '31', '1000', '1');
INSERT INTO `mergoods` VALUES ('32', '1', '32', '1000', '1');
INSERT INTO `mergoods` VALUES ('33', '1', '33', '1000', '1');
INSERT INTO `mergoods` VALUES ('34', '1', '34', '1000', '1');
INSERT INTO `mergoods` VALUES ('35', '1', '35', '1000', '1');
INSERT INTO `mergoods` VALUES ('36', '1', '36', '1000', '1');
INSERT INTO `mergoods` VALUES ('37', '1', '37', '1000', '1');
INSERT INTO `mergoods` VALUES ('38', '1', '38', '1000', '1');
INSERT INTO `mergoods` VALUES ('39', '1', '39', '1000', '1');
INSERT INTO `mergoods` VALUES ('40', '1', '40', '1000', '1');
INSERT INTO `mergoods` VALUES ('41', '1', '41', '1000', '1');
INSERT INTO `mergoods` VALUES ('42', '1', '42', '1000', '1');
INSERT INTO `mergoods` VALUES ('43', '1', '43', '1000', '1');
INSERT INTO `mergoods` VALUES ('44', '1', '44', '1000', '1');
INSERT INTO `mergoods` VALUES ('45', '1', '45', '1000', '1');
INSERT INTO `mergoods` VALUES ('46', '1', '46', '1000', '1');
INSERT INTO `mergoods` VALUES ('47', '1', '47', '1000', '1');
INSERT INTO `mergoods` VALUES ('48', '1', '48', '1000', '1');
INSERT INTO `mergoods` VALUES ('49', '1', '49', '1000', '1');
INSERT INTO `mergoods` VALUES ('50', '1', '50', '1000', '1');
INSERT INTO `mergoods` VALUES ('51', '1', '51', '1000', '1');
INSERT INTO `mergoods` VALUES ('52', '1', '52', '1000', '1');
INSERT INTO `mergoods` VALUES ('53', '1', '53', '1000', '1');
INSERT INTO `mergoods` VALUES ('54', '1', '54', '1000', '1');
INSERT INTO `mergoods` VALUES ('55', '1', '55', '1000', '1');
INSERT INTO `mergoods` VALUES ('56', '1', '56', '1000', '1');
INSERT INTO `mergoods` VALUES ('57', '1', '57', '1000', '1');
INSERT INTO `mergoods` VALUES ('58', '1', '58', '1000', '1');
INSERT INTO `mergoods` VALUES ('59', '1', '59', '1000', '1');
INSERT INTO `mergoods` VALUES ('60', '1', '60', '1000', '1');
INSERT INTO `mergoods` VALUES ('61', '1', '61', '1000', '1');
INSERT INTO `mergoods` VALUES ('62', '1', '62', '1000', '1');
INSERT INTO `mergoods` VALUES ('63', '1', '63', '1000', '1');
INSERT INTO `mergoods` VALUES ('64', '2', '1', '1000', '1');
INSERT INTO `mergoods` VALUES ('65', '2', '2', '1000', '1');
INSERT INTO `mergoods` VALUES ('66', '2', '3', '1000', '1');
INSERT INTO `mergoods` VALUES ('67', '2', '4', '1000', '1');
INSERT INTO `mergoods` VALUES ('68', '2', '5', '1000', '1');
INSERT INTO `mergoods` VALUES ('69', '2', '6', '1000', '1');
INSERT INTO `mergoods` VALUES ('70', '2', '7', '1000', '1');
INSERT INTO `mergoods` VALUES ('71', '2', '8', '1000', '1');
INSERT INTO `mergoods` VALUES ('72', '2', '9', '1000', '1');
INSERT INTO `mergoods` VALUES ('73', '2', '10', '1000', '1');
INSERT INTO `mergoods` VALUES ('74', '2', '11', '1000', '1');
INSERT INTO `mergoods` VALUES ('75', '2', '12', '1000', '1');
INSERT INTO `mergoods` VALUES ('76', '2', '13', '1000', '1');
INSERT INTO `mergoods` VALUES ('77', '2', '14', '1000', '1');
INSERT INTO `mergoods` VALUES ('78', '2', '15', '1000', '1');
INSERT INTO `mergoods` VALUES ('79', '2', '16', '1000', '1');
INSERT INTO `mergoods` VALUES ('80', '2', '17', '1000', '1');
INSERT INTO `mergoods` VALUES ('81', '2', '18', '1000', '1');
INSERT INTO `mergoods` VALUES ('82', '2', '19', '1000', '1');
INSERT INTO `mergoods` VALUES ('83', '2', '20', '1000', '1');
INSERT INTO `mergoods` VALUES ('84', '2', '21', '1000', '1');
INSERT INTO `mergoods` VALUES ('85', '2', '22', '1000', '1');
INSERT INTO `mergoods` VALUES ('86', '2', '23', '1000', '1');
INSERT INTO `mergoods` VALUES ('87', '2', '24', '1000', '1');
INSERT INTO `mergoods` VALUES ('88', '2', '25', '1000', '1');
INSERT INTO `mergoods` VALUES ('89', '2', '26', '1000', '1');
INSERT INTO `mergoods` VALUES ('90', '2', '27', '1000', '1');
INSERT INTO `mergoods` VALUES ('91', '2', '28', '1000', '1');
INSERT INTO `mergoods` VALUES ('92', '2', '29', '1000', '1');
INSERT INTO `mergoods` VALUES ('93', '2', '30', '1000', '1');
INSERT INTO `mergoods` VALUES ('94', '2', '31', '1000', '1');
INSERT INTO `mergoods` VALUES ('95', '2', '32', '1000', '1');
INSERT INTO `mergoods` VALUES ('96', '2', '33', '1000', '1');
INSERT INTO `mergoods` VALUES ('97', '2', '34', '1000', '1');
INSERT INTO `mergoods` VALUES ('98', '2', '35', '1000', '1');
INSERT INTO `mergoods` VALUES ('99', '2', '36', '1000', '1');
INSERT INTO `mergoods` VALUES ('100', '2', '37', '1000', '1');
INSERT INTO `mergoods` VALUES ('101', '2', '38', '1000', '1');
INSERT INTO `mergoods` VALUES ('102', '2', '39', '1000', '1');
INSERT INTO `mergoods` VALUES ('103', '2', '40', '1000', '1');
INSERT INTO `mergoods` VALUES ('104', '2', '41', '1000', '1');
INSERT INTO `mergoods` VALUES ('105', '2', '42', '1000', '1');
INSERT INTO `mergoods` VALUES ('106', '2', '43', '1000', '1');
INSERT INTO `mergoods` VALUES ('107', '2', '44', '1000', '1');
INSERT INTO `mergoods` VALUES ('108', '2', '45', '1000', '1');
INSERT INTO `mergoods` VALUES ('109', '2', '46', '1000', '1');
INSERT INTO `mergoods` VALUES ('110', '2', '47', '1000', '1');
INSERT INTO `mergoods` VALUES ('111', '2', '48', '1000', '1');
INSERT INTO `mergoods` VALUES ('112', '2', '49', '1000', '1');
INSERT INTO `mergoods` VALUES ('113', '2', '50', '1000', '1');
INSERT INTO `mergoods` VALUES ('114', '2', '51', '1000', '1');
INSERT INTO `mergoods` VALUES ('115', '2', '52', '1000', '1');
INSERT INTO `mergoods` VALUES ('116', '2', '53', '1000', '1');
INSERT INTO `mergoods` VALUES ('117', '2', '54', '1000', '1');
INSERT INTO `mergoods` VALUES ('118', '2', '55', '1000', '1');
INSERT INTO `mergoods` VALUES ('119', '2', '56', '1000', '1');
INSERT INTO `mergoods` VALUES ('120', '2', '57', '1000', '1');
INSERT INTO `mergoods` VALUES ('121', '2', '58', '1000', '1');
INSERT INTO `mergoods` VALUES ('122', '2', '59', '1000', '1');
INSERT INTO `mergoods` VALUES ('123', '2', '60', '1000', '1');
INSERT INTO `mergoods` VALUES ('124', '2', '61', '1000', '1');
INSERT INTO `mergoods` VALUES ('125', '2', '62', '1000', '1');
INSERT INTO `mergoods` VALUES ('126', '2', '63', '1000', '1');

-- ----------------------------
-- Table structure for `order_info`
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `title` varchar(256) NOT NULL COMMENT '订单标题',
  `orderNo` varchar(50) NOT NULL COMMENT '商户订单编号',
  `goodsid` varchar(255) NOT NULL COMMENT '支付产品id',
  `totalFee` int(11) NOT NULL COMMENT '订单金额(分)',
  `codeUrl` varchar(50) NOT NULL COMMENT '订单二维码连接',
  `orderStatus` varchar(10) NOT NULL COMMENT '订单状态',
  `riderID` int(255) DEFAULT NULL,
  `merchantid` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('20', 'test', 'ORDER_20220807162940945', '10012 10013', '1', 'weixin://wxpay/bizpayurl?pr=AB25yIDzz', '已完成', '1001', '1');
INSERT INTO `order_info` VALUES ('32', '海南三亚 妃子笑荔枝 1.5kg x2\n海南三亚 妃子笑荔枝 1.5kg x2\n', 'SQSX_20221018190009787', '10021 10022 ', '2', 'weixin://wxpay/bizpayurl?pr=ewdoWsfzz', '配送中', '1001', '1');
INSERT INTO `order_info` VALUES ('34', '安研科轻透防水防晒防蓝光乳液SPF50+50g x1\n汇柒鲜 羊蝎子火锅 1.2kg x1\n', 'SQSX_20221027120048637', '10037 10038 ', '2', 'weixin://wxpay/bizpayurl?pr=Ipr3Zmtzz', '退款成功', '1001', '1');
INSERT INTO `order_info` VALUES ('40', '海南三亚 妃子笑荔枝 1.5kg x1\n', 'SQSX_20221027121415314', '10044 ', '1', 'weixin://wxpay/bizpayurl?pr=d8VzvYjzz', '拒绝退款', '1001', '1');
INSERT INTO `order_info` VALUES ('41', '海南三亚 妃子笑荔枝 1.5kg x1\n', 'SQSX_20221027153112686', '10045 ', '1', 'weixin://wxpay/bizpayurl?pr=z1YaOyFzz', '已完成', '1001', '1');
INSERT INTO `order_info` VALUES ('42', '汇柒鲜 羊蝎子火锅 1.2kg x1\n海南三亚 妃子笑荔枝 1.5kg x1\n', 'SQSX_20221027162117195', '10046 10047 ', '1', 'weixin://wxpay/bizpayurl?pr=Qrpzjm3zz', '已完成', '1001', '1');
INSERT INTO `order_info` VALUES ('43', '云南玉溪 沃柑 2.5kg x1\n吉林松原 黄糯玉米 2kg x1\n', 'SQSX_20221030214244419', '10048 10049 ', '1', 'weixin://wxpay/bizpayurl?pr=SntllFKzz', '退款中', '1001', '1');
INSERT INTO `order_info` VALUES ('44', '吉林松原 黄糯玉米 2kg x6\n云南玉溪 沃柑 2.5kg x1\n', 'SQSX_20221030221027077', '10051 10052 ', '1', 'weixin://wxpay/bizpayurl?pr=FbmJmCczz', '拒绝退款', '1001', '1');
INSERT INTO `order_info` VALUES ('45', '云南玉溪 沃柑 2.5kg x1\n吉林松原 黄糯玉米 2kg x6\n', 'SQSX_20221030221139402', '10053 10054 ', '1', 'weixin://wxpay/bizpayurl?pr=Las5W4nzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('46', '海南三亚 妃子笑荔枝 1.5kg x1\n山东威海 黄海小船小八爪鱼 1kg x1\n', 'SQSX_20221030224653341', '10055 10056 ', '1', 'weixin://wxpay/bizpayurl?pr=BYqAHJFzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('47', '云南玉溪 沃柑 2.5kg x1\n汇柒鲜 羊蝎子火锅 1.2kg x1\n', 'SQSX_20221030224703578', '10057 10058 ', '1', 'weixin://wxpay/bizpayurl?pr=zzFaFb2zz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('48', '汇柒鲜 羊蝎子火锅 1.2kg x1\n云南玉溪 沃柑 2.5kg x1\n', 'SQSX_20221030224920469', '10060 10059 ', '1', 'weixin://wxpay/bizpayurl?pr=Are7RA3zz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('49', '海南三亚 妃子笑荔枝 1.5kg x9\n内蒙古 巴彦淖尔黑毛和牛谷饲 肥牛肉片 1kg（非当日达） x1\n', 'SQSX_20221030225131535', '10061 10062 ', '1', 'weixin://wxpay/bizpayurl?pr=d4zqNwwzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('50', '云南玉溪 沃柑 2.5kg x1\n吉林松原 黄糯玉米 2kg x6\n', 'SQSX_20221030225151648', '10063 10064 ', '1', 'weixin://wxpay/bizpayurl?pr=9jjD71Bzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('51', '海南三亚 妃子笑荔枝 1.5kg x9\n汇柒鲜 羊蝎子火锅 1.2kg x1\n', 'SQSX_20221030225203700', '10065 10066 ', '1', 'weixin://wxpay/bizpayurl?pr=VfFpPMGzz', '拒绝退款', '1001', '1');
INSERT INTO `order_info` VALUES ('52', '海南三亚 妃子笑荔枝 1.5kg x2\n', 'SQSX_20221211153713848', '10068 ', '1', 'weixin://wxpay/bizpayurl?pr=5AKQpM8zz', '配送中', '1001', '1');
INSERT INTO `order_info` VALUES ('53', '海南三亚 妃子笑荔枝 1.5kg x1\n山东 水果玉米 1.0kg x1\n', 'SQSX_20221217131426791', '10069 10070 ', '1', 'weixin://wxpay/bizpayurl?pr=2kWjgSAzz', '退款中', null, '1');
INSERT INTO `order_info` VALUES ('54', '时令水果 x3\n', 'SQSX_20221217131853808', '10071 ', '1', 'weixin://wxpay/bizpayurl?pr=sR6MUiEzz', '退款中', null, '1');
INSERT INTO `order_info` VALUES ('55', '山东 水果玉米 1.0kg x1\n海南三亚 妃子笑荔枝 1.5kg x1\n时令水果 x3\n', 'SQSX_20221217132207929', '10073 10072 10074 ', '1', 'weixin://wxpay/bizpayurl?pr=WdrjNSVzz', '退款成功', null, '1');
INSERT INTO `order_info` VALUES ('56', '山东 水果玉米 1.0kg x1\n海南三亚 妃子笑荔枝 1.5kg x1\n时令水果 x3\n', 'SQSX_20221217132416774', '10075 10076 10077 ', '1', 'weixin://wxpay/bizpayurl?pr=kHeqpTmzz', '已完成', '1001', '1');
INSERT INTO `order_info` VALUES ('57', '山东 水果玉米 1.0kg x1\n', 'SQSX_20221217132704105', '10078 ', '1', 'weixin://wxpay/bizpayurl?pr=4o6McdIzz', '退款中', null, '1');
INSERT INTO `order_info` VALUES ('58', '时令水果 x1\n佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n x1\n', 'SQSX_20221217135856954', '10079 10080 ', '1', 'weixin://wxpay/bizpayurl?pr=2bxAJHNzz', '退款中', null, '1');
INSERT INTO `order_info` VALUES ('59', '时令水果 x1\n佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n x1\n', 'SQSX_20221217153730573', '10082 10081 ', '1', 'weixin://wxpay/bizpayurl?pr=h9D1Nh3zz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('60', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n x1\n', 'SQSX_20221219110405040', '10083 ', '1', 'weixin://wxpay/bizpayurl?pr=peETYEAzz', '已收货', '1001', '1');
INSERT INTO `order_info` VALUES ('61', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n x1\n', 'SQSX_20221219194434737', '10084 ', '1', 'weixin://wxpay/bizpayurl?pr=sZ661S6zz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('62', '时令水果 x1\n佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n x1\n', 'SQSX_20221219194448794', '10085 10086 ', '1', 'weixin://wxpay/bizpayurl?pr=opWM4iwzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('63', '时令水果 x1\n', 'SQSX_20221219194457979', '10087 ', '1', 'weixin://wxpay/bizpayurl?pr=XXPW14Rzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('64', '海南三亚 妃子笑荔枝 1.5kg x1\n', 'SQSX_20221219201620029', '10088 ', '1', 'weixin://wxpay/bizpayurl?pr=75mE3QAzz', '支付成功', null, '1');
INSERT INTO `order_info` VALUES ('65', '海南三亚 妃子笑荔枝 1.5kg x1\n', 'SQSX_20221219202025129', '10089 ', '1', 'weixin://wxpay/bizpayurl?pr=0oGz2rAzz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('66', '海南三亚 妃子笑荔枝 1.5kg x8\n', 'SQSX_20221219204411999', '10090 ', '1', 'weixin://wxpay/bizpayurl?pr=gBZQqU4zz', '已取消', null, '1');
INSERT INTO `order_info` VALUES ('67', '山东威海 黄海小船小八爪鱼 1kg x1\n海南三亚 妃子笑荔枝 1.5kg x11\n', 'SQSX_20221220104405235', '10091 10092 ', '1', 'weixin://wxpay/bizpayurl?pr=sL9kyBxzz', '退款中', null, '1');
INSERT INTO `order_info` VALUES ('68', '云南玉溪 沃柑 2.5kg x4\n吉林松原 黄糯玉米 2kg x9\n', 'SQSX_20221220104715126', '10093 10094 ', '1', 'weixin://wxpay/bizpayurl?pr=r5Ns5uYzz', '待配送', null, '1');

-- ----------------------------
-- Table structure for `rank`
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `rid` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES ('102', '商家');
INSERT INTO `rank` VALUES ('103', '用户');
INSERT INTO `rank` VALUES ('101', '管理员');
INSERT INTO `rank` VALUES ('104', '骑手');

-- ----------------------------
-- Table structure for `refund_info`
-- ----------------------------
DROP TABLE IF EXISTS `refund_info`;
CREATE TABLE `refund_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(255) NOT NULL DEFAULT '',
  `refundNo` varchar(255) NOT NULL DEFAULT '',
  `goodsID` varchar(255) DEFAULT '',
  `refundId` varchar(255) DEFAULT '',
  `totalFee` int(255) DEFAULT NULL,
  `refund` int(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT '',
  `refundImg` varchar(255) DEFAULT '',
  `refundStatus` varchar(255) DEFAULT NULL,
  `beginTime` varchar(30) DEFAULT '',
  `endTime` varchar(30) DEFAULT '',
  `merchantid` int(30) DEFAULT NULL,
  PRIMARY KEY (`id`,`orderNo`,`refundNo`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refund_info
-- ----------------------------
INSERT INTO `refund_info` VALUES ('21', 'SQSX_20221027120048637', 'REFUND_20221031221958179', '7 6', '50300503612022121428464364829', '1', '1', '商品错选/多选/漏选', '', '退款成功', '2022-11-16 14:15:33', '2022-12-14 09:31:53', '1');
INSERT INTO `refund_info` VALUES ('24', 'SQSX_20221030214244419', 'REFUND_20221031223313270', '1', '50300603742022121928759076213', '1', '1', '商品错选/多选/漏选', '', '退款成功', '2022-11-16 14:15:33', '2022-12-19 16:31:18', '1');
INSERT INTO `refund_info` VALUES ('25', 'SQSX_20221027121415314', 'REFUND_20221031225036158', '2', '', '1', '1', '商品错选/多选/漏选', '', '拒绝退款', '2022-11-16 14:15:33', '2022-12-14 09:28:08', '1');
INSERT INTO `refund_info` VALUES ('28', 'SQSX_20221030225203700', 'REFUND_20221031230536207', '2', '', '1', '1', '商品错选/多选/漏选', '', '拒绝退款', '2022-11-16 14:15:33', '2022-12-19 16:32:25', '1');
INSERT INTO `refund_info` VALUES ('30', 'SQSX_20221030221027077', 'REFUND_20221031231005659', '3 1', '', '1', '1', '商品错选/多选/漏选', '/refundImg/7e16fd7b04e941e38095bc8ee373ae4b.webp,/refundImg/ed370836de5d44dba7031c8d1f0c08af.jpg,', '拒绝退款', '2022-11-16 14:15:33', '2022-11-16 16:22:58', '1');
INSERT INTO `refund_info` VALUES ('31', 'SQSX_20221217131426791', 'REFUND_20221217134357837', '3 2', '50300004472022121928757891881', '1', '1', '商品错选/多选/漏选', '', '退款成功', '2022-12-17 13:43:57', '2022-12-19 16:31:27', '1');
INSERT INTO `refund_info` VALUES ('32', 'SQSX_20221217132207929', 'REFUND_20221217134548712', '2 1 3', '50301204202022121728631075806', '1', '1', '不喜欢/不想要', '/refundImg/8339ab6842cc4f7fa035e7b376b566fb.jpeg,', '退款成功', '2022-12-17 13:45:48', '2022-12-17 14:20:53', '1');
INSERT INTO `refund_info` VALUES ('33', 'SQSX_20221217132704105', 'REFUND_20221217140652322', '3', '50300304182022121728634200214', '1', '1', '不喜欢/不想要', '/refundImg/200d206b2d0545e18d70c05adcad728d.jpeg,', '退款成功', '2022-12-17 14:06:52', '2022-12-17 15:34:52', '1');
INSERT INTO `refund_info` VALUES ('34', 'SQSX_20221217135856954', 'REFUND_20221219194724327', '13 1', '50300704302022122028782950547', '1', '1', '未使用优惠卷', '', '退款成功', '2022-12-19 19:47:26', '2022-12-20 10:47:03', '1');
INSERT INTO `refund_info` VALUES ('35', 'SQSX_20221217131853808', 'REFUND_20221219194823826', '1', '', '1', '1', '商品错选/多选/漏选', '', '退款中', '2022-12-19 19:48:25', '', '1');
INSERT INTO `refund_info` VALUES ('36', 'SQSX_20221220104405235', 'REFUND_20221220104444134', '4 2', '50302604392022122028783547906', '1', '1', '未使用优惠卷', '/refundImg/e4d83320d63d450191319918aebec554.jpeg,', '退款成功', '2022-12-20 10:44:46', '2022-12-20 10:47:08', '1');

-- ----------------------------
-- Table structure for `region`
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` smallint(5) unsigned NOT NULL,
  `pid` smallint(5) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型，0:省；1:市; 2: 区',
  `code` char(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3513 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '0', '0', '110000', '北京市');
INSERT INTO `region` VALUES ('2', '1', '1', '110100', '市辖区');
INSERT INTO `region` VALUES ('3', '2', '2', '110101', '东城区');
INSERT INTO `region` VALUES ('4', '2', '2', '110102', '西城区');
INSERT INTO `region` VALUES ('5', '2', '2', '110105', '朝阳区');
INSERT INTO `region` VALUES ('6', '2', '2', '110106', '丰台区');
INSERT INTO `region` VALUES ('7', '2', '2', '110107', '石景山区');
INSERT INTO `region` VALUES ('8', '2', '2', '110108', '海淀区');
INSERT INTO `region` VALUES ('9', '2', '2', '110109', '门头沟区');
INSERT INTO `region` VALUES ('10', '2', '2', '110111', '房山区');
INSERT INTO `region` VALUES ('11', '2', '2', '110112', '通州区');
INSERT INTO `region` VALUES ('12', '2', '2', '110113', '顺义区');
INSERT INTO `region` VALUES ('13', '2', '2', '110114', '昌平区');
INSERT INTO `region` VALUES ('14', '2', '2', '110115', '大兴区');
INSERT INTO `region` VALUES ('15', '2', '2', '110116', '怀柔区');
INSERT INTO `region` VALUES ('16', '2', '2', '110117', '平谷区');
INSERT INTO `region` VALUES ('17', '1', '1', '110200', '县');
INSERT INTO `region` VALUES ('18', '17', '2', '110228', '密云县');
INSERT INTO `region` VALUES ('19', '17', '2', '110229', '延庆县');
INSERT INTO `region` VALUES ('20', '0', '0', '120000', '天津市');
INSERT INTO `region` VALUES ('21', '20', '1', '120100', '市辖区');
INSERT INTO `region` VALUES ('22', '21', '2', '120101', '和平区');
INSERT INTO `region` VALUES ('23', '21', '2', '120102', '河东区');
INSERT INTO `region` VALUES ('24', '21', '2', '120103', '河西区');
INSERT INTO `region` VALUES ('25', '21', '2', '120104', '南开区');
INSERT INTO `region` VALUES ('26', '21', '2', '120105', '河北区');
INSERT INTO `region` VALUES ('27', '21', '2', '120106', '红桥区');
INSERT INTO `region` VALUES ('28', '21', '2', '120110', '东丽区');
INSERT INTO `region` VALUES ('29', '21', '2', '120111', '西青区');
INSERT INTO `region` VALUES ('30', '21', '2', '120112', '津南区');
INSERT INTO `region` VALUES ('31', '21', '2', '120113', '北辰区');
INSERT INTO `region` VALUES ('32', '21', '2', '120114', '武清区');
INSERT INTO `region` VALUES ('33', '21', '2', '120115', '宝坻区');
INSERT INTO `region` VALUES ('34', '21', '2', '120116', '滨海新区');
INSERT INTO `region` VALUES ('35', '20', '1', '120200', '县');
INSERT INTO `region` VALUES ('36', '35', '2', '120221', '宁河县');
INSERT INTO `region` VALUES ('37', '35', '2', '120223', '静海县');
INSERT INTO `region` VALUES ('38', '35', '2', '120225', '蓟县');
INSERT INTO `region` VALUES ('39', '0', '0', '130000', '河北省');
INSERT INTO `region` VALUES ('40', '39', '1', '130100', '石家庄市');
INSERT INTO `region` VALUES ('41', '40', '2', '130101', '市辖区');
INSERT INTO `region` VALUES ('42', '40', '2', '130102', '长安区');
INSERT INTO `region` VALUES ('43', '40', '2', '130104', '桥西区');
INSERT INTO `region` VALUES ('44', '40', '2', '130105', '新华区');
INSERT INTO `region` VALUES ('45', '40', '2', '130107', '井陉矿区');
INSERT INTO `region` VALUES ('46', '40', '2', '130108', '裕华区');
INSERT INTO `region` VALUES ('47', '40', '2', '130109', '藁城区');
INSERT INTO `region` VALUES ('48', '40', '2', '130110', '鹿泉区');
INSERT INTO `region` VALUES ('49', '40', '2', '130111', '栾城区');
INSERT INTO `region` VALUES ('50', '40', '2', '130121', '井陉县');
INSERT INTO `region` VALUES ('51', '40', '2', '130123', '正定县');
INSERT INTO `region` VALUES ('52', '40', '2', '130125', '行唐县');
INSERT INTO `region` VALUES ('53', '40', '2', '130126', '灵寿县');
INSERT INTO `region` VALUES ('54', '40', '2', '130127', '高邑县');
INSERT INTO `region` VALUES ('55', '40', '2', '130128', '深泽县');
INSERT INTO `region` VALUES ('56', '40', '2', '130129', '赞皇县');
INSERT INTO `region` VALUES ('57', '40', '2', '130130', '无极县');
INSERT INTO `region` VALUES ('58', '40', '2', '130131', '平山县');
INSERT INTO `region` VALUES ('59', '40', '2', '130132', '元氏县');
INSERT INTO `region` VALUES ('60', '40', '2', '130133', '赵县');
INSERT INTO `region` VALUES ('61', '40', '2', '130181', '辛集市');
INSERT INTO `region` VALUES ('62', '40', '2', '130183', '晋州市');
INSERT INTO `region` VALUES ('63', '40', '2', '130184', '新乐市');
INSERT INTO `region` VALUES ('64', '39', '1', '130200', '唐山市');
INSERT INTO `region` VALUES ('65', '64', '2', '130201', '市辖区');
INSERT INTO `region` VALUES ('66', '64', '2', '130202', '路南区');
INSERT INTO `region` VALUES ('67', '64', '2', '130203', '路北区');
INSERT INTO `region` VALUES ('68', '64', '2', '130204', '古冶区');
INSERT INTO `region` VALUES ('69', '64', '2', '130205', '开平区');
INSERT INTO `region` VALUES ('70', '64', '2', '130207', '丰南区');
INSERT INTO `region` VALUES ('71', '64', '2', '130208', '丰润区');
INSERT INTO `region` VALUES ('72', '64', '2', '130209', '曹妃甸区');
INSERT INTO `region` VALUES ('73', '64', '2', '130223', '滦县');
INSERT INTO `region` VALUES ('74', '64', '2', '130224', '滦南县');
INSERT INTO `region` VALUES ('75', '64', '2', '130225', '乐亭县');
INSERT INTO `region` VALUES ('76', '64', '2', '130227', '迁西县');
INSERT INTO `region` VALUES ('77', '64', '2', '130229', '玉田县');
INSERT INTO `region` VALUES ('78', '64', '2', '130281', '遵化市');
INSERT INTO `region` VALUES ('79', '64', '2', '130283', '迁安市');
INSERT INTO `region` VALUES ('80', '39', '1', '130300', '秦皇岛市');
INSERT INTO `region` VALUES ('81', '80', '2', '130301', '市辖区');
INSERT INTO `region` VALUES ('82', '80', '2', '130302', '海港区');
INSERT INTO `region` VALUES ('83', '80', '2', '130303', '山海关区');
INSERT INTO `region` VALUES ('84', '80', '2', '130304', '北戴河区');
INSERT INTO `region` VALUES ('85', '80', '2', '130321', '青龙满族自治县');
INSERT INTO `region` VALUES ('86', '80', '2', '130322', '昌黎县');
INSERT INTO `region` VALUES ('87', '80', '2', '130323', '抚宁县');
INSERT INTO `region` VALUES ('88', '80', '2', '130324', '卢龙县');
INSERT INTO `region` VALUES ('89', '39', '1', '130400', '邯郸市');
INSERT INTO `region` VALUES ('90', '89', '2', '130401', '市辖区');
INSERT INTO `region` VALUES ('91', '89', '2', '130402', '邯山区');
INSERT INTO `region` VALUES ('92', '89', '2', '130403', '丛台区');
INSERT INTO `region` VALUES ('93', '89', '2', '130404', '复兴区');
INSERT INTO `region` VALUES ('94', '89', '2', '130406', '峰峰矿区');
INSERT INTO `region` VALUES ('95', '89', '2', '130421', '邯郸县');
INSERT INTO `region` VALUES ('96', '89', '2', '130423', '临漳县');
INSERT INTO `region` VALUES ('97', '89', '2', '130424', '成安县');
INSERT INTO `region` VALUES ('98', '89', '2', '130425', '大名县');
INSERT INTO `region` VALUES ('99', '89', '2', '130426', '涉县');
INSERT INTO `region` VALUES ('100', '89', '2', '130427', '磁县');
INSERT INTO `region` VALUES ('101', '89', '2', '130428', '肥乡县');
INSERT INTO `region` VALUES ('102', '89', '2', '130429', '永年县');
INSERT INTO `region` VALUES ('103', '89', '2', '130430', '邱县');
INSERT INTO `region` VALUES ('104', '89', '2', '130431', '鸡泽县');
INSERT INTO `region` VALUES ('105', '89', '2', '130432', '广平县');
INSERT INTO `region` VALUES ('106', '89', '2', '130433', '馆陶县');
INSERT INTO `region` VALUES ('107', '89', '2', '130434', '魏县');
INSERT INTO `region` VALUES ('108', '89', '2', '130435', '曲周县');
INSERT INTO `region` VALUES ('109', '89', '2', '130481', '武安市');
INSERT INTO `region` VALUES ('110', '39', '1', '130500', '邢台市');
INSERT INTO `region` VALUES ('111', '110', '2', '130501', '市辖区');
INSERT INTO `region` VALUES ('112', '110', '2', '130502', '桥东区');
INSERT INTO `region` VALUES ('113', '110', '2', '130503', '桥西区');
INSERT INTO `region` VALUES ('114', '110', '2', '130521', '邢台县');
INSERT INTO `region` VALUES ('115', '110', '2', '130522', '临城县');
INSERT INTO `region` VALUES ('116', '110', '2', '130523', '内丘县');
INSERT INTO `region` VALUES ('117', '110', '2', '130524', '柏乡县');
INSERT INTO `region` VALUES ('118', '110', '2', '130525', '隆尧县');
INSERT INTO `region` VALUES ('119', '110', '2', '130526', '任县');
INSERT INTO `region` VALUES ('120', '110', '2', '130527', '南和县');
INSERT INTO `region` VALUES ('121', '110', '2', '130528', '宁晋县');
INSERT INTO `region` VALUES ('122', '110', '2', '130529', '巨鹿县');
INSERT INTO `region` VALUES ('123', '110', '2', '130530', '新河县');
INSERT INTO `region` VALUES ('124', '110', '2', '130531', '广宗县');
INSERT INTO `region` VALUES ('125', '110', '2', '130532', '平乡县');
INSERT INTO `region` VALUES ('126', '110', '2', '130533', '威县');
INSERT INTO `region` VALUES ('127', '110', '2', '130534', '清河县');
INSERT INTO `region` VALUES ('128', '110', '2', '130535', '临西县');
INSERT INTO `region` VALUES ('129', '110', '2', '130581', '南宫市');
INSERT INTO `region` VALUES ('130', '110', '2', '130582', '沙河市');
INSERT INTO `region` VALUES ('131', '39', '1', '130600', '保定市');
INSERT INTO `region` VALUES ('132', '131', '2', '130601', '市辖区');
INSERT INTO `region` VALUES ('133', '131', '2', '130602', '新市区');
INSERT INTO `region` VALUES ('134', '131', '2', '130603', '北市区');
INSERT INTO `region` VALUES ('135', '131', '2', '130604', '南市区');
INSERT INTO `region` VALUES ('136', '131', '2', '130621', '满城县');
INSERT INTO `region` VALUES ('137', '131', '2', '130622', '清苑县');
INSERT INTO `region` VALUES ('138', '131', '2', '130623', '涞水县');
INSERT INTO `region` VALUES ('139', '131', '2', '130624', '阜平县');
INSERT INTO `region` VALUES ('140', '131', '2', '130625', '徐水县');
INSERT INTO `region` VALUES ('141', '131', '2', '130626', '定兴县');
INSERT INTO `region` VALUES ('142', '131', '2', '130627', '唐县');
INSERT INTO `region` VALUES ('143', '131', '2', '130628', '高阳县');
INSERT INTO `region` VALUES ('144', '131', '2', '130629', '容城县');
INSERT INTO `region` VALUES ('145', '131', '2', '130630', '涞源县');
INSERT INTO `region` VALUES ('146', '131', '2', '130631', '望都县');
INSERT INTO `region` VALUES ('147', '131', '2', '130632', '安新县');
INSERT INTO `region` VALUES ('148', '131', '2', '130633', '易县');
INSERT INTO `region` VALUES ('149', '131', '2', '130634', '曲阳县');
INSERT INTO `region` VALUES ('150', '131', '2', '130635', '蠡县');
INSERT INTO `region` VALUES ('151', '131', '2', '130636', '顺平县');
INSERT INTO `region` VALUES ('152', '131', '2', '130637', '博野县');
INSERT INTO `region` VALUES ('153', '131', '2', '130638', '雄县');
INSERT INTO `region` VALUES ('154', '131', '2', '130681', '涿州市');
INSERT INTO `region` VALUES ('155', '131', '2', '130682', '定州市');
INSERT INTO `region` VALUES ('156', '131', '2', '130683', '安国市');
INSERT INTO `region` VALUES ('157', '131', '2', '130684', '高碑店市');
INSERT INTO `region` VALUES ('158', '39', '1', '130700', '张家口市');
INSERT INTO `region` VALUES ('159', '158', '2', '130701', '市辖区');
INSERT INTO `region` VALUES ('160', '158', '2', '130702', '桥东区');
INSERT INTO `region` VALUES ('161', '158', '2', '130703', '桥西区');
INSERT INTO `region` VALUES ('162', '158', '2', '130705', '宣化区');
INSERT INTO `region` VALUES ('163', '158', '2', '130706', '下花园区');
INSERT INTO `region` VALUES ('164', '158', '2', '130721', '宣化县');
INSERT INTO `region` VALUES ('165', '158', '2', '130722', '张北县');
INSERT INTO `region` VALUES ('166', '158', '2', '130723', '康保县');
INSERT INTO `region` VALUES ('167', '158', '2', '130724', '沽源县');
INSERT INTO `region` VALUES ('168', '158', '2', '130725', '尚义县');
INSERT INTO `region` VALUES ('169', '158', '2', '130726', '蔚县');
INSERT INTO `region` VALUES ('170', '158', '2', '130727', '阳原县');
INSERT INTO `region` VALUES ('171', '158', '2', '130728', '怀安县');
INSERT INTO `region` VALUES ('172', '158', '2', '130729', '万全县');
INSERT INTO `region` VALUES ('173', '158', '2', '130730', '怀来县');
INSERT INTO `region` VALUES ('174', '158', '2', '130731', '涿鹿县');
INSERT INTO `region` VALUES ('175', '158', '2', '130732', '赤城县');
INSERT INTO `region` VALUES ('176', '158', '2', '130733', '崇礼县');
INSERT INTO `region` VALUES ('177', '39', '1', '130800', '承德市');
INSERT INTO `region` VALUES ('178', '177', '2', '130801', '市辖区');
INSERT INTO `region` VALUES ('179', '177', '2', '130802', '双桥区');
INSERT INTO `region` VALUES ('180', '177', '2', '130803', '双滦区');
INSERT INTO `region` VALUES ('181', '177', '2', '130804', '鹰手营子矿区');
INSERT INTO `region` VALUES ('182', '177', '2', '130821', '承德县');
INSERT INTO `region` VALUES ('183', '177', '2', '130822', '兴隆县');
INSERT INTO `region` VALUES ('184', '177', '2', '130823', '平泉县');
INSERT INTO `region` VALUES ('185', '177', '2', '130824', '滦平县');
INSERT INTO `region` VALUES ('186', '177', '2', '130825', '隆化县');
INSERT INTO `region` VALUES ('187', '177', '2', '130826', '丰宁满族自治县');
INSERT INTO `region` VALUES ('188', '177', '2', '130827', '宽城满族自治县');
INSERT INTO `region` VALUES ('189', '177', '2', '130828', '围场满族蒙古族自治县');
INSERT INTO `region` VALUES ('190', '39', '1', '130900', '沧州市');
INSERT INTO `region` VALUES ('191', '190', '2', '130901', '市辖区');
INSERT INTO `region` VALUES ('192', '190', '2', '130902', '新华区');
INSERT INTO `region` VALUES ('193', '190', '2', '130903', '运河区');
INSERT INTO `region` VALUES ('194', '190', '2', '130921', '沧县');
INSERT INTO `region` VALUES ('195', '190', '2', '130922', '青县');
INSERT INTO `region` VALUES ('196', '190', '2', '130923', '东光县');
INSERT INTO `region` VALUES ('197', '190', '2', '130924', '海兴县');
INSERT INTO `region` VALUES ('198', '190', '2', '130925', '盐山县');
INSERT INTO `region` VALUES ('199', '190', '2', '130926', '肃宁县');
INSERT INTO `region` VALUES ('200', '190', '2', '130927', '南皮县');
INSERT INTO `region` VALUES ('201', '190', '2', '130928', '吴桥县');
INSERT INTO `region` VALUES ('202', '190', '2', '130929', '献县');
INSERT INTO `region` VALUES ('203', '190', '2', '130930', '孟村回族自治县');
INSERT INTO `region` VALUES ('204', '190', '2', '130981', '泊头市');
INSERT INTO `region` VALUES ('205', '190', '2', '130982', '任丘市');
INSERT INTO `region` VALUES ('206', '190', '2', '130983', '黄骅市');
INSERT INTO `region` VALUES ('207', '190', '2', '130984', '河间市');
INSERT INTO `region` VALUES ('208', '39', '1', '131000', '廊坊市');
INSERT INTO `region` VALUES ('209', '208', '2', '131001', '市辖区');
INSERT INTO `region` VALUES ('210', '208', '2', '131002', '安次区');
INSERT INTO `region` VALUES ('211', '208', '2', '131003', '广阳区');
INSERT INTO `region` VALUES ('212', '208', '2', '131022', '固安县');
INSERT INTO `region` VALUES ('213', '208', '2', '131023', '永清县');
INSERT INTO `region` VALUES ('214', '208', '2', '131024', '香河县');
INSERT INTO `region` VALUES ('215', '208', '2', '131025', '大城县');
INSERT INTO `region` VALUES ('216', '208', '2', '131026', '文安县');
INSERT INTO `region` VALUES ('217', '208', '2', '131028', '大厂回族自治县');
INSERT INTO `region` VALUES ('218', '208', '2', '131081', '霸州市');
INSERT INTO `region` VALUES ('219', '208', '2', '131082', '三河市');
INSERT INTO `region` VALUES ('220', '39', '1', '131100', '衡水市');
INSERT INTO `region` VALUES ('221', '220', '2', '131101', '市辖区');
INSERT INTO `region` VALUES ('222', '220', '2', '131102', '桃城区');
INSERT INTO `region` VALUES ('223', '220', '2', '131121', '枣强县');
INSERT INTO `region` VALUES ('224', '220', '2', '131122', '武邑县');
INSERT INTO `region` VALUES ('225', '220', '2', '131123', '武强县');
INSERT INTO `region` VALUES ('226', '220', '2', '131124', '饶阳县');
INSERT INTO `region` VALUES ('227', '220', '2', '131125', '安平县');
INSERT INTO `region` VALUES ('228', '220', '2', '131126', '故城县');
INSERT INTO `region` VALUES ('229', '220', '2', '131127', '景县');
INSERT INTO `region` VALUES ('230', '220', '2', '131128', '阜城县');
INSERT INTO `region` VALUES ('231', '220', '2', '131181', '冀州市');
INSERT INTO `region` VALUES ('232', '220', '2', '131182', '深州市');
INSERT INTO `region` VALUES ('233', '0', '0', '140000', '山西省');
INSERT INTO `region` VALUES ('234', '233', '1', '140100', '太原市');
INSERT INTO `region` VALUES ('235', '234', '2', '140101', '市辖区');
INSERT INTO `region` VALUES ('236', '234', '2', '140105', '小店区');
INSERT INTO `region` VALUES ('237', '234', '2', '140106', '迎泽区');
INSERT INTO `region` VALUES ('238', '234', '2', '140107', '杏花岭区');
INSERT INTO `region` VALUES ('239', '234', '2', '140108', '尖草坪区');
INSERT INTO `region` VALUES ('240', '234', '2', '140109', '万柏林区');
INSERT INTO `region` VALUES ('241', '234', '2', '140110', '晋源区');
INSERT INTO `region` VALUES ('242', '234', '2', '140121', '清徐县');
INSERT INTO `region` VALUES ('243', '234', '2', '140122', '阳曲县');
INSERT INTO `region` VALUES ('244', '234', '2', '140123', '娄烦县');
INSERT INTO `region` VALUES ('245', '234', '2', '140181', '古交市');
INSERT INTO `region` VALUES ('246', '233', '1', '140200', '大同市');
INSERT INTO `region` VALUES ('247', '246', '2', '140201', '市辖区');
INSERT INTO `region` VALUES ('248', '246', '2', '140202', '城区');
INSERT INTO `region` VALUES ('249', '246', '2', '140203', '矿区');
INSERT INTO `region` VALUES ('250', '246', '2', '140211', '南郊区');
INSERT INTO `region` VALUES ('251', '246', '2', '140212', '新荣区');
INSERT INTO `region` VALUES ('252', '246', '2', '140221', '阳高县');
INSERT INTO `region` VALUES ('253', '246', '2', '140222', '天镇县');
INSERT INTO `region` VALUES ('254', '246', '2', '140223', '广灵县');
INSERT INTO `region` VALUES ('255', '246', '2', '140224', '灵丘县');
INSERT INTO `region` VALUES ('256', '246', '2', '140225', '浑源县');
INSERT INTO `region` VALUES ('257', '246', '2', '140226', '左云县');
INSERT INTO `region` VALUES ('258', '246', '2', '140227', '大同县');
INSERT INTO `region` VALUES ('259', '233', '1', '140300', '阳泉市');
INSERT INTO `region` VALUES ('260', '259', '2', '140301', '市辖区');
INSERT INTO `region` VALUES ('261', '259', '2', '140302', '城区');
INSERT INTO `region` VALUES ('262', '259', '2', '140303', '矿区');
INSERT INTO `region` VALUES ('263', '259', '2', '140311', '郊区');
INSERT INTO `region` VALUES ('264', '259', '2', '140321', '平定县');
INSERT INTO `region` VALUES ('265', '259', '2', '140322', '盂县');
INSERT INTO `region` VALUES ('266', '233', '1', '140400', '长治市');
INSERT INTO `region` VALUES ('267', '266', '2', '140401', '市辖区');
INSERT INTO `region` VALUES ('268', '266', '2', '140402', '城区');
INSERT INTO `region` VALUES ('269', '266', '2', '140411', '郊区');
INSERT INTO `region` VALUES ('270', '266', '2', '140421', '长治县');
INSERT INTO `region` VALUES ('271', '266', '2', '140423', '襄垣县');
INSERT INTO `region` VALUES ('272', '266', '2', '140424', '屯留县');
INSERT INTO `region` VALUES ('273', '266', '2', '140425', '平顺县');
INSERT INTO `region` VALUES ('274', '266', '2', '140426', '黎城县');
INSERT INTO `region` VALUES ('275', '266', '2', '140427', '壶关县');
INSERT INTO `region` VALUES ('276', '266', '2', '140428', '长子县');
INSERT INTO `region` VALUES ('277', '266', '2', '140429', '武乡县');
INSERT INTO `region` VALUES ('278', '266', '2', '140430', '沁县');
INSERT INTO `region` VALUES ('279', '266', '2', '140431', '沁源县');
INSERT INTO `region` VALUES ('280', '266', '2', '140481', '潞城市');
INSERT INTO `region` VALUES ('281', '233', '1', '140500', '晋城市');
INSERT INTO `region` VALUES ('282', '281', '2', '140501', '市辖区');
INSERT INTO `region` VALUES ('283', '281', '2', '140502', '城区');
INSERT INTO `region` VALUES ('284', '281', '2', '140521', '沁水县');
INSERT INTO `region` VALUES ('285', '281', '2', '140522', '阳城县');
INSERT INTO `region` VALUES ('286', '281', '2', '140524', '陵川县');
INSERT INTO `region` VALUES ('287', '281', '2', '140525', '泽州县');
INSERT INTO `region` VALUES ('288', '281', '2', '140581', '高平市');
INSERT INTO `region` VALUES ('289', '233', '1', '140600', '朔州市');
INSERT INTO `region` VALUES ('290', '289', '2', '140601', '市辖区');
INSERT INTO `region` VALUES ('291', '289', '2', '140602', '朔城区');
INSERT INTO `region` VALUES ('292', '289', '2', '140603', '平鲁区');
INSERT INTO `region` VALUES ('293', '289', '2', '140621', '山阴县');
INSERT INTO `region` VALUES ('294', '289', '2', '140622', '应县');
INSERT INTO `region` VALUES ('295', '289', '2', '140623', '右玉县');
INSERT INTO `region` VALUES ('296', '289', '2', '140624', '怀仁县');
INSERT INTO `region` VALUES ('297', '233', '1', '140700', '晋中市');
INSERT INTO `region` VALUES ('298', '297', '2', '140701', '市辖区');
INSERT INTO `region` VALUES ('299', '297', '2', '140702', '榆次区');
INSERT INTO `region` VALUES ('300', '297', '2', '140721', '榆社县');
INSERT INTO `region` VALUES ('301', '297', '2', '140722', '左权县');
INSERT INTO `region` VALUES ('302', '297', '2', '140723', '和顺县');
INSERT INTO `region` VALUES ('303', '297', '2', '140724', '昔阳县');
INSERT INTO `region` VALUES ('304', '297', '2', '140725', '寿阳县');
INSERT INTO `region` VALUES ('305', '297', '2', '140726', '太谷县');
INSERT INTO `region` VALUES ('306', '297', '2', '140727', '祁县');
INSERT INTO `region` VALUES ('307', '297', '2', '140728', '平遥县');
INSERT INTO `region` VALUES ('308', '297', '2', '140729', '灵石县');
INSERT INTO `region` VALUES ('309', '297', '2', '140781', '介休市');
INSERT INTO `region` VALUES ('310', '233', '1', '140800', '运城市');
INSERT INTO `region` VALUES ('311', '310', '2', '140801', '市辖区');
INSERT INTO `region` VALUES ('312', '310', '2', '140802', '盐湖区');
INSERT INTO `region` VALUES ('313', '310', '2', '140821', '临猗县');
INSERT INTO `region` VALUES ('314', '310', '2', '140822', '万荣县');
INSERT INTO `region` VALUES ('315', '310', '2', '140823', '闻喜县');
INSERT INTO `region` VALUES ('316', '310', '2', '140824', '稷山县');
INSERT INTO `region` VALUES ('317', '310', '2', '140825', '新绛县');
INSERT INTO `region` VALUES ('318', '310', '2', '140826', '绛县');
INSERT INTO `region` VALUES ('319', '310', '2', '140827', '垣曲县');
INSERT INTO `region` VALUES ('320', '310', '2', '140828', '夏县');
INSERT INTO `region` VALUES ('321', '310', '2', '140829', '平陆县');
INSERT INTO `region` VALUES ('322', '310', '2', '140830', '芮城县');
INSERT INTO `region` VALUES ('323', '310', '2', '140881', '永济市');
INSERT INTO `region` VALUES ('324', '310', '2', '140882', '河津市');
INSERT INTO `region` VALUES ('325', '233', '1', '140900', '忻州市');
INSERT INTO `region` VALUES ('326', '325', '2', '140901', '市辖区');
INSERT INTO `region` VALUES ('327', '325', '2', '140902', '忻府区');
INSERT INTO `region` VALUES ('328', '325', '2', '140921', '定襄县');
INSERT INTO `region` VALUES ('329', '325', '2', '140922', '五台县');
INSERT INTO `region` VALUES ('330', '325', '2', '140923', '代县');
INSERT INTO `region` VALUES ('331', '325', '2', '140924', '繁峙县');
INSERT INTO `region` VALUES ('332', '325', '2', '140925', '宁武县');
INSERT INTO `region` VALUES ('333', '325', '2', '140926', '静乐县');
INSERT INTO `region` VALUES ('334', '325', '2', '140927', '神池县');
INSERT INTO `region` VALUES ('335', '325', '2', '140928', '五寨县');
INSERT INTO `region` VALUES ('336', '325', '2', '140929', '岢岚县');
INSERT INTO `region` VALUES ('337', '325', '2', '140930', '河曲县');
INSERT INTO `region` VALUES ('338', '325', '2', '140931', '保德县');
INSERT INTO `region` VALUES ('339', '325', '2', '140932', '偏关县');
INSERT INTO `region` VALUES ('340', '325', '2', '140981', '原平市');
INSERT INTO `region` VALUES ('341', '233', '1', '141000', '临汾市');
INSERT INTO `region` VALUES ('342', '341', '2', '141001', '市辖区');
INSERT INTO `region` VALUES ('343', '341', '2', '141002', '尧都区');
INSERT INTO `region` VALUES ('344', '341', '2', '141021', '曲沃县');
INSERT INTO `region` VALUES ('345', '341', '2', '141022', '翼城县');
INSERT INTO `region` VALUES ('346', '341', '2', '141023', '襄汾县');
INSERT INTO `region` VALUES ('347', '341', '2', '141024', '洪洞县');
INSERT INTO `region` VALUES ('348', '341', '2', '141025', '古县');
INSERT INTO `region` VALUES ('349', '341', '2', '141026', '安泽县');
INSERT INTO `region` VALUES ('350', '341', '2', '141027', '浮山县');
INSERT INTO `region` VALUES ('351', '341', '2', '141028', '吉县');
INSERT INTO `region` VALUES ('352', '341', '2', '141029', '乡宁县');
INSERT INTO `region` VALUES ('353', '341', '2', '141030', '大宁县');
INSERT INTO `region` VALUES ('354', '341', '2', '141031', '隰县');
INSERT INTO `region` VALUES ('355', '341', '2', '141032', '永和县');
INSERT INTO `region` VALUES ('356', '341', '2', '141033', '蒲县');
INSERT INTO `region` VALUES ('357', '341', '2', '141034', '汾西县');
INSERT INTO `region` VALUES ('358', '341', '2', '141081', '侯马市');
INSERT INTO `region` VALUES ('359', '341', '2', '141082', '霍州市');
INSERT INTO `region` VALUES ('360', '233', '1', '141100', '吕梁市');
INSERT INTO `region` VALUES ('361', '360', '2', '141101', '市辖区');
INSERT INTO `region` VALUES ('362', '360', '2', '141102', '离石区');
INSERT INTO `region` VALUES ('363', '360', '2', '141121', '文水县');
INSERT INTO `region` VALUES ('364', '360', '2', '141122', '交城县');
INSERT INTO `region` VALUES ('365', '360', '2', '141123', '兴县');
INSERT INTO `region` VALUES ('366', '360', '2', '141124', '临县');
INSERT INTO `region` VALUES ('367', '360', '2', '141125', '柳林县');
INSERT INTO `region` VALUES ('368', '360', '2', '141126', '石楼县');
INSERT INTO `region` VALUES ('369', '360', '2', '141127', '岚县');
INSERT INTO `region` VALUES ('370', '360', '2', '141128', '方山县');
INSERT INTO `region` VALUES ('371', '360', '2', '141129', '中阳县');
INSERT INTO `region` VALUES ('372', '360', '2', '141130', '交口县');
INSERT INTO `region` VALUES ('373', '360', '2', '141181', '孝义市');
INSERT INTO `region` VALUES ('374', '360', '2', '141182', '汾阳市');
INSERT INTO `region` VALUES ('375', '0', '0', '150000', '内蒙古自治区');
INSERT INTO `region` VALUES ('376', '375', '1', '150100', '呼和浩特市');
INSERT INTO `region` VALUES ('377', '376', '2', '150101', '市辖区');
INSERT INTO `region` VALUES ('378', '376', '2', '150102', '新城区');
INSERT INTO `region` VALUES ('379', '376', '2', '150103', '回民区');
INSERT INTO `region` VALUES ('380', '376', '2', '150104', '玉泉区');
INSERT INTO `region` VALUES ('381', '376', '2', '150105', '赛罕区');
INSERT INTO `region` VALUES ('382', '376', '2', '150121', '土默特左旗');
INSERT INTO `region` VALUES ('383', '376', '2', '150122', '托克托县');
INSERT INTO `region` VALUES ('384', '376', '2', '150123', '和林格尔县');
INSERT INTO `region` VALUES ('385', '376', '2', '150124', '清水河县');
INSERT INTO `region` VALUES ('386', '376', '2', '150125', '武川县');
INSERT INTO `region` VALUES ('387', '375', '1', '150200', '包头市');
INSERT INTO `region` VALUES ('388', '387', '2', '150201', '市辖区');
INSERT INTO `region` VALUES ('389', '387', '2', '150202', '东河区');
INSERT INTO `region` VALUES ('390', '387', '2', '150203', '昆都仑区');
INSERT INTO `region` VALUES ('391', '387', '2', '150204', '青山区');
INSERT INTO `region` VALUES ('392', '387', '2', '150205', '石拐区');
INSERT INTO `region` VALUES ('393', '387', '2', '150206', '白云鄂博矿区');
INSERT INTO `region` VALUES ('394', '387', '2', '150207', '九原区');
INSERT INTO `region` VALUES ('395', '387', '2', '150221', '土默特右旗');
INSERT INTO `region` VALUES ('396', '387', '2', '150222', '固阳县');
INSERT INTO `region` VALUES ('397', '387', '2', '150223', '达尔罕茂明安联合旗');
INSERT INTO `region` VALUES ('398', '375', '1', '150300', '乌海市');
INSERT INTO `region` VALUES ('399', '398', '2', '150301', '市辖区');
INSERT INTO `region` VALUES ('400', '398', '2', '150302', '海勃湾区');
INSERT INTO `region` VALUES ('401', '398', '2', '150303', '海南区');
INSERT INTO `region` VALUES ('402', '398', '2', '150304', '乌达区');
INSERT INTO `region` VALUES ('403', '375', '1', '150400', '赤峰市');
INSERT INTO `region` VALUES ('404', '403', '2', '150401', '市辖区');
INSERT INTO `region` VALUES ('405', '403', '2', '150402', '红山区');
INSERT INTO `region` VALUES ('406', '403', '2', '150403', '元宝山区');
INSERT INTO `region` VALUES ('407', '403', '2', '150404', '松山区');
INSERT INTO `region` VALUES ('408', '403', '2', '150421', '阿鲁科尔沁旗');
INSERT INTO `region` VALUES ('409', '403', '2', '150422', '巴林左旗');
INSERT INTO `region` VALUES ('410', '403', '2', '150423', '巴林右旗');
INSERT INTO `region` VALUES ('411', '403', '2', '150424', '林西县');
INSERT INTO `region` VALUES ('412', '403', '2', '150425', '克什克腾旗');
INSERT INTO `region` VALUES ('413', '403', '2', '150426', '翁牛特旗');
INSERT INTO `region` VALUES ('414', '403', '2', '150428', '喀喇沁旗');
INSERT INTO `region` VALUES ('415', '403', '2', '150429', '宁城县');
INSERT INTO `region` VALUES ('416', '403', '2', '150430', '敖汉旗');
INSERT INTO `region` VALUES ('417', '375', '1', '150500', '通辽市');
INSERT INTO `region` VALUES ('418', '417', '2', '150501', '市辖区');
INSERT INTO `region` VALUES ('419', '417', '2', '150502', '科尔沁区');
INSERT INTO `region` VALUES ('420', '417', '2', '150521', '科尔沁左翼中旗');
INSERT INTO `region` VALUES ('421', '417', '2', '150522', '科尔沁左翼后旗');
INSERT INTO `region` VALUES ('422', '417', '2', '150523', '开鲁县');
INSERT INTO `region` VALUES ('423', '417', '2', '150524', '库伦旗');
INSERT INTO `region` VALUES ('424', '417', '2', '150525', '奈曼旗');
INSERT INTO `region` VALUES ('425', '417', '2', '150526', '扎鲁特旗');
INSERT INTO `region` VALUES ('426', '417', '2', '150581', '霍林郭勒市');
INSERT INTO `region` VALUES ('427', '375', '1', '150600', '鄂尔多斯市');
INSERT INTO `region` VALUES ('428', '427', '2', '150601', '市辖区');
INSERT INTO `region` VALUES ('429', '427', '2', '150602', '东胜区');
INSERT INTO `region` VALUES ('430', '427', '2', '150621', '达拉特旗');
INSERT INTO `region` VALUES ('431', '427', '2', '150622', '准格尔旗');
INSERT INTO `region` VALUES ('432', '427', '2', '150623', '鄂托克前旗');
INSERT INTO `region` VALUES ('433', '427', '2', '150624', '鄂托克旗');
INSERT INTO `region` VALUES ('434', '427', '2', '150625', '杭锦旗');
INSERT INTO `region` VALUES ('435', '427', '2', '150626', '乌审旗');
INSERT INTO `region` VALUES ('436', '427', '2', '150627', '伊金霍洛旗');
INSERT INTO `region` VALUES ('437', '375', '1', '150700', '呼伦贝尔市');
INSERT INTO `region` VALUES ('438', '437', '2', '150701', '市辖区');
INSERT INTO `region` VALUES ('439', '437', '2', '150702', '海拉尔区');
INSERT INTO `region` VALUES ('440', '437', '2', '150703', '扎赉诺尔区');
INSERT INTO `region` VALUES ('441', '437', '2', '150721', '阿荣旗');
INSERT INTO `region` VALUES ('442', '437', '2', '150722', '莫力达瓦达斡尔族自治旗');
INSERT INTO `region` VALUES ('443', '437', '2', '150723', '鄂伦春自治旗');
INSERT INTO `region` VALUES ('444', '437', '2', '150724', '鄂温克族自治旗');
INSERT INTO `region` VALUES ('445', '437', '2', '150725', '陈巴尔虎旗');
INSERT INTO `region` VALUES ('446', '437', '2', '150726', '新巴尔虎左旗');
INSERT INTO `region` VALUES ('447', '437', '2', '150727', '新巴尔虎右旗');
INSERT INTO `region` VALUES ('448', '437', '2', '150781', '满洲里市');
INSERT INTO `region` VALUES ('449', '437', '2', '150782', '牙克石市');
INSERT INTO `region` VALUES ('450', '437', '2', '150783', '扎兰屯市');
INSERT INTO `region` VALUES ('451', '437', '2', '150784', '额尔古纳市');
INSERT INTO `region` VALUES ('452', '437', '2', '150785', '根河市');
INSERT INTO `region` VALUES ('453', '375', '1', '150800', '巴彦淖尔市');
INSERT INTO `region` VALUES ('454', '453', '2', '150801', '市辖区');
INSERT INTO `region` VALUES ('455', '453', '2', '150802', '临河区');
INSERT INTO `region` VALUES ('456', '453', '2', '150821', '五原县');
INSERT INTO `region` VALUES ('457', '453', '2', '150822', '磴口县');
INSERT INTO `region` VALUES ('458', '453', '2', '150823', '乌拉特前旗');
INSERT INTO `region` VALUES ('459', '453', '2', '150824', '乌拉特中旗');
INSERT INTO `region` VALUES ('460', '453', '2', '150825', '乌拉特后旗');
INSERT INTO `region` VALUES ('461', '453', '2', '150826', '杭锦后旗');
INSERT INTO `region` VALUES ('462', '375', '1', '150900', '乌兰察布市');
INSERT INTO `region` VALUES ('463', '462', '2', '150901', '市辖区');
INSERT INTO `region` VALUES ('464', '462', '2', '150902', '集宁区');
INSERT INTO `region` VALUES ('465', '462', '2', '150921', '卓资县');
INSERT INTO `region` VALUES ('466', '462', '2', '150922', '化德县');
INSERT INTO `region` VALUES ('467', '462', '2', '150923', '商都县');
INSERT INTO `region` VALUES ('468', '462', '2', '150924', '兴和县');
INSERT INTO `region` VALUES ('469', '462', '2', '150925', '凉城县');
INSERT INTO `region` VALUES ('470', '462', '2', '150926', '察哈尔右翼前旗');
INSERT INTO `region` VALUES ('471', '462', '2', '150927', '察哈尔右翼中旗');
INSERT INTO `region` VALUES ('472', '462', '2', '150928', '察哈尔右翼后旗');
INSERT INTO `region` VALUES ('473', '462', '2', '150929', '四子王旗');
INSERT INTO `region` VALUES ('474', '462', '2', '150981', '丰镇市');
INSERT INTO `region` VALUES ('475', '375', '1', '152200', '兴安盟');
INSERT INTO `region` VALUES ('476', '475', '2', '152201', '乌兰浩特市');
INSERT INTO `region` VALUES ('477', '475', '2', '152202', '阿尔山市');
INSERT INTO `region` VALUES ('478', '475', '2', '152221', '科尔沁右翼前旗');
INSERT INTO `region` VALUES ('479', '475', '2', '152222', '科尔沁右翼中旗');
INSERT INTO `region` VALUES ('480', '475', '2', '152223', '扎赉特旗');
INSERT INTO `region` VALUES ('481', '475', '2', '152224', '突泉县');
INSERT INTO `region` VALUES ('482', '375', '1', '152500', '锡林郭勒盟');
INSERT INTO `region` VALUES ('483', '482', '2', '152501', '二连浩特市');
INSERT INTO `region` VALUES ('484', '482', '2', '152502', '锡林浩特市');
INSERT INTO `region` VALUES ('485', '482', '2', '152522', '阿巴嘎旗');
INSERT INTO `region` VALUES ('486', '482', '2', '152523', '苏尼特左旗');
INSERT INTO `region` VALUES ('487', '482', '2', '152524', '苏尼特右旗');
INSERT INTO `region` VALUES ('488', '482', '2', '152525', '东乌珠穆沁旗');
INSERT INTO `region` VALUES ('489', '482', '2', '152526', '西乌珠穆沁旗');
INSERT INTO `region` VALUES ('490', '482', '2', '152527', '太仆寺旗');
INSERT INTO `region` VALUES ('491', '482', '2', '152528', '镶黄旗');
INSERT INTO `region` VALUES ('492', '482', '2', '152529', '正镶白旗');
INSERT INTO `region` VALUES ('493', '482', '2', '152530', '正蓝旗');
INSERT INTO `region` VALUES ('494', '482', '2', '152531', '多伦县');
INSERT INTO `region` VALUES ('495', '375', '1', '152900', '阿拉善盟');
INSERT INTO `region` VALUES ('496', '495', '2', '152921', '阿拉善左旗');
INSERT INTO `region` VALUES ('497', '495', '2', '152922', '阿拉善右旗');
INSERT INTO `region` VALUES ('498', '495', '2', '152923', '额济纳旗');
INSERT INTO `region` VALUES ('499', '0', '0', '210000', '辽宁省');
INSERT INTO `region` VALUES ('500', '499', '1', '210100', '沈阳市');
INSERT INTO `region` VALUES ('501', '500', '2', '210101', '市辖区');
INSERT INTO `region` VALUES ('502', '500', '2', '210102', '和平区');
INSERT INTO `region` VALUES ('503', '500', '2', '210103', '沈河区');
INSERT INTO `region` VALUES ('504', '500', '2', '210104', '大东区');
INSERT INTO `region` VALUES ('505', '500', '2', '210105', '皇姑区');
INSERT INTO `region` VALUES ('506', '500', '2', '210106', '铁西区');
INSERT INTO `region` VALUES ('507', '500', '2', '210111', '苏家屯区');
INSERT INTO `region` VALUES ('508', '500', '2', '210112', '浑南区');
INSERT INTO `region` VALUES ('509', '500', '2', '210113', '沈北新区');
INSERT INTO `region` VALUES ('510', '500', '2', '210114', '于洪区');
INSERT INTO `region` VALUES ('511', '500', '2', '210122', '辽中县');
INSERT INTO `region` VALUES ('512', '500', '2', '210123', '康平县');
INSERT INTO `region` VALUES ('513', '500', '2', '210124', '法库县');
INSERT INTO `region` VALUES ('514', '500', '2', '210181', '新民市');
INSERT INTO `region` VALUES ('515', '499', '1', '210200', '大连市');
INSERT INTO `region` VALUES ('516', '515', '2', '210201', '市辖区');
INSERT INTO `region` VALUES ('517', '515', '2', '210202', '中山区');
INSERT INTO `region` VALUES ('518', '515', '2', '210203', '西岗区');
INSERT INTO `region` VALUES ('519', '515', '2', '210204', '沙河口区');
INSERT INTO `region` VALUES ('520', '515', '2', '210211', '甘井子区');
INSERT INTO `region` VALUES ('521', '515', '2', '210212', '旅顺口区');
INSERT INTO `region` VALUES ('522', '515', '2', '210213', '金州区');
INSERT INTO `region` VALUES ('523', '515', '2', '210224', '长海县');
INSERT INTO `region` VALUES ('524', '515', '2', '210281', '瓦房店市');
INSERT INTO `region` VALUES ('525', '515', '2', '210282', '普兰店市');
INSERT INTO `region` VALUES ('526', '515', '2', '210283', '庄河市');
INSERT INTO `region` VALUES ('527', '499', '1', '210300', '鞍山市');
INSERT INTO `region` VALUES ('528', '527', '2', '210301', '市辖区');
INSERT INTO `region` VALUES ('529', '527', '2', '210302', '铁东区');
INSERT INTO `region` VALUES ('530', '527', '2', '210303', '铁西区');
INSERT INTO `region` VALUES ('531', '527', '2', '210304', '立山区');
INSERT INTO `region` VALUES ('532', '527', '2', '210311', '千山区');
INSERT INTO `region` VALUES ('533', '527', '2', '210321', '台安县');
INSERT INTO `region` VALUES ('534', '527', '2', '210323', '岫岩满族自治县');
INSERT INTO `region` VALUES ('535', '527', '2', '210381', '海城市');
INSERT INTO `region` VALUES ('536', '499', '1', '210400', '抚顺市');
INSERT INTO `region` VALUES ('537', '536', '2', '210401', '市辖区');
INSERT INTO `region` VALUES ('538', '536', '2', '210402', '新抚区');
INSERT INTO `region` VALUES ('539', '536', '2', '210403', '东洲区');
INSERT INTO `region` VALUES ('540', '536', '2', '210404', '望花区');
INSERT INTO `region` VALUES ('541', '536', '2', '210411', '顺城区');
INSERT INTO `region` VALUES ('542', '536', '2', '210421', '抚顺县');
INSERT INTO `region` VALUES ('543', '536', '2', '210422', '新宾满族自治县');
INSERT INTO `region` VALUES ('544', '536', '2', '210423', '清原满族自治县');
INSERT INTO `region` VALUES ('545', '499', '1', '210500', '本溪市');
INSERT INTO `region` VALUES ('546', '545', '2', '210501', '市辖区');
INSERT INTO `region` VALUES ('547', '545', '2', '210502', '平山区');
INSERT INTO `region` VALUES ('548', '545', '2', '210503', '溪湖区');
INSERT INTO `region` VALUES ('549', '545', '2', '210504', '明山区');
INSERT INTO `region` VALUES ('550', '545', '2', '210505', '南芬区');
INSERT INTO `region` VALUES ('551', '545', '2', '210521', '本溪满族自治县');
INSERT INTO `region` VALUES ('552', '545', '2', '210522', '桓仁满族自治县');
INSERT INTO `region` VALUES ('553', '499', '1', '210600', '丹东市');
INSERT INTO `region` VALUES ('554', '553', '2', '210601', '市辖区');
INSERT INTO `region` VALUES ('555', '553', '2', '210602', '元宝区');
INSERT INTO `region` VALUES ('556', '553', '2', '210603', '振兴区');
INSERT INTO `region` VALUES ('557', '553', '2', '210604', '振安区');
INSERT INTO `region` VALUES ('558', '553', '2', '210624', '宽甸满族自治县');
INSERT INTO `region` VALUES ('559', '553', '2', '210681', '东港市');
INSERT INTO `region` VALUES ('560', '553', '2', '210682', '凤城市');
INSERT INTO `region` VALUES ('561', '499', '1', '210700', '锦州市');
INSERT INTO `region` VALUES ('562', '561', '2', '210701', '市辖区');
INSERT INTO `region` VALUES ('563', '561', '2', '210702', '古塔区');
INSERT INTO `region` VALUES ('564', '561', '2', '210703', '凌河区');
INSERT INTO `region` VALUES ('565', '561', '2', '210711', '太和区');
INSERT INTO `region` VALUES ('566', '561', '2', '210726', '黑山县');
INSERT INTO `region` VALUES ('567', '561', '2', '210727', '义县');
INSERT INTO `region` VALUES ('568', '561', '2', '210781', '凌海市');
INSERT INTO `region` VALUES ('569', '561', '2', '210782', '北镇市');
INSERT INTO `region` VALUES ('570', '499', '1', '210800', '营口市');
INSERT INTO `region` VALUES ('571', '570', '2', '210801', '市辖区');
INSERT INTO `region` VALUES ('572', '570', '2', '210802', '站前区');
INSERT INTO `region` VALUES ('573', '570', '2', '210803', '西市区');
INSERT INTO `region` VALUES ('574', '570', '2', '210804', '鲅鱼圈区');
INSERT INTO `region` VALUES ('575', '570', '2', '210811', '老边区');
INSERT INTO `region` VALUES ('576', '570', '2', '210881', '盖州市');
INSERT INTO `region` VALUES ('577', '570', '2', '210882', '大石桥市');
INSERT INTO `region` VALUES ('578', '499', '1', '210900', '阜新市');
INSERT INTO `region` VALUES ('579', '578', '2', '210901', '市辖区');
INSERT INTO `region` VALUES ('580', '578', '2', '210902', '海州区');
INSERT INTO `region` VALUES ('581', '578', '2', '210903', '新邱区');
INSERT INTO `region` VALUES ('582', '578', '2', '210904', '太平区');
INSERT INTO `region` VALUES ('583', '578', '2', '210905', '清河门区');
INSERT INTO `region` VALUES ('584', '578', '2', '210911', '细河区');
INSERT INTO `region` VALUES ('585', '578', '2', '210921', '阜新蒙古族自治县');
INSERT INTO `region` VALUES ('586', '578', '2', '210922', '彰武县');
INSERT INTO `region` VALUES ('587', '499', '1', '211000', '辽阳市');
INSERT INTO `region` VALUES ('588', '587', '2', '211001', '市辖区');
INSERT INTO `region` VALUES ('589', '587', '2', '211002', '白塔区');
INSERT INTO `region` VALUES ('590', '587', '2', '211003', '文圣区');
INSERT INTO `region` VALUES ('591', '587', '2', '211004', '宏伟区');
INSERT INTO `region` VALUES ('592', '587', '2', '211005', '弓长岭区');
INSERT INTO `region` VALUES ('593', '587', '2', '211011', '太子河区');
INSERT INTO `region` VALUES ('594', '587', '2', '211021', '辽阳县');
INSERT INTO `region` VALUES ('595', '587', '2', '211081', '灯塔市');
INSERT INTO `region` VALUES ('596', '499', '1', '211100', '盘锦市');
INSERT INTO `region` VALUES ('597', '596', '2', '211101', '市辖区');
INSERT INTO `region` VALUES ('598', '596', '2', '211102', '双台子区');
INSERT INTO `region` VALUES ('599', '596', '2', '211103', '兴隆台区');
INSERT INTO `region` VALUES ('600', '596', '2', '211121', '大洼县');
INSERT INTO `region` VALUES ('601', '596', '2', '211122', '盘山县');
INSERT INTO `region` VALUES ('602', '499', '1', '211200', '铁岭市');
INSERT INTO `region` VALUES ('603', '602', '2', '211201', '市辖区');
INSERT INTO `region` VALUES ('604', '602', '2', '211202', '银州区');
INSERT INTO `region` VALUES ('605', '602', '2', '211204', '清河区');
INSERT INTO `region` VALUES ('606', '602', '2', '211221', '铁岭县');
INSERT INTO `region` VALUES ('607', '602', '2', '211223', '西丰县');
INSERT INTO `region` VALUES ('608', '602', '2', '211224', '昌图县');
INSERT INTO `region` VALUES ('609', '602', '2', '211281', '调兵山市');
INSERT INTO `region` VALUES ('610', '602', '2', '211282', '开原市');
INSERT INTO `region` VALUES ('611', '499', '1', '211300', '朝阳市');
INSERT INTO `region` VALUES ('612', '611', '2', '211301', '市辖区');
INSERT INTO `region` VALUES ('613', '611', '2', '211302', '双塔区');
INSERT INTO `region` VALUES ('614', '611', '2', '211303', '龙城区');
INSERT INTO `region` VALUES ('615', '611', '2', '211321', '朝阳县');
INSERT INTO `region` VALUES ('616', '611', '2', '211322', '建平县');
INSERT INTO `region` VALUES ('617', '611', '2', '211324', '喀喇沁左翼蒙古族自治县');
INSERT INTO `region` VALUES ('618', '611', '2', '211381', '北票市');
INSERT INTO `region` VALUES ('619', '611', '2', '211382', '凌源市');
INSERT INTO `region` VALUES ('620', '499', '1', '211400', '葫芦岛市');
INSERT INTO `region` VALUES ('621', '620', '2', '211401', '市辖区');
INSERT INTO `region` VALUES ('622', '620', '2', '211402', '连山区');
INSERT INTO `region` VALUES ('623', '620', '2', '211403', '龙港区');
INSERT INTO `region` VALUES ('624', '620', '2', '211404', '南票区');
INSERT INTO `region` VALUES ('625', '620', '2', '211421', '绥中县');
INSERT INTO `region` VALUES ('626', '620', '2', '211422', '建昌县');
INSERT INTO `region` VALUES ('627', '620', '2', '211481', '兴城市');
INSERT INTO `region` VALUES ('628', '0', '0', '220000', '吉林省');
INSERT INTO `region` VALUES ('629', '628', '1', '220100', '长春市');
INSERT INTO `region` VALUES ('630', '629', '2', '220101', '市辖区');
INSERT INTO `region` VALUES ('631', '629', '2', '220102', '南关区');
INSERT INTO `region` VALUES ('632', '629', '2', '220103', '宽城区');
INSERT INTO `region` VALUES ('633', '629', '2', '220104', '朝阳区');
INSERT INTO `region` VALUES ('634', '629', '2', '220105', '二道区');
INSERT INTO `region` VALUES ('635', '629', '2', '220106', '绿园区');
INSERT INTO `region` VALUES ('636', '629', '2', '220112', '双阳区');
INSERT INTO `region` VALUES ('637', '629', '2', '220113', '九台区');
INSERT INTO `region` VALUES ('638', '629', '2', '220122', '农安县');
INSERT INTO `region` VALUES ('639', '629', '2', '220182', '榆树市');
INSERT INTO `region` VALUES ('640', '629', '2', '220183', '德惠市');
INSERT INTO `region` VALUES ('641', '628', '1', '220200', '吉林市');
INSERT INTO `region` VALUES ('642', '641', '2', '220201', '市辖区');
INSERT INTO `region` VALUES ('643', '641', '2', '220202', '昌邑区');
INSERT INTO `region` VALUES ('644', '641', '2', '220203', '龙潭区');
INSERT INTO `region` VALUES ('645', '641', '2', '220204', '船营区');
INSERT INTO `region` VALUES ('646', '641', '2', '220211', '丰满区');
INSERT INTO `region` VALUES ('647', '641', '2', '220221', '永吉县');
INSERT INTO `region` VALUES ('648', '641', '2', '220281', '蛟河市');
INSERT INTO `region` VALUES ('649', '641', '2', '220282', '桦甸市');
INSERT INTO `region` VALUES ('650', '641', '2', '220283', '舒兰市');
INSERT INTO `region` VALUES ('651', '641', '2', '220284', '磐石市');
INSERT INTO `region` VALUES ('652', '628', '1', '220300', '四平市');
INSERT INTO `region` VALUES ('653', '652', '2', '220301', '市辖区');
INSERT INTO `region` VALUES ('654', '652', '2', '220302', '铁西区');
INSERT INTO `region` VALUES ('655', '652', '2', '220303', '铁东区');
INSERT INTO `region` VALUES ('656', '652', '2', '220322', '梨树县');
INSERT INTO `region` VALUES ('657', '652', '2', '220323', '伊通满族自治县');
INSERT INTO `region` VALUES ('658', '652', '2', '220381', '公主岭市');
INSERT INTO `region` VALUES ('659', '652', '2', '220382', '双辽市');
INSERT INTO `region` VALUES ('660', '628', '1', '220400', '辽源市');
INSERT INTO `region` VALUES ('661', '660', '2', '220401', '市辖区');
INSERT INTO `region` VALUES ('662', '660', '2', '220402', '龙山区');
INSERT INTO `region` VALUES ('663', '660', '2', '220403', '西安区');
INSERT INTO `region` VALUES ('664', '660', '2', '220421', '东丰县');
INSERT INTO `region` VALUES ('665', '660', '2', '220422', '东辽县');
INSERT INTO `region` VALUES ('666', '628', '1', '220500', '通化市');
INSERT INTO `region` VALUES ('667', '666', '2', '220501', '市辖区');
INSERT INTO `region` VALUES ('668', '666', '2', '220502', '东昌区');
INSERT INTO `region` VALUES ('669', '666', '2', '220503', '二道江区');
INSERT INTO `region` VALUES ('670', '666', '2', '220521', '通化县');
INSERT INTO `region` VALUES ('671', '666', '2', '220523', '辉南县');
INSERT INTO `region` VALUES ('672', '666', '2', '220524', '柳河县');
INSERT INTO `region` VALUES ('673', '666', '2', '220581', '梅河口市');
INSERT INTO `region` VALUES ('674', '666', '2', '220582', '集安市');
INSERT INTO `region` VALUES ('675', '628', '1', '220600', '白山市');
INSERT INTO `region` VALUES ('676', '675', '2', '220601', '市辖区');
INSERT INTO `region` VALUES ('677', '675', '2', '220602', '浑江区');
INSERT INTO `region` VALUES ('678', '675', '2', '220605', '江源区');
INSERT INTO `region` VALUES ('679', '675', '2', '220621', '抚松县');
INSERT INTO `region` VALUES ('680', '675', '2', '220622', '靖宇县');
INSERT INTO `region` VALUES ('681', '675', '2', '220623', '长白朝鲜族自治县');
INSERT INTO `region` VALUES ('682', '675', '2', '220681', '临江市');
INSERT INTO `region` VALUES ('683', '628', '1', '220700', '松原市');
INSERT INTO `region` VALUES ('684', '683', '2', '220701', '市辖区');
INSERT INTO `region` VALUES ('685', '683', '2', '220702', '宁江区');
INSERT INTO `region` VALUES ('686', '683', '2', '220721', '前郭尔罗斯蒙古族自治县');
INSERT INTO `region` VALUES ('687', '683', '2', '220722', '长岭县');
INSERT INTO `region` VALUES ('688', '683', '2', '220723', '乾安县');
INSERT INTO `region` VALUES ('689', '683', '2', '220781', '扶余市');
INSERT INTO `region` VALUES ('690', '628', '1', '220800', '白城市');
INSERT INTO `region` VALUES ('691', '690', '2', '220801', '市辖区');
INSERT INTO `region` VALUES ('692', '690', '2', '220802', '洮北区');
INSERT INTO `region` VALUES ('693', '690', '2', '220821', '镇赉县');
INSERT INTO `region` VALUES ('694', '690', '2', '220822', '通榆县');
INSERT INTO `region` VALUES ('695', '690', '2', '220881', '洮南市');
INSERT INTO `region` VALUES ('696', '690', '2', '220882', '大安市');
INSERT INTO `region` VALUES ('697', '628', '1', '222400', '延边朝鲜族自治州');
INSERT INTO `region` VALUES ('698', '697', '2', '222401', '延吉市');
INSERT INTO `region` VALUES ('699', '697', '2', '222402', '图们市');
INSERT INTO `region` VALUES ('700', '697', '2', '222403', '敦化市');
INSERT INTO `region` VALUES ('701', '697', '2', '222404', '珲春市');
INSERT INTO `region` VALUES ('702', '697', '2', '222405', '龙井市');
INSERT INTO `region` VALUES ('703', '697', '2', '222406', '和龙市');
INSERT INTO `region` VALUES ('704', '697', '2', '222424', '汪清县');
INSERT INTO `region` VALUES ('705', '697', '2', '222426', '安图县');
INSERT INTO `region` VALUES ('706', '0', '0', '230000', '黑龙江省');
INSERT INTO `region` VALUES ('707', '706', '1', '230100', '哈尔滨市');
INSERT INTO `region` VALUES ('708', '707', '2', '230101', '市辖区');
INSERT INTO `region` VALUES ('709', '707', '2', '230102', '道里区');
INSERT INTO `region` VALUES ('710', '707', '2', '230103', '南岗区');
INSERT INTO `region` VALUES ('711', '707', '2', '230104', '道外区');
INSERT INTO `region` VALUES ('712', '707', '2', '230108', '平房区');
INSERT INTO `region` VALUES ('713', '707', '2', '230109', '松北区');
INSERT INTO `region` VALUES ('714', '707', '2', '230110', '香坊区');
INSERT INTO `region` VALUES ('715', '707', '2', '230111', '呼兰区');
INSERT INTO `region` VALUES ('716', '707', '2', '230112', '阿城区');
INSERT INTO `region` VALUES ('717', '707', '2', '230123', '依兰县');
INSERT INTO `region` VALUES ('718', '707', '2', '230124', '方正县');
INSERT INTO `region` VALUES ('719', '707', '2', '230125', '宾县');
INSERT INTO `region` VALUES ('720', '707', '2', '230126', '巴彦县');
INSERT INTO `region` VALUES ('721', '707', '2', '230127', '木兰县');
INSERT INTO `region` VALUES ('722', '707', '2', '230128', '通河县');
INSERT INTO `region` VALUES ('723', '707', '2', '230129', '延寿县');
INSERT INTO `region` VALUES ('724', '707', '2', '230182', '双城市');
INSERT INTO `region` VALUES ('725', '707', '2', '230183', '尚志市');
INSERT INTO `region` VALUES ('726', '707', '2', '230184', '五常市');
INSERT INTO `region` VALUES ('727', '706', '1', '230200', '齐齐哈尔市');
INSERT INTO `region` VALUES ('728', '727', '2', '230201', '市辖区');
INSERT INTO `region` VALUES ('729', '727', '2', '230202', '龙沙区');
INSERT INTO `region` VALUES ('730', '727', '2', '230203', '建华区');
INSERT INTO `region` VALUES ('731', '727', '2', '230204', '铁锋区');
INSERT INTO `region` VALUES ('732', '727', '2', '230205', '昂昂溪区');
INSERT INTO `region` VALUES ('733', '727', '2', '230206', '富拉尔基区');
INSERT INTO `region` VALUES ('734', '727', '2', '230207', '碾子山区');
INSERT INTO `region` VALUES ('735', '727', '2', '230208', '梅里斯达斡尔族区');
INSERT INTO `region` VALUES ('736', '727', '2', '230221', '龙江县');
INSERT INTO `region` VALUES ('737', '727', '2', '230223', '依安县');
INSERT INTO `region` VALUES ('738', '727', '2', '230224', '泰来县');
INSERT INTO `region` VALUES ('739', '727', '2', '230225', '甘南县');
INSERT INTO `region` VALUES ('740', '727', '2', '230227', '富裕县');
INSERT INTO `region` VALUES ('741', '727', '2', '230229', '克山县');
INSERT INTO `region` VALUES ('742', '727', '2', '230230', '克东县');
INSERT INTO `region` VALUES ('743', '727', '2', '230231', '拜泉县');
INSERT INTO `region` VALUES ('744', '727', '2', '230281', '讷河市');
INSERT INTO `region` VALUES ('745', '706', '1', '230300', '鸡西市');
INSERT INTO `region` VALUES ('746', '745', '2', '230301', '市辖区');
INSERT INTO `region` VALUES ('747', '745', '2', '230302', '鸡冠区');
INSERT INTO `region` VALUES ('748', '745', '2', '230303', '恒山区');
INSERT INTO `region` VALUES ('749', '745', '2', '230304', '滴道区');
INSERT INTO `region` VALUES ('750', '745', '2', '230305', '梨树区');
INSERT INTO `region` VALUES ('751', '745', '2', '230306', '城子河区');
INSERT INTO `region` VALUES ('752', '745', '2', '230307', '麻山区');
INSERT INTO `region` VALUES ('753', '745', '2', '230321', '鸡东县');
INSERT INTO `region` VALUES ('754', '745', '2', '230381', '虎林市');
INSERT INTO `region` VALUES ('755', '745', '2', '230382', '密山市');
INSERT INTO `region` VALUES ('756', '706', '1', '230400', '鹤岗市');
INSERT INTO `region` VALUES ('757', '756', '2', '230401', '市辖区');
INSERT INTO `region` VALUES ('758', '756', '2', '230402', '向阳区');
INSERT INTO `region` VALUES ('759', '756', '2', '230403', '工农区');
INSERT INTO `region` VALUES ('760', '756', '2', '230404', '南山区');
INSERT INTO `region` VALUES ('761', '756', '2', '230405', '兴安区');
INSERT INTO `region` VALUES ('762', '756', '2', '230406', '东山区');
INSERT INTO `region` VALUES ('763', '756', '2', '230407', '兴山区');
INSERT INTO `region` VALUES ('764', '756', '2', '230421', '萝北县');
INSERT INTO `region` VALUES ('765', '756', '2', '230422', '绥滨县');
INSERT INTO `region` VALUES ('766', '706', '1', '230500', '双鸭山市');
INSERT INTO `region` VALUES ('767', '766', '2', '230501', '市辖区');
INSERT INTO `region` VALUES ('768', '766', '2', '230502', '尖山区');
INSERT INTO `region` VALUES ('769', '766', '2', '230503', '岭东区');
INSERT INTO `region` VALUES ('770', '766', '2', '230505', '四方台区');
INSERT INTO `region` VALUES ('771', '766', '2', '230506', '宝山区');
INSERT INTO `region` VALUES ('772', '766', '2', '230521', '集贤县');
INSERT INTO `region` VALUES ('773', '766', '2', '230522', '友谊县');
INSERT INTO `region` VALUES ('774', '766', '2', '230523', '宝清县');
INSERT INTO `region` VALUES ('775', '766', '2', '230524', '饶河县');
INSERT INTO `region` VALUES ('776', '706', '1', '230600', '大庆市');
INSERT INTO `region` VALUES ('777', '776', '2', '230601', '市辖区');
INSERT INTO `region` VALUES ('778', '776', '2', '230602', '萨尔图区');
INSERT INTO `region` VALUES ('779', '776', '2', '230603', '龙凤区');
INSERT INTO `region` VALUES ('780', '776', '2', '230604', '让胡路区');
INSERT INTO `region` VALUES ('781', '776', '2', '230605', '红岗区');
INSERT INTO `region` VALUES ('782', '776', '2', '230606', '大同区');
INSERT INTO `region` VALUES ('783', '776', '2', '230621', '肇州县');
INSERT INTO `region` VALUES ('784', '776', '2', '230622', '肇源县');
INSERT INTO `region` VALUES ('785', '776', '2', '230623', '林甸县');
INSERT INTO `region` VALUES ('786', '776', '2', '230624', '杜尔伯特蒙古族自治县');
INSERT INTO `region` VALUES ('787', '706', '1', '230700', '伊春市');
INSERT INTO `region` VALUES ('788', '787', '2', '230701', '市辖区');
INSERT INTO `region` VALUES ('789', '787', '2', '230702', '伊春区');
INSERT INTO `region` VALUES ('790', '787', '2', '230703', '南岔区');
INSERT INTO `region` VALUES ('791', '787', '2', '230704', '友好区');
INSERT INTO `region` VALUES ('792', '787', '2', '230705', '西林区');
INSERT INTO `region` VALUES ('793', '787', '2', '230706', '翠峦区');
INSERT INTO `region` VALUES ('794', '787', '2', '230707', '新青区');
INSERT INTO `region` VALUES ('795', '787', '2', '230708', '美溪区');
INSERT INTO `region` VALUES ('796', '787', '2', '230709', '金山屯区');
INSERT INTO `region` VALUES ('797', '787', '2', '230710', '五营区');
INSERT INTO `region` VALUES ('798', '787', '2', '230711', '乌马河区');
INSERT INTO `region` VALUES ('799', '787', '2', '230712', '汤旺河区');
INSERT INTO `region` VALUES ('800', '787', '2', '230713', '带岭区');
INSERT INTO `region` VALUES ('801', '787', '2', '230714', '乌伊岭区');
INSERT INTO `region` VALUES ('802', '787', '2', '230715', '红星区');
INSERT INTO `region` VALUES ('803', '787', '2', '230716', '上甘岭区');
INSERT INTO `region` VALUES ('804', '787', '2', '230722', '嘉荫县');
INSERT INTO `region` VALUES ('805', '787', '2', '230781', '铁力市');
INSERT INTO `region` VALUES ('806', '706', '1', '230800', '佳木斯市');
INSERT INTO `region` VALUES ('807', '806', '2', '230801', '市辖区');
INSERT INTO `region` VALUES ('808', '806', '2', '230803', '向阳区');
INSERT INTO `region` VALUES ('809', '806', '2', '230804', '前进区');
INSERT INTO `region` VALUES ('810', '806', '2', '230805', '东风区');
INSERT INTO `region` VALUES ('811', '806', '2', '230811', '郊区');
INSERT INTO `region` VALUES ('812', '806', '2', '230822', '桦南县');
INSERT INTO `region` VALUES ('813', '806', '2', '230826', '桦川县');
INSERT INTO `region` VALUES ('814', '806', '2', '230828', '汤原县');
INSERT INTO `region` VALUES ('815', '806', '2', '230833', '抚远县');
INSERT INTO `region` VALUES ('816', '806', '2', '230881', '同江市');
INSERT INTO `region` VALUES ('817', '806', '2', '230882', '富锦市');
INSERT INTO `region` VALUES ('818', '706', '1', '230900', '七台河市');
INSERT INTO `region` VALUES ('819', '818', '2', '230901', '市辖区');
INSERT INTO `region` VALUES ('820', '818', '2', '230902', '新兴区');
INSERT INTO `region` VALUES ('821', '818', '2', '230903', '桃山区');
INSERT INTO `region` VALUES ('822', '818', '2', '230904', '茄子河区');
INSERT INTO `region` VALUES ('823', '818', '2', '230921', '勃利县');
INSERT INTO `region` VALUES ('824', '706', '1', '231000', '牡丹江市');
INSERT INTO `region` VALUES ('825', '824', '2', '231001', '市辖区');
INSERT INTO `region` VALUES ('826', '824', '2', '231002', '东安区');
INSERT INTO `region` VALUES ('827', '824', '2', '231003', '阳明区');
INSERT INTO `region` VALUES ('828', '824', '2', '231004', '爱民区');
INSERT INTO `region` VALUES ('829', '824', '2', '231005', '西安区');
INSERT INTO `region` VALUES ('830', '824', '2', '231024', '东宁县');
INSERT INTO `region` VALUES ('831', '824', '2', '231025', '林口县');
INSERT INTO `region` VALUES ('832', '824', '2', '231081', '绥芬河市');
INSERT INTO `region` VALUES ('833', '824', '2', '231083', '海林市');
INSERT INTO `region` VALUES ('834', '824', '2', '231084', '宁安市');
INSERT INTO `region` VALUES ('835', '824', '2', '231085', '穆棱市');
INSERT INTO `region` VALUES ('836', '706', '1', '231100', '黑河市');
INSERT INTO `region` VALUES ('837', '836', '2', '231101', '市辖区');
INSERT INTO `region` VALUES ('838', '836', '2', '231102', '爱辉区');
INSERT INTO `region` VALUES ('839', '836', '2', '231121', '嫩江县');
INSERT INTO `region` VALUES ('840', '836', '2', '231123', '逊克县');
INSERT INTO `region` VALUES ('841', '836', '2', '231124', '孙吴县');
INSERT INTO `region` VALUES ('842', '836', '2', '231181', '北安市');
INSERT INTO `region` VALUES ('843', '836', '2', '231182', '五大连池市');
INSERT INTO `region` VALUES ('844', '706', '1', '231200', '绥化市');
INSERT INTO `region` VALUES ('845', '844', '2', '231201', '市辖区');
INSERT INTO `region` VALUES ('846', '844', '2', '231202', '北林区');
INSERT INTO `region` VALUES ('847', '844', '2', '231221', '望奎县');
INSERT INTO `region` VALUES ('848', '844', '2', '231222', '兰西县');
INSERT INTO `region` VALUES ('849', '844', '2', '231223', '青冈县');
INSERT INTO `region` VALUES ('850', '844', '2', '231224', '庆安县');
INSERT INTO `region` VALUES ('851', '844', '2', '231225', '明水县');
INSERT INTO `region` VALUES ('852', '844', '2', '231226', '绥棱县');
INSERT INTO `region` VALUES ('853', '844', '2', '231281', '安达市');
INSERT INTO `region` VALUES ('854', '844', '2', '231282', '肇东市');
INSERT INTO `region` VALUES ('855', '844', '2', '231283', '海伦市');
INSERT INTO `region` VALUES ('856', '706', '1', '232700', '大兴安岭地区');
INSERT INTO `region` VALUES ('857', '856', '2', '232721', '呼玛县');
INSERT INTO `region` VALUES ('858', '856', '2', '232722', '塔河县');
INSERT INTO `region` VALUES ('859', '856', '2', '232723', '漠河县');
INSERT INTO `region` VALUES ('860', '0', '0', '310000', '上海市');
INSERT INTO `region` VALUES ('861', '860', '1', '310100', '市辖区');
INSERT INTO `region` VALUES ('862', '861', '2', '310101', '黄浦区');
INSERT INTO `region` VALUES ('863', '861', '2', '310104', '徐汇区');
INSERT INTO `region` VALUES ('864', '861', '2', '310105', '长宁区');
INSERT INTO `region` VALUES ('865', '861', '2', '310106', '静安区');
INSERT INTO `region` VALUES ('866', '861', '2', '310107', '普陀区');
INSERT INTO `region` VALUES ('867', '861', '2', '310108', '闸北区');
INSERT INTO `region` VALUES ('868', '861', '2', '310109', '虹口区');
INSERT INTO `region` VALUES ('869', '861', '2', '310110', '杨浦区');
INSERT INTO `region` VALUES ('870', '861', '2', '310112', '闵行区');
INSERT INTO `region` VALUES ('871', '861', '2', '310113', '宝山区');
INSERT INTO `region` VALUES ('872', '861', '2', '310114', '嘉定区');
INSERT INTO `region` VALUES ('873', '861', '2', '310115', '浦东新区');
INSERT INTO `region` VALUES ('874', '861', '2', '310116', '金山区');
INSERT INTO `region` VALUES ('875', '861', '2', '310117', '松江区');
INSERT INTO `region` VALUES ('876', '861', '2', '310118', '青浦区');
INSERT INTO `region` VALUES ('877', '861', '2', '310120', '奉贤区');
INSERT INTO `region` VALUES ('878', '860', '1', '310200', '县');
INSERT INTO `region` VALUES ('879', '878', '2', '310230', '崇明县');
INSERT INTO `region` VALUES ('880', '0', '0', '320000', '江苏省');
INSERT INTO `region` VALUES ('881', '880', '1', '320100', '南京市');
INSERT INTO `region` VALUES ('882', '881', '2', '320101', '市辖区');
INSERT INTO `region` VALUES ('883', '881', '2', '320102', '玄武区');
INSERT INTO `region` VALUES ('884', '881', '2', '320104', '秦淮区');
INSERT INTO `region` VALUES ('885', '881', '2', '320105', '建邺区');
INSERT INTO `region` VALUES ('886', '881', '2', '320106', '鼓楼区');
INSERT INTO `region` VALUES ('887', '881', '2', '320111', '浦口区');
INSERT INTO `region` VALUES ('888', '881', '2', '320113', '栖霞区');
INSERT INTO `region` VALUES ('889', '881', '2', '320114', '雨花台区');
INSERT INTO `region` VALUES ('890', '881', '2', '320115', '江宁区');
INSERT INTO `region` VALUES ('891', '881', '2', '320116', '六合区');
INSERT INTO `region` VALUES ('892', '881', '2', '320117', '溧水区');
INSERT INTO `region` VALUES ('893', '881', '2', '320118', '高淳区');
INSERT INTO `region` VALUES ('894', '880', '1', '320200', '无锡市');
INSERT INTO `region` VALUES ('895', '894', '2', '320201', '市辖区');
INSERT INTO `region` VALUES ('896', '894', '2', '320202', '崇安区');
INSERT INTO `region` VALUES ('897', '894', '2', '320203', '南长区');
INSERT INTO `region` VALUES ('898', '894', '2', '320204', '北塘区');
INSERT INTO `region` VALUES ('899', '894', '2', '320205', '锡山区');
INSERT INTO `region` VALUES ('900', '894', '2', '320206', '惠山区');
INSERT INTO `region` VALUES ('901', '894', '2', '320211', '滨湖区');
INSERT INTO `region` VALUES ('902', '894', '2', '320281', '江阴市');
INSERT INTO `region` VALUES ('903', '894', '2', '320282', '宜兴市');
INSERT INTO `region` VALUES ('904', '880', '1', '320300', '徐州市');
INSERT INTO `region` VALUES ('905', '904', '2', '320301', '市辖区');
INSERT INTO `region` VALUES ('906', '904', '2', '320302', '鼓楼区');
INSERT INTO `region` VALUES ('907', '904', '2', '320303', '云龙区');
INSERT INTO `region` VALUES ('908', '904', '2', '320305', '贾汪区');
INSERT INTO `region` VALUES ('909', '904', '2', '320311', '泉山区');
INSERT INTO `region` VALUES ('910', '904', '2', '320312', '铜山区');
INSERT INTO `region` VALUES ('911', '904', '2', '320321', '丰县');
INSERT INTO `region` VALUES ('912', '904', '2', '320322', '沛县');
INSERT INTO `region` VALUES ('913', '904', '2', '320324', '睢宁县');
INSERT INTO `region` VALUES ('914', '904', '2', '320381', '新沂市');
INSERT INTO `region` VALUES ('915', '904', '2', '320382', '邳州市');
INSERT INTO `region` VALUES ('916', '880', '1', '320400', '常州市');
INSERT INTO `region` VALUES ('917', '916', '2', '320401', '市辖区');
INSERT INTO `region` VALUES ('918', '916', '2', '320402', '天宁区');
INSERT INTO `region` VALUES ('919', '916', '2', '320404', '钟楼区');
INSERT INTO `region` VALUES ('920', '916', '2', '320405', '戚墅堰区');
INSERT INTO `region` VALUES ('921', '916', '2', '320411', '新北区');
INSERT INTO `region` VALUES ('922', '916', '2', '320412', '武进区');
INSERT INTO `region` VALUES ('923', '916', '2', '320481', '溧阳市');
INSERT INTO `region` VALUES ('924', '916', '2', '320482', '金坛市');
INSERT INTO `region` VALUES ('925', '880', '1', '320500', '苏州市');
INSERT INTO `region` VALUES ('926', '925', '2', '320501', '市辖区');
INSERT INTO `region` VALUES ('927', '925', '2', '320505', '虎丘区');
INSERT INTO `region` VALUES ('928', '925', '2', '320506', '吴中区');
INSERT INTO `region` VALUES ('929', '925', '2', '320507', '相城区');
INSERT INTO `region` VALUES ('930', '925', '2', '320508', '姑苏区');
INSERT INTO `region` VALUES ('931', '925', '2', '320509', '吴江区');
INSERT INTO `region` VALUES ('932', '925', '2', '320581', '常熟市');
INSERT INTO `region` VALUES ('933', '925', '2', '320582', '张家港市');
INSERT INTO `region` VALUES ('934', '925', '2', '320583', '昆山市');
INSERT INTO `region` VALUES ('935', '925', '2', '320585', '太仓市');
INSERT INTO `region` VALUES ('936', '880', '1', '320600', '南通市');
INSERT INTO `region` VALUES ('937', '936', '2', '320601', '市辖区');
INSERT INTO `region` VALUES ('938', '936', '2', '320602', '崇川区');
INSERT INTO `region` VALUES ('939', '936', '2', '320611', '港闸区');
INSERT INTO `region` VALUES ('940', '936', '2', '320612', '通州区');
INSERT INTO `region` VALUES ('941', '936', '2', '320621', '海安县');
INSERT INTO `region` VALUES ('942', '936', '2', '320623', '如东县');
INSERT INTO `region` VALUES ('943', '936', '2', '320681', '启东市');
INSERT INTO `region` VALUES ('944', '936', '2', '320682', '如皋市');
INSERT INTO `region` VALUES ('945', '936', '2', '320684', '海门市');
INSERT INTO `region` VALUES ('946', '880', '1', '320700', '连云港市');
INSERT INTO `region` VALUES ('947', '946', '2', '320701', '市辖区');
INSERT INTO `region` VALUES ('948', '946', '2', '320703', '连云区');
INSERT INTO `region` VALUES ('949', '946', '2', '320706', '海州区');
INSERT INTO `region` VALUES ('950', '946', '2', '320707', '赣榆区');
INSERT INTO `region` VALUES ('951', '946', '2', '320722', '东海县');
INSERT INTO `region` VALUES ('952', '946', '2', '320723', '灌云县');
INSERT INTO `region` VALUES ('953', '946', '2', '320724', '灌南县');
INSERT INTO `region` VALUES ('954', '880', '1', '320800', '淮安市');
INSERT INTO `region` VALUES ('955', '954', '2', '320801', '市辖区');
INSERT INTO `region` VALUES ('956', '954', '2', '320802', '清河区');
INSERT INTO `region` VALUES ('957', '954', '2', '320803', '淮安区');
INSERT INTO `region` VALUES ('958', '954', '2', '320804', '淮阴区');
INSERT INTO `region` VALUES ('959', '954', '2', '320811', '清浦区');
INSERT INTO `region` VALUES ('960', '954', '2', '320826', '涟水县');
INSERT INTO `region` VALUES ('961', '954', '2', '320829', '洪泽县');
INSERT INTO `region` VALUES ('962', '954', '2', '320830', '盱眙县');
INSERT INTO `region` VALUES ('963', '954', '2', '320831', '金湖县');
INSERT INTO `region` VALUES ('964', '880', '1', '320900', '盐城市');
INSERT INTO `region` VALUES ('965', '964', '2', '320901', '市辖区');
INSERT INTO `region` VALUES ('966', '964', '2', '320902', '亭湖区');
INSERT INTO `region` VALUES ('967', '964', '2', '320903', '盐都区');
INSERT INTO `region` VALUES ('968', '964', '2', '320921', '响水县');
INSERT INTO `region` VALUES ('969', '964', '2', '320922', '滨海县');
INSERT INTO `region` VALUES ('970', '964', '2', '320923', '阜宁县');
INSERT INTO `region` VALUES ('971', '964', '2', '320924', '射阳县');
INSERT INTO `region` VALUES ('972', '964', '2', '320925', '建湖县');
INSERT INTO `region` VALUES ('973', '964', '2', '320981', '东台市');
INSERT INTO `region` VALUES ('974', '964', '2', '320982', '大丰市');
INSERT INTO `region` VALUES ('975', '880', '1', '321000', '扬州市');
INSERT INTO `region` VALUES ('976', '975', '2', '321001', '市辖区');
INSERT INTO `region` VALUES ('977', '975', '2', '321002', '广陵区');
INSERT INTO `region` VALUES ('978', '975', '2', '321003', '邗江区');
INSERT INTO `region` VALUES ('979', '975', '2', '321012', '江都区');
INSERT INTO `region` VALUES ('980', '975', '2', '321023', '宝应县');
INSERT INTO `region` VALUES ('981', '975', '2', '321081', '仪征市');
INSERT INTO `region` VALUES ('982', '975', '2', '321084', '高邮市');
INSERT INTO `region` VALUES ('983', '880', '1', '321100', '镇江市');
INSERT INTO `region` VALUES ('984', '983', '2', '321101', '市辖区');
INSERT INTO `region` VALUES ('985', '983', '2', '321102', '京口区');
INSERT INTO `region` VALUES ('986', '983', '2', '321111', '润州区');
INSERT INTO `region` VALUES ('987', '983', '2', '321112', '丹徒区');
INSERT INTO `region` VALUES ('988', '983', '2', '321181', '丹阳市');
INSERT INTO `region` VALUES ('989', '983', '2', '321182', '扬中市');
INSERT INTO `region` VALUES ('990', '983', '2', '321183', '句容市');
INSERT INTO `region` VALUES ('991', '880', '1', '321200', '泰州市');
INSERT INTO `region` VALUES ('992', '991', '2', '321201', '市辖区');
INSERT INTO `region` VALUES ('993', '991', '2', '321202', '海陵区');
INSERT INTO `region` VALUES ('994', '991', '2', '321203', '高港区');
INSERT INTO `region` VALUES ('995', '991', '2', '321204', '姜堰区');
INSERT INTO `region` VALUES ('996', '991', '2', '321281', '兴化市');
INSERT INTO `region` VALUES ('997', '991', '2', '321282', '靖江市');
INSERT INTO `region` VALUES ('998', '991', '2', '321283', '泰兴市');
INSERT INTO `region` VALUES ('999', '880', '1', '321300', '宿迁市');
INSERT INTO `region` VALUES ('1000', '999', '2', '321301', '市辖区');
INSERT INTO `region` VALUES ('1001', '999', '2', '321302', '宿城区');
INSERT INTO `region` VALUES ('1002', '999', '2', '321311', '宿豫区');
INSERT INTO `region` VALUES ('1003', '999', '2', '321322', '沭阳县');
INSERT INTO `region` VALUES ('1004', '999', '2', '321323', '泗阳县');
INSERT INTO `region` VALUES ('1005', '999', '2', '321324', '泗洪县');
INSERT INTO `region` VALUES ('1006', '0', '0', '330000', '浙江省');
INSERT INTO `region` VALUES ('1007', '1006', '1', '330100', '杭州市');
INSERT INTO `region` VALUES ('1008', '1007', '2', '330101', '市辖区');
INSERT INTO `region` VALUES ('1009', '1007', '2', '330102', '上城区');
INSERT INTO `region` VALUES ('1010', '1007', '2', '330103', '下城区');
INSERT INTO `region` VALUES ('1011', '1007', '2', '330104', '江干区');
INSERT INTO `region` VALUES ('1012', '1007', '2', '330105', '拱墅区');
INSERT INTO `region` VALUES ('1013', '1007', '2', '330106', '西湖区');
INSERT INTO `region` VALUES ('1014', '1007', '2', '330108', '滨江区');
INSERT INTO `region` VALUES ('1015', '1007', '2', '330109', '萧山区');
INSERT INTO `region` VALUES ('1016', '1007', '2', '330110', '余杭区');
INSERT INTO `region` VALUES ('1017', '1007', '2', '330122', '桐庐县');
INSERT INTO `region` VALUES ('1018', '1007', '2', '330127', '淳安县');
INSERT INTO `region` VALUES ('1019', '1007', '2', '330182', '建德市');
INSERT INTO `region` VALUES ('1020', '1007', '2', '330183', '富阳市');
INSERT INTO `region` VALUES ('1021', '1007', '2', '330185', '临安市');
INSERT INTO `region` VALUES ('1022', '1006', '1', '330200', '宁波市');
INSERT INTO `region` VALUES ('1023', '1022', '2', '330201', '市辖区');
INSERT INTO `region` VALUES ('1024', '1022', '2', '330203', '海曙区');
INSERT INTO `region` VALUES ('1025', '1022', '2', '330204', '江东区');
INSERT INTO `region` VALUES ('1026', '1022', '2', '330205', '江北区');
INSERT INTO `region` VALUES ('1027', '1022', '2', '330206', '北仑区');
INSERT INTO `region` VALUES ('1028', '1022', '2', '330211', '镇海区');
INSERT INTO `region` VALUES ('1029', '1022', '2', '330212', '鄞州区');
INSERT INTO `region` VALUES ('1030', '1022', '2', '330225', '象山县');
INSERT INTO `region` VALUES ('1031', '1022', '2', '330226', '宁海县');
INSERT INTO `region` VALUES ('1032', '1022', '2', '330281', '余姚市');
INSERT INTO `region` VALUES ('1033', '1022', '2', '330282', '慈溪市');
INSERT INTO `region` VALUES ('1034', '1022', '2', '330283', '奉化市');
INSERT INTO `region` VALUES ('1035', '1006', '1', '330300', '温州市');
INSERT INTO `region` VALUES ('1036', '1035', '2', '330301', '市辖区');
INSERT INTO `region` VALUES ('1037', '1035', '2', '330302', '鹿城区');
INSERT INTO `region` VALUES ('1038', '1035', '2', '330303', '龙湾区');
INSERT INTO `region` VALUES ('1039', '1035', '2', '330304', '瓯海区');
INSERT INTO `region` VALUES ('1040', '1035', '2', '330322', '洞头县');
INSERT INTO `region` VALUES ('1041', '1035', '2', '330324', '永嘉县');
INSERT INTO `region` VALUES ('1042', '1035', '2', '330326', '平阳县');
INSERT INTO `region` VALUES ('1043', '1035', '2', '330327', '苍南县');
INSERT INTO `region` VALUES ('1044', '1035', '2', '330328', '文成县');
INSERT INTO `region` VALUES ('1045', '1035', '2', '330329', '泰顺县');
INSERT INTO `region` VALUES ('1046', '1035', '2', '330381', '瑞安市');
INSERT INTO `region` VALUES ('1047', '1035', '2', '330382', '乐清市');
INSERT INTO `region` VALUES ('1048', '1006', '1', '330400', '嘉兴市');
INSERT INTO `region` VALUES ('1049', '1048', '2', '330401', '市辖区');
INSERT INTO `region` VALUES ('1050', '1048', '2', '330402', '南湖区');
INSERT INTO `region` VALUES ('1051', '1048', '2', '330411', '秀洲区');
INSERT INTO `region` VALUES ('1052', '1048', '2', '330421', '嘉善县');
INSERT INTO `region` VALUES ('1053', '1048', '2', '330424', '海盐县');
INSERT INTO `region` VALUES ('1054', '1048', '2', '330481', '海宁市');
INSERT INTO `region` VALUES ('1055', '1048', '2', '330482', '平湖市');
INSERT INTO `region` VALUES ('1056', '1048', '2', '330483', '桐乡市');
INSERT INTO `region` VALUES ('1057', '1006', '1', '330500', '湖州市');
INSERT INTO `region` VALUES ('1058', '1057', '2', '330501', '市辖区');
INSERT INTO `region` VALUES ('1059', '1057', '2', '330502', '吴兴区');
INSERT INTO `region` VALUES ('1060', '1057', '2', '330503', '南浔区');
INSERT INTO `region` VALUES ('1061', '1057', '2', '330521', '德清县');
INSERT INTO `region` VALUES ('1062', '1057', '2', '330522', '长兴县');
INSERT INTO `region` VALUES ('1063', '1057', '2', '330523', '安吉县');
INSERT INTO `region` VALUES ('1064', '1006', '1', '330600', '绍兴市');
INSERT INTO `region` VALUES ('1065', '1064', '2', '330601', '市辖区');
INSERT INTO `region` VALUES ('1066', '1064', '2', '330602', '越城区');
INSERT INTO `region` VALUES ('1067', '1064', '2', '330603', '柯桥区');
INSERT INTO `region` VALUES ('1068', '1064', '2', '330604', '上虞区');
INSERT INTO `region` VALUES ('1069', '1064', '2', '330624', '新昌县');
INSERT INTO `region` VALUES ('1070', '1064', '2', '330681', '诸暨市');
INSERT INTO `region` VALUES ('1071', '1064', '2', '330683', '嵊州市');
INSERT INTO `region` VALUES ('1072', '1006', '1', '330700', '金华市');
INSERT INTO `region` VALUES ('1073', '1072', '2', '330701', '市辖区');
INSERT INTO `region` VALUES ('1074', '1072', '2', '330702', '婺城区');
INSERT INTO `region` VALUES ('1075', '1072', '2', '330703', '金东区');
INSERT INTO `region` VALUES ('1076', '1072', '2', '330723', '武义县');
INSERT INTO `region` VALUES ('1077', '1072', '2', '330726', '浦江县');
INSERT INTO `region` VALUES ('1078', '1072', '2', '330727', '磐安县');
INSERT INTO `region` VALUES ('1079', '1072', '2', '330781', '兰溪市');
INSERT INTO `region` VALUES ('1080', '1072', '2', '330782', '义乌市');
INSERT INTO `region` VALUES ('1081', '1072', '2', '330783', '东阳市');
INSERT INTO `region` VALUES ('1082', '1072', '2', '330784', '永康市');
INSERT INTO `region` VALUES ('1083', '1006', '1', '330800', '衢州市');
INSERT INTO `region` VALUES ('1084', '1083', '2', '330801', '市辖区');
INSERT INTO `region` VALUES ('1085', '1083', '2', '330802', '柯城区');
INSERT INTO `region` VALUES ('1086', '1083', '2', '330803', '衢江区');
INSERT INTO `region` VALUES ('1087', '1083', '2', '330822', '常山县');
INSERT INTO `region` VALUES ('1088', '1083', '2', '330824', '开化县');
INSERT INTO `region` VALUES ('1089', '1083', '2', '330825', '龙游县');
INSERT INTO `region` VALUES ('1090', '1083', '2', '330881', '江山市');
INSERT INTO `region` VALUES ('1091', '1006', '1', '330900', '舟山市');
INSERT INTO `region` VALUES ('1092', '1091', '2', '330901', '市辖区');
INSERT INTO `region` VALUES ('1093', '1091', '2', '330902', '定海区');
INSERT INTO `region` VALUES ('1094', '1091', '2', '330903', '普陀区');
INSERT INTO `region` VALUES ('1095', '1091', '2', '330921', '岱山县');
INSERT INTO `region` VALUES ('1096', '1091', '2', '330922', '嵊泗县');
INSERT INTO `region` VALUES ('1097', '1006', '1', '331000', '台州市');
INSERT INTO `region` VALUES ('1098', '1097', '2', '331001', '市辖区');
INSERT INTO `region` VALUES ('1099', '1097', '2', '331002', '椒江区');
INSERT INTO `region` VALUES ('1100', '1097', '2', '331003', '黄岩区');
INSERT INTO `region` VALUES ('1101', '1097', '2', '331004', '路桥区');
INSERT INTO `region` VALUES ('1102', '1097', '2', '331021', '玉环县');
INSERT INTO `region` VALUES ('1103', '1097', '2', '331022', '三门县');
INSERT INTO `region` VALUES ('1104', '1097', '2', '331023', '天台县');
INSERT INTO `region` VALUES ('1105', '1097', '2', '331024', '仙居县');
INSERT INTO `region` VALUES ('1106', '1097', '2', '331081', '温岭市');
INSERT INTO `region` VALUES ('1107', '1097', '2', '331082', '临海市');
INSERT INTO `region` VALUES ('1108', '1006', '1', '331100', '丽水市');
INSERT INTO `region` VALUES ('1109', '1108', '2', '331101', '市辖区');
INSERT INTO `region` VALUES ('1110', '1108', '2', '331102', '莲都区');
INSERT INTO `region` VALUES ('1111', '1108', '2', '331121', '青田县');
INSERT INTO `region` VALUES ('1112', '1108', '2', '331122', '缙云县');
INSERT INTO `region` VALUES ('1113', '1108', '2', '331123', '遂昌县');
INSERT INTO `region` VALUES ('1114', '1108', '2', '331124', '松阳县');
INSERT INTO `region` VALUES ('1115', '1108', '2', '331125', '云和县');
INSERT INTO `region` VALUES ('1116', '1108', '2', '331126', '庆元县');
INSERT INTO `region` VALUES ('1117', '1108', '2', '331127', '景宁畲族自治县');
INSERT INTO `region` VALUES ('1118', '1108', '2', '331181', '龙泉市');
INSERT INTO `region` VALUES ('1119', '0', '0', '340000', '安徽省');
INSERT INTO `region` VALUES ('1120', '1119', '1', '340100', '合肥市');
INSERT INTO `region` VALUES ('1121', '1120', '2', '340101', '市辖区');
INSERT INTO `region` VALUES ('1122', '1120', '2', '340102', '瑶海区');
INSERT INTO `region` VALUES ('1123', '1120', '2', '340103', '庐阳区');
INSERT INTO `region` VALUES ('1124', '1120', '2', '340104', '蜀山区');
INSERT INTO `region` VALUES ('1125', '1120', '2', '340111', '包河区');
INSERT INTO `region` VALUES ('1126', '1120', '2', '340121', '长丰县');
INSERT INTO `region` VALUES ('1127', '1120', '2', '340122', '肥东县');
INSERT INTO `region` VALUES ('1128', '1120', '2', '340123', '肥西县');
INSERT INTO `region` VALUES ('1129', '1120', '2', '340124', '庐江县');
INSERT INTO `region` VALUES ('1130', '1120', '2', '340181', '巢湖市');
INSERT INTO `region` VALUES ('1131', '1119', '1', '340200', '芜湖市');
INSERT INTO `region` VALUES ('1132', '1131', '2', '340201', '市辖区');
INSERT INTO `region` VALUES ('1133', '1131', '2', '340202', '镜湖区');
INSERT INTO `region` VALUES ('1134', '1131', '2', '340203', '弋江区');
INSERT INTO `region` VALUES ('1135', '1131', '2', '340207', '鸠江区');
INSERT INTO `region` VALUES ('1136', '1131', '2', '340208', '三山区');
INSERT INTO `region` VALUES ('1137', '1131', '2', '340221', '芜湖县');
INSERT INTO `region` VALUES ('1138', '1131', '2', '340222', '繁昌县');
INSERT INTO `region` VALUES ('1139', '1131', '2', '340223', '南陵县');
INSERT INTO `region` VALUES ('1140', '1131', '2', '340225', '无为县');
INSERT INTO `region` VALUES ('1141', '1119', '1', '340300', '蚌埠市');
INSERT INTO `region` VALUES ('1142', '1141', '2', '340301', '市辖区');
INSERT INTO `region` VALUES ('1143', '1141', '2', '340302', '龙子湖区');
INSERT INTO `region` VALUES ('1144', '1141', '2', '340303', '蚌山区');
INSERT INTO `region` VALUES ('1145', '1141', '2', '340304', '禹会区');
INSERT INTO `region` VALUES ('1146', '1141', '2', '340311', '淮上区');
INSERT INTO `region` VALUES ('1147', '1141', '2', '340321', '怀远县');
INSERT INTO `region` VALUES ('1148', '1141', '2', '340322', '五河县');
INSERT INTO `region` VALUES ('1149', '1141', '2', '340323', '固镇县');
INSERT INTO `region` VALUES ('1150', '1119', '1', '340400', '淮南市');
INSERT INTO `region` VALUES ('1151', '1150', '2', '340401', '市辖区');
INSERT INTO `region` VALUES ('1152', '1150', '2', '340402', '大通区');
INSERT INTO `region` VALUES ('1153', '1150', '2', '340403', '田家庵区');
INSERT INTO `region` VALUES ('1154', '1150', '2', '340404', '谢家集区');
INSERT INTO `region` VALUES ('1155', '1150', '2', '340405', '八公山区');
INSERT INTO `region` VALUES ('1156', '1150', '2', '340406', '潘集区');
INSERT INTO `region` VALUES ('1157', '1150', '2', '340421', '凤台县');
INSERT INTO `region` VALUES ('1158', '1119', '1', '340500', '马鞍山市');
INSERT INTO `region` VALUES ('1159', '1158', '2', '340501', '市辖区');
INSERT INTO `region` VALUES ('1160', '1158', '2', '340503', '花山区');
INSERT INTO `region` VALUES ('1161', '1158', '2', '340504', '雨山区');
INSERT INTO `region` VALUES ('1162', '1158', '2', '340506', '博望区');
INSERT INTO `region` VALUES ('1163', '1158', '2', '340521', '当涂县');
INSERT INTO `region` VALUES ('1164', '1158', '2', '340522', '含山县');
INSERT INTO `region` VALUES ('1165', '1158', '2', '340523', '和县');
INSERT INTO `region` VALUES ('1166', '1119', '1', '340600', '淮北市');
INSERT INTO `region` VALUES ('1167', '1166', '2', '340601', '市辖区');
INSERT INTO `region` VALUES ('1168', '1166', '2', '340602', '杜集区');
INSERT INTO `region` VALUES ('1169', '1166', '2', '340603', '相山区');
INSERT INTO `region` VALUES ('1170', '1166', '2', '340604', '烈山区');
INSERT INTO `region` VALUES ('1171', '1166', '2', '340621', '濉溪县');
INSERT INTO `region` VALUES ('1172', '1119', '1', '340700', '铜陵市');
INSERT INTO `region` VALUES ('1173', '1172', '2', '340701', '市辖区');
INSERT INTO `region` VALUES ('1174', '1172', '2', '340702', '铜官山区');
INSERT INTO `region` VALUES ('1175', '1172', '2', '340703', '狮子山区');
INSERT INTO `region` VALUES ('1176', '1172', '2', '340711', '郊区');
INSERT INTO `region` VALUES ('1177', '1172', '2', '340721', '铜陵县');
INSERT INTO `region` VALUES ('1178', '1119', '1', '340800', '安庆市');
INSERT INTO `region` VALUES ('1179', '1178', '2', '340801', '市辖区');
INSERT INTO `region` VALUES ('1180', '1178', '2', '340802', '迎江区');
INSERT INTO `region` VALUES ('1181', '1178', '2', '340803', '大观区');
INSERT INTO `region` VALUES ('1182', '1178', '2', '340811', '宜秀区');
INSERT INTO `region` VALUES ('1183', '1178', '2', '340822', '怀宁县');
INSERT INTO `region` VALUES ('1184', '1178', '2', '340823', '枞阳县');
INSERT INTO `region` VALUES ('1185', '1178', '2', '340824', '潜山县');
INSERT INTO `region` VALUES ('1186', '1178', '2', '340825', '太湖县');
INSERT INTO `region` VALUES ('1187', '1178', '2', '340826', '宿松县');
INSERT INTO `region` VALUES ('1188', '1178', '2', '340827', '望江县');
INSERT INTO `region` VALUES ('1189', '1178', '2', '340828', '岳西县');
INSERT INTO `region` VALUES ('1190', '1178', '2', '340881', '桐城市');
INSERT INTO `region` VALUES ('1191', '1119', '1', '341000', '黄山市');
INSERT INTO `region` VALUES ('1192', '1191', '2', '341001', '市辖区');
INSERT INTO `region` VALUES ('1193', '1191', '2', '341002', '屯溪区');
INSERT INTO `region` VALUES ('1194', '1191', '2', '341003', '黄山区');
INSERT INTO `region` VALUES ('1195', '1191', '2', '341004', '徽州区');
INSERT INTO `region` VALUES ('1196', '1191', '2', '341021', '歙县');
INSERT INTO `region` VALUES ('1197', '1191', '2', '341022', '休宁县');
INSERT INTO `region` VALUES ('1198', '1191', '2', '341023', '黟县');
INSERT INTO `region` VALUES ('1199', '1191', '2', '341024', '祁门县');
INSERT INTO `region` VALUES ('1200', '1119', '1', '341100', '滁州市');
INSERT INTO `region` VALUES ('1201', '1200', '2', '341101', '市辖区');
INSERT INTO `region` VALUES ('1202', '1200', '2', '341102', '琅琊区');
INSERT INTO `region` VALUES ('1203', '1200', '2', '341103', '南谯区');
INSERT INTO `region` VALUES ('1204', '1200', '2', '341122', '来安县');
INSERT INTO `region` VALUES ('1205', '1200', '2', '341124', '全椒县');
INSERT INTO `region` VALUES ('1206', '1200', '2', '341125', '定远县');
INSERT INTO `region` VALUES ('1207', '1200', '2', '341126', '凤阳县');
INSERT INTO `region` VALUES ('1208', '1200', '2', '341181', '天长市');
INSERT INTO `region` VALUES ('1209', '1200', '2', '341182', '明光市');
INSERT INTO `region` VALUES ('1210', '1119', '1', '341200', '阜阳市');
INSERT INTO `region` VALUES ('1211', '1210', '2', '341201', '市辖区');
INSERT INTO `region` VALUES ('1212', '1210', '2', '341202', '颍州区');
INSERT INTO `region` VALUES ('1213', '1210', '2', '341203', '颍东区');
INSERT INTO `region` VALUES ('1214', '1210', '2', '341204', '颍泉区');
INSERT INTO `region` VALUES ('1215', '1210', '2', '341221', '临泉县');
INSERT INTO `region` VALUES ('1216', '1210', '2', '341222', '太和县');
INSERT INTO `region` VALUES ('1217', '1210', '2', '341225', '阜南县');
INSERT INTO `region` VALUES ('1218', '1210', '2', '341226', '颍上县');
INSERT INTO `region` VALUES ('1219', '1210', '2', '341282', '界首市');
INSERT INTO `region` VALUES ('1220', '1119', '1', '341300', '宿州市');
INSERT INTO `region` VALUES ('1221', '1220', '2', '341301', '市辖区');
INSERT INTO `region` VALUES ('1222', '1220', '2', '341302', '埇桥区');
INSERT INTO `region` VALUES ('1223', '1220', '2', '341321', '砀山县');
INSERT INTO `region` VALUES ('1224', '1220', '2', '341322', '萧县');
INSERT INTO `region` VALUES ('1225', '1220', '2', '341323', '灵璧县');
INSERT INTO `region` VALUES ('1226', '1220', '2', '341324', '泗县');
INSERT INTO `region` VALUES ('1227', '1119', '1', '341500', '六安市');
INSERT INTO `region` VALUES ('1228', '1227', '2', '341501', '市辖区');
INSERT INTO `region` VALUES ('1229', '1227', '2', '341502', '金安区');
INSERT INTO `region` VALUES ('1230', '1227', '2', '341503', '裕安区');
INSERT INTO `region` VALUES ('1231', '1227', '2', '341521', '寿县');
INSERT INTO `region` VALUES ('1232', '1227', '2', '341522', '霍邱县');
INSERT INTO `region` VALUES ('1233', '1227', '2', '341523', '舒城县');
INSERT INTO `region` VALUES ('1234', '1227', '2', '341524', '金寨县');
INSERT INTO `region` VALUES ('1235', '1227', '2', '341525', '霍山县');
INSERT INTO `region` VALUES ('1236', '1119', '1', '341600', '亳州市');
INSERT INTO `region` VALUES ('1237', '1236', '2', '341601', '市辖区');
INSERT INTO `region` VALUES ('1238', '1236', '2', '341602', '谯城区');
INSERT INTO `region` VALUES ('1239', '1236', '2', '341621', '涡阳县');
INSERT INTO `region` VALUES ('1240', '1236', '2', '341622', '蒙城县');
INSERT INTO `region` VALUES ('1241', '1236', '2', '341623', '利辛县');
INSERT INTO `region` VALUES ('1242', '1119', '1', '341700', '池州市');
INSERT INTO `region` VALUES ('1243', '1242', '2', '341701', '市辖区');
INSERT INTO `region` VALUES ('1244', '1242', '2', '341702', '贵池区');
INSERT INTO `region` VALUES ('1245', '1242', '2', '341721', '东至县');
INSERT INTO `region` VALUES ('1246', '1242', '2', '341722', '石台县');
INSERT INTO `region` VALUES ('1247', '1242', '2', '341723', '青阳县');
INSERT INTO `region` VALUES ('1248', '1119', '1', '341800', '宣城市');
INSERT INTO `region` VALUES ('1249', '1248', '2', '341801', '市辖区');
INSERT INTO `region` VALUES ('1250', '1248', '2', '341802', '宣州区');
INSERT INTO `region` VALUES ('1251', '1248', '2', '341821', '郎溪县');
INSERT INTO `region` VALUES ('1252', '1248', '2', '341822', '广德县');
INSERT INTO `region` VALUES ('1253', '1248', '2', '341823', '泾县');
INSERT INTO `region` VALUES ('1254', '1248', '2', '341824', '绩溪县');
INSERT INTO `region` VALUES ('1255', '1248', '2', '341825', '旌德县');
INSERT INTO `region` VALUES ('1256', '1248', '2', '341881', '宁国市');
INSERT INTO `region` VALUES ('1257', '0', '0', '350000', '福建省');
INSERT INTO `region` VALUES ('1258', '1257', '1', '350100', '福州市');
INSERT INTO `region` VALUES ('1259', '1258', '2', '350101', '市辖区');
INSERT INTO `region` VALUES ('1260', '1258', '2', '350102', '鼓楼区');
INSERT INTO `region` VALUES ('1261', '1258', '2', '350103', '台江区');
INSERT INTO `region` VALUES ('1262', '1258', '2', '350104', '仓山区');
INSERT INTO `region` VALUES ('1263', '1258', '2', '350105', '马尾区');
INSERT INTO `region` VALUES ('1264', '1258', '2', '350111', '晋安区');
INSERT INTO `region` VALUES ('1265', '1258', '2', '350121', '闽侯县');
INSERT INTO `region` VALUES ('1266', '1258', '2', '350122', '连江县');
INSERT INTO `region` VALUES ('1267', '1258', '2', '350123', '罗源县');
INSERT INTO `region` VALUES ('1268', '1258', '2', '350124', '闽清县');
INSERT INTO `region` VALUES ('1269', '1258', '2', '350125', '永泰县');
INSERT INTO `region` VALUES ('1270', '1258', '2', '350128', '平潭县');
INSERT INTO `region` VALUES ('1271', '1258', '2', '350181', '福清市');
INSERT INTO `region` VALUES ('1272', '1258', '2', '350182', '长乐市');
INSERT INTO `region` VALUES ('1273', '1257', '1', '350200', '厦门市');
INSERT INTO `region` VALUES ('1274', '1273', '2', '350201', '市辖区');
INSERT INTO `region` VALUES ('1275', '1273', '2', '350203', '思明区');
INSERT INTO `region` VALUES ('1276', '1273', '2', '350205', '海沧区');
INSERT INTO `region` VALUES ('1277', '1273', '2', '350206', '湖里区');
INSERT INTO `region` VALUES ('1278', '1273', '2', '350211', '集美区');
INSERT INTO `region` VALUES ('1279', '1273', '2', '350212', '同安区');
INSERT INTO `region` VALUES ('1280', '1273', '2', '350213', '翔安区');
INSERT INTO `region` VALUES ('1281', '1257', '1', '350300', '莆田市');
INSERT INTO `region` VALUES ('1282', '1281', '2', '350301', '市辖区');
INSERT INTO `region` VALUES ('1283', '1281', '2', '350302', '城厢区');
INSERT INTO `region` VALUES ('1284', '1281', '2', '350303', '涵江区');
INSERT INTO `region` VALUES ('1285', '1281', '2', '350304', '荔城区');
INSERT INTO `region` VALUES ('1286', '1281', '2', '350305', '秀屿区');
INSERT INTO `region` VALUES ('1287', '1281', '2', '350322', '仙游县');
INSERT INTO `region` VALUES ('1288', '1257', '1', '350400', '三明市');
INSERT INTO `region` VALUES ('1289', '1288', '2', '350401', '市辖区');
INSERT INTO `region` VALUES ('1290', '1288', '2', '350402', '梅列区');
INSERT INTO `region` VALUES ('1291', '1288', '2', '350403', '三元区');
INSERT INTO `region` VALUES ('1292', '1288', '2', '350421', '明溪县');
INSERT INTO `region` VALUES ('1293', '1288', '2', '350423', '清流县');
INSERT INTO `region` VALUES ('1294', '1288', '2', '350424', '宁化县');
INSERT INTO `region` VALUES ('1295', '1288', '2', '350425', '大田县');
INSERT INTO `region` VALUES ('1296', '1288', '2', '350426', '尤溪县');
INSERT INTO `region` VALUES ('1297', '1288', '2', '350427', '沙县');
INSERT INTO `region` VALUES ('1298', '1288', '2', '350428', '将乐县');
INSERT INTO `region` VALUES ('1299', '1288', '2', '350429', '泰宁县');
INSERT INTO `region` VALUES ('1300', '1288', '2', '350430', '建宁县');
INSERT INTO `region` VALUES ('1301', '1288', '2', '350481', '永安市');
INSERT INTO `region` VALUES ('1302', '1257', '1', '350500', '泉州市');
INSERT INTO `region` VALUES ('1303', '1302', '2', '350501', '市辖区');
INSERT INTO `region` VALUES ('1304', '1302', '2', '350502', '鲤城区');
INSERT INTO `region` VALUES ('1305', '1302', '2', '350503', '丰泽区');
INSERT INTO `region` VALUES ('1306', '1302', '2', '350504', '洛江区');
INSERT INTO `region` VALUES ('1307', '1302', '2', '350505', '泉港区');
INSERT INTO `region` VALUES ('1308', '1302', '2', '350521', '惠安县');
INSERT INTO `region` VALUES ('1309', '1302', '2', '350524', '安溪县');
INSERT INTO `region` VALUES ('1310', '1302', '2', '350525', '永春县');
INSERT INTO `region` VALUES ('1311', '1302', '2', '350526', '德化县');
INSERT INTO `region` VALUES ('1312', '1302', '2', '350527', '金门县');
INSERT INTO `region` VALUES ('1313', '1302', '2', '350581', '石狮市');
INSERT INTO `region` VALUES ('1314', '1302', '2', '350582', '晋江市');
INSERT INTO `region` VALUES ('1315', '1302', '2', '350583', '南安市');
INSERT INTO `region` VALUES ('1316', '1257', '1', '350600', '漳州市');
INSERT INTO `region` VALUES ('1317', '1316', '2', '350601', '市辖区');
INSERT INTO `region` VALUES ('1318', '1316', '2', '350602', '芗城区');
INSERT INTO `region` VALUES ('1319', '1316', '2', '350603', '龙文区');
INSERT INTO `region` VALUES ('1320', '1316', '2', '350622', '云霄县');
INSERT INTO `region` VALUES ('1321', '1316', '2', '350623', '漳浦县');
INSERT INTO `region` VALUES ('1322', '1316', '2', '350624', '诏安县');
INSERT INTO `region` VALUES ('1323', '1316', '2', '350625', '长泰县');
INSERT INTO `region` VALUES ('1324', '1316', '2', '350626', '东山县');
INSERT INTO `region` VALUES ('1325', '1316', '2', '350627', '南靖县');
INSERT INTO `region` VALUES ('1326', '1316', '2', '350628', '平和县');
INSERT INTO `region` VALUES ('1327', '1316', '2', '350629', '华安县');
INSERT INTO `region` VALUES ('1328', '1316', '2', '350681', '龙海市');
INSERT INTO `region` VALUES ('1329', '1257', '1', '350700', '南平市');
INSERT INTO `region` VALUES ('1330', '1329', '2', '350701', '市辖区');
INSERT INTO `region` VALUES ('1331', '1329', '2', '350702', '延平区');
INSERT INTO `region` VALUES ('1332', '1329', '2', '350721', '顺昌县');
INSERT INTO `region` VALUES ('1333', '1329', '2', '350722', '浦城县');
INSERT INTO `region` VALUES ('1334', '1329', '2', '350723', '光泽县');
INSERT INTO `region` VALUES ('1335', '1329', '2', '350724', '松溪县');
INSERT INTO `region` VALUES ('1336', '1329', '2', '350725', '政和县');
INSERT INTO `region` VALUES ('1337', '1329', '2', '350781', '邵武市');
INSERT INTO `region` VALUES ('1338', '1329', '2', '350782', '武夷山市');
INSERT INTO `region` VALUES ('1339', '1329', '2', '350783', '建瓯市');
INSERT INTO `region` VALUES ('1340', '1329', '2', '350784', '建阳市');
INSERT INTO `region` VALUES ('1341', '1257', '1', '350800', '龙岩市');
INSERT INTO `region` VALUES ('1342', '1341', '2', '350801', '市辖区');
INSERT INTO `region` VALUES ('1343', '1341', '2', '350802', '新罗区');
INSERT INTO `region` VALUES ('1344', '1341', '2', '350821', '长汀县');
INSERT INTO `region` VALUES ('1345', '1341', '2', '350822', '永定县');
INSERT INTO `region` VALUES ('1346', '1341', '2', '350823', '上杭县');
INSERT INTO `region` VALUES ('1347', '1341', '2', '350824', '武平县');
INSERT INTO `region` VALUES ('1348', '1341', '2', '350825', '连城县');
INSERT INTO `region` VALUES ('1349', '1341', '2', '350881', '漳平市');
INSERT INTO `region` VALUES ('1350', '1257', '1', '350900', '宁德市');
INSERT INTO `region` VALUES ('1351', '1350', '2', '350901', '市辖区');
INSERT INTO `region` VALUES ('1352', '1350', '2', '350902', '蕉城区');
INSERT INTO `region` VALUES ('1353', '1350', '2', '350921', '霞浦县');
INSERT INTO `region` VALUES ('1354', '1350', '2', '350922', '古田县');
INSERT INTO `region` VALUES ('1355', '1350', '2', '350923', '屏南县');
INSERT INTO `region` VALUES ('1356', '1350', '2', '350924', '寿宁县');
INSERT INTO `region` VALUES ('1357', '1350', '2', '350925', '周宁县');
INSERT INTO `region` VALUES ('1358', '1350', '2', '350926', '柘荣县');
INSERT INTO `region` VALUES ('1359', '1350', '2', '350981', '福安市');
INSERT INTO `region` VALUES ('1360', '1350', '2', '350982', '福鼎市');
INSERT INTO `region` VALUES ('1361', '0', '0', '360000', '江西省');
INSERT INTO `region` VALUES ('1362', '1361', '1', '360100', '南昌市');
INSERT INTO `region` VALUES ('1363', '1362', '2', '360101', '市辖区');
INSERT INTO `region` VALUES ('1364', '1362', '2', '360102', '东湖区');
INSERT INTO `region` VALUES ('1365', '1362', '2', '360103', '西湖区');
INSERT INTO `region` VALUES ('1366', '1362', '2', '360104', '青云谱区');
INSERT INTO `region` VALUES ('1367', '1362', '2', '360105', '湾里区');
INSERT INTO `region` VALUES ('1368', '1362', '2', '360111', '青山湖区');
INSERT INTO `region` VALUES ('1369', '1362', '2', '360121', '南昌县');
INSERT INTO `region` VALUES ('1370', '1362', '2', '360122', '新建县');
INSERT INTO `region` VALUES ('1371', '1362', '2', '360123', '安义县');
INSERT INTO `region` VALUES ('1372', '1362', '2', '360124', '进贤县');
INSERT INTO `region` VALUES ('1373', '1361', '1', '360200', '景德镇市');
INSERT INTO `region` VALUES ('1374', '1373', '2', '360201', '市辖区');
INSERT INTO `region` VALUES ('1375', '1373', '2', '360202', '昌江区');
INSERT INTO `region` VALUES ('1376', '1373', '2', '360203', '珠山区');
INSERT INTO `region` VALUES ('1377', '1373', '2', '360222', '浮梁县');
INSERT INTO `region` VALUES ('1378', '1373', '2', '360281', '乐平市');
INSERT INTO `region` VALUES ('1379', '1361', '1', '360300', '萍乡市');
INSERT INTO `region` VALUES ('1380', '1379', '2', '360301', '市辖区');
INSERT INTO `region` VALUES ('1381', '1379', '2', '360302', '安源区');
INSERT INTO `region` VALUES ('1382', '1379', '2', '360313', '湘东区');
INSERT INTO `region` VALUES ('1383', '1379', '2', '360321', '莲花县');
INSERT INTO `region` VALUES ('1384', '1379', '2', '360322', '上栗县');
INSERT INTO `region` VALUES ('1385', '1379', '2', '360323', '芦溪县');
INSERT INTO `region` VALUES ('1386', '1361', '1', '360400', '九江市');
INSERT INTO `region` VALUES ('1387', '1386', '2', '360401', '市辖区');
INSERT INTO `region` VALUES ('1388', '1386', '2', '360402', '庐山区');
INSERT INTO `region` VALUES ('1389', '1386', '2', '360403', '浔阳区');
INSERT INTO `region` VALUES ('1390', '1386', '2', '360421', '九江县');
INSERT INTO `region` VALUES ('1391', '1386', '2', '360423', '武宁县');
INSERT INTO `region` VALUES ('1392', '1386', '2', '360424', '修水县');
INSERT INTO `region` VALUES ('1393', '1386', '2', '360425', '永修县');
INSERT INTO `region` VALUES ('1394', '1386', '2', '360426', '德安县');
INSERT INTO `region` VALUES ('1395', '1386', '2', '360427', '星子县');
INSERT INTO `region` VALUES ('1396', '1386', '2', '360428', '都昌县');
INSERT INTO `region` VALUES ('1397', '1386', '2', '360429', '湖口县');
INSERT INTO `region` VALUES ('1398', '1386', '2', '360430', '彭泽县');
INSERT INTO `region` VALUES ('1399', '1386', '2', '360481', '瑞昌市');
INSERT INTO `region` VALUES ('1400', '1386', '2', '360482', '共青城市');
INSERT INTO `region` VALUES ('1401', '1361', '1', '360500', '新余市');
INSERT INTO `region` VALUES ('1402', '1401', '2', '360501', '市辖区');
INSERT INTO `region` VALUES ('1403', '1401', '2', '360502', '渝水区');
INSERT INTO `region` VALUES ('1404', '1401', '2', '360521', '分宜县');
INSERT INTO `region` VALUES ('1405', '1361', '1', '360600', '鹰潭市');
INSERT INTO `region` VALUES ('1406', '1405', '2', '360601', '市辖区');
INSERT INTO `region` VALUES ('1407', '1405', '2', '360602', '月湖区');
INSERT INTO `region` VALUES ('1408', '1405', '2', '360622', '余江县');
INSERT INTO `region` VALUES ('1409', '1405', '2', '360681', '贵溪市');
INSERT INTO `region` VALUES ('1410', '1361', '1', '360700', '赣州市');
INSERT INTO `region` VALUES ('1411', '1410', '2', '360701', '市辖区');
INSERT INTO `region` VALUES ('1412', '1410', '2', '360702', '章贡区');
INSERT INTO `region` VALUES ('1413', '1410', '2', '360703', '南康区');
INSERT INTO `region` VALUES ('1414', '1410', '2', '360721', '赣县');
INSERT INTO `region` VALUES ('1415', '1410', '2', '360722', '信丰县');
INSERT INTO `region` VALUES ('1416', '1410', '2', '360723', '大余县');
INSERT INTO `region` VALUES ('1417', '1410', '2', '360724', '上犹县');
INSERT INTO `region` VALUES ('1418', '1410', '2', '360725', '崇义县');
INSERT INTO `region` VALUES ('1419', '1410', '2', '360726', '安远县');
INSERT INTO `region` VALUES ('1420', '1410', '2', '360727', '龙南县');
INSERT INTO `region` VALUES ('1421', '1410', '2', '360728', '定南县');
INSERT INTO `region` VALUES ('1422', '1410', '2', '360729', '全南县');
INSERT INTO `region` VALUES ('1423', '1410', '2', '360730', '宁都县');
INSERT INTO `region` VALUES ('1424', '1410', '2', '360731', '于都县');
INSERT INTO `region` VALUES ('1425', '1410', '2', '360732', '兴国县');
INSERT INTO `region` VALUES ('1426', '1410', '2', '360733', '会昌县');
INSERT INTO `region` VALUES ('1427', '1410', '2', '360734', '寻乌县');
INSERT INTO `region` VALUES ('1428', '1410', '2', '360735', '石城县');
INSERT INTO `region` VALUES ('1429', '1410', '2', '360781', '瑞金市');
INSERT INTO `region` VALUES ('1430', '1361', '1', '360800', '吉安市');
INSERT INTO `region` VALUES ('1431', '1430', '2', '360801', '市辖区');
INSERT INTO `region` VALUES ('1432', '1430', '2', '360802', '吉州区');
INSERT INTO `region` VALUES ('1433', '1430', '2', '360803', '青原区');
INSERT INTO `region` VALUES ('1434', '1430', '2', '360821', '吉安县');
INSERT INTO `region` VALUES ('1435', '1430', '2', '360822', '吉水县');
INSERT INTO `region` VALUES ('1436', '1430', '2', '360823', '峡江县');
INSERT INTO `region` VALUES ('1437', '1430', '2', '360824', '新干县');
INSERT INTO `region` VALUES ('1438', '1430', '2', '360825', '永丰县');
INSERT INTO `region` VALUES ('1439', '1430', '2', '360826', '泰和县');
INSERT INTO `region` VALUES ('1440', '1430', '2', '360827', '遂川县');
INSERT INTO `region` VALUES ('1441', '1430', '2', '360828', '万安县');
INSERT INTO `region` VALUES ('1442', '1430', '2', '360829', '安福县');
INSERT INTO `region` VALUES ('1443', '1430', '2', '360830', '永新县');
INSERT INTO `region` VALUES ('1444', '1430', '2', '360881', '井冈山市');
INSERT INTO `region` VALUES ('1445', '1361', '1', '360900', '宜春市');
INSERT INTO `region` VALUES ('1446', '1445', '2', '360901', '市辖区');
INSERT INTO `region` VALUES ('1447', '1445', '2', '360902', '袁州区');
INSERT INTO `region` VALUES ('1448', '1445', '2', '360921', '奉新县');
INSERT INTO `region` VALUES ('1449', '1445', '2', '360922', '万载县');
INSERT INTO `region` VALUES ('1450', '1445', '2', '360923', '上高县');
INSERT INTO `region` VALUES ('1451', '1445', '2', '360924', '宜丰县');
INSERT INTO `region` VALUES ('1452', '1445', '2', '360925', '靖安县');
INSERT INTO `region` VALUES ('1453', '1445', '2', '360926', '铜鼓县');
INSERT INTO `region` VALUES ('1454', '1445', '2', '360981', '丰城市');
INSERT INTO `region` VALUES ('1455', '1445', '2', '360982', '樟树市');
INSERT INTO `region` VALUES ('1456', '1445', '2', '360983', '高安市');
INSERT INTO `region` VALUES ('1457', '1361', '1', '361000', '抚州市');
INSERT INTO `region` VALUES ('1458', '1457', '2', '361001', '市辖区');
INSERT INTO `region` VALUES ('1459', '1457', '2', '361002', '临川区');
INSERT INTO `region` VALUES ('1460', '1457', '2', '361021', '南城县');
INSERT INTO `region` VALUES ('1461', '1457', '2', '361022', '黎川县');
INSERT INTO `region` VALUES ('1462', '1457', '2', '361023', '南丰县');
INSERT INTO `region` VALUES ('1463', '1457', '2', '361024', '崇仁县');
INSERT INTO `region` VALUES ('1464', '1457', '2', '361025', '乐安县');
INSERT INTO `region` VALUES ('1465', '1457', '2', '361026', '宜黄县');
INSERT INTO `region` VALUES ('1466', '1457', '2', '361027', '金溪县');
INSERT INTO `region` VALUES ('1467', '1457', '2', '361028', '资溪县');
INSERT INTO `region` VALUES ('1468', '1457', '2', '361029', '东乡县');
INSERT INTO `region` VALUES ('1469', '1457', '2', '361030', '广昌县');
INSERT INTO `region` VALUES ('1470', '1361', '1', '361100', '上饶市');
INSERT INTO `region` VALUES ('1471', '1470', '2', '361101', '市辖区');
INSERT INTO `region` VALUES ('1472', '1470', '2', '361102', '信州区');
INSERT INTO `region` VALUES ('1473', '1470', '2', '361121', '上饶县');
INSERT INTO `region` VALUES ('1474', '1470', '2', '361122', '广丰县');
INSERT INTO `region` VALUES ('1475', '1470', '2', '361123', '玉山县');
INSERT INTO `region` VALUES ('1476', '1470', '2', '361124', '铅山县');
INSERT INTO `region` VALUES ('1477', '1470', '2', '361125', '横峰县');
INSERT INTO `region` VALUES ('1478', '1470', '2', '361126', '弋阳县');
INSERT INTO `region` VALUES ('1479', '1470', '2', '361127', '余干县');
INSERT INTO `region` VALUES ('1480', '1470', '2', '361128', '鄱阳县');
INSERT INTO `region` VALUES ('1481', '1470', '2', '361129', '万年县');
INSERT INTO `region` VALUES ('1482', '1470', '2', '361130', '婺源县');
INSERT INTO `region` VALUES ('1483', '1470', '2', '361181', '德兴市');
INSERT INTO `region` VALUES ('1484', '0', '0', '370000', '山东省');
INSERT INTO `region` VALUES ('1485', '1484', '1', '370100', '济南市');
INSERT INTO `region` VALUES ('1486', '1485', '2', '370101', '市辖区');
INSERT INTO `region` VALUES ('1487', '1485', '2', '370102', '历下区');
INSERT INTO `region` VALUES ('1488', '1485', '2', '370103', '市中区');
INSERT INTO `region` VALUES ('1489', '1485', '2', '370104', '槐荫区');
INSERT INTO `region` VALUES ('1490', '1485', '2', '370105', '天桥区');
INSERT INTO `region` VALUES ('1491', '1485', '2', '370112', '历城区');
INSERT INTO `region` VALUES ('1492', '1485', '2', '370113', '长清区');
INSERT INTO `region` VALUES ('1493', '1485', '2', '370124', '平阴县');
INSERT INTO `region` VALUES ('1494', '1485', '2', '370125', '济阳县');
INSERT INTO `region` VALUES ('1495', '1485', '2', '370126', '商河县');
INSERT INTO `region` VALUES ('1496', '1485', '2', '370181', '章丘市');
INSERT INTO `region` VALUES ('1497', '1484', '1', '370200', '青岛市');
INSERT INTO `region` VALUES ('1498', '1497', '2', '370201', '市辖区');
INSERT INTO `region` VALUES ('1499', '1497', '2', '370202', '市南区');
INSERT INTO `region` VALUES ('1500', '1497', '2', '370203', '市北区');
INSERT INTO `region` VALUES ('1501', '1497', '2', '370211', '黄岛区');
INSERT INTO `region` VALUES ('1502', '1497', '2', '370212', '崂山区');
INSERT INTO `region` VALUES ('1503', '1497', '2', '370213', '李沧区');
INSERT INTO `region` VALUES ('1504', '1497', '2', '370214', '城阳区');
INSERT INTO `region` VALUES ('1505', '1497', '2', '370281', '胶州市');
INSERT INTO `region` VALUES ('1506', '1497', '2', '370282', '即墨市');
INSERT INTO `region` VALUES ('1507', '1497', '2', '370283', '平度市');
INSERT INTO `region` VALUES ('1508', '1497', '2', '370285', '莱西市');
INSERT INTO `region` VALUES ('1509', '1484', '1', '370300', '淄博市');
INSERT INTO `region` VALUES ('1510', '1509', '2', '370301', '市辖区');
INSERT INTO `region` VALUES ('1511', '1509', '2', '370302', '淄川区');
INSERT INTO `region` VALUES ('1512', '1509', '2', '370303', '张店区');
INSERT INTO `region` VALUES ('1513', '1509', '2', '370304', '博山区');
INSERT INTO `region` VALUES ('1514', '1509', '2', '370305', '临淄区');
INSERT INTO `region` VALUES ('1515', '1509', '2', '370306', '周村区');
INSERT INTO `region` VALUES ('1516', '1509', '2', '370321', '桓台县');
INSERT INTO `region` VALUES ('1517', '1509', '2', '370322', '高青县');
INSERT INTO `region` VALUES ('1518', '1509', '2', '370323', '沂源县');
INSERT INTO `region` VALUES ('1519', '1484', '1', '370400', '枣庄市');
INSERT INTO `region` VALUES ('1520', '1519', '2', '370401', '市辖区');
INSERT INTO `region` VALUES ('1521', '1519', '2', '370402', '市中区');
INSERT INTO `region` VALUES ('1522', '1519', '2', '370403', '薛城区');
INSERT INTO `region` VALUES ('1523', '1519', '2', '370404', '峄城区');
INSERT INTO `region` VALUES ('1524', '1519', '2', '370405', '台儿庄区');
INSERT INTO `region` VALUES ('1525', '1519', '2', '370406', '山亭区');
INSERT INTO `region` VALUES ('1526', '1519', '2', '370481', '滕州市');
INSERT INTO `region` VALUES ('1527', '1484', '1', '370500', '东营市');
INSERT INTO `region` VALUES ('1528', '1527', '2', '370501', '市辖区');
INSERT INTO `region` VALUES ('1529', '1527', '2', '370502', '东营区');
INSERT INTO `region` VALUES ('1530', '1527', '2', '370503', '河口区');
INSERT INTO `region` VALUES ('1531', '1527', '2', '370521', '垦利县');
INSERT INTO `region` VALUES ('1532', '1527', '2', '370522', '利津县');
INSERT INTO `region` VALUES ('1533', '1527', '2', '370523', '广饶县');
INSERT INTO `region` VALUES ('1534', '1484', '1', '370600', '烟台市');
INSERT INTO `region` VALUES ('1535', '1534', '2', '370601', '市辖区');
INSERT INTO `region` VALUES ('1536', '1534', '2', '370602', '芝罘区');
INSERT INTO `region` VALUES ('1537', '1534', '2', '370611', '福山区');
INSERT INTO `region` VALUES ('1538', '1534', '2', '370612', '牟平区');
INSERT INTO `region` VALUES ('1539', '1534', '2', '370613', '莱山区');
INSERT INTO `region` VALUES ('1540', '1534', '2', '370634', '长岛县');
INSERT INTO `region` VALUES ('1541', '1534', '2', '370681', '龙口市');
INSERT INTO `region` VALUES ('1542', '1534', '2', '370682', '莱阳市');
INSERT INTO `region` VALUES ('1543', '1534', '2', '370683', '莱州市');
INSERT INTO `region` VALUES ('1544', '1534', '2', '370684', '蓬莱市');
INSERT INTO `region` VALUES ('1545', '1534', '2', '370685', '招远市');
INSERT INTO `region` VALUES ('1546', '1534', '2', '370686', '栖霞市');
INSERT INTO `region` VALUES ('1547', '1534', '2', '370687', '海阳市');
INSERT INTO `region` VALUES ('1548', '1484', '1', '370700', '潍坊市');
INSERT INTO `region` VALUES ('1549', '1548', '2', '370701', '市辖区');
INSERT INTO `region` VALUES ('1550', '1548', '2', '370702', '潍城区');
INSERT INTO `region` VALUES ('1551', '1548', '2', '370703', '寒亭区');
INSERT INTO `region` VALUES ('1552', '1548', '2', '370704', '坊子区');
INSERT INTO `region` VALUES ('1553', '1548', '2', '370705', '奎文区');
INSERT INTO `region` VALUES ('1554', '1548', '2', '370724', '临朐县');
INSERT INTO `region` VALUES ('1555', '1548', '2', '370725', '昌乐县');
INSERT INTO `region` VALUES ('1556', '1548', '2', '370781', '青州市');
INSERT INTO `region` VALUES ('1557', '1548', '2', '370782', '诸城市');
INSERT INTO `region` VALUES ('1558', '1548', '2', '370783', '寿光市');
INSERT INTO `region` VALUES ('1559', '1548', '2', '370784', '安丘市');
INSERT INTO `region` VALUES ('1560', '1548', '2', '370785', '高密市');
INSERT INTO `region` VALUES ('1561', '1548', '2', '370786', '昌邑市');
INSERT INTO `region` VALUES ('1562', '1484', '1', '370800', '济宁市');
INSERT INTO `region` VALUES ('1563', '1562', '2', '370801', '市辖区');
INSERT INTO `region` VALUES ('1564', '1562', '2', '370811', '任城区');
INSERT INTO `region` VALUES ('1565', '1562', '2', '370812', '兖州区');
INSERT INTO `region` VALUES ('1566', '1562', '2', '370826', '微山县');
INSERT INTO `region` VALUES ('1567', '1562', '2', '370827', '鱼台县');
INSERT INTO `region` VALUES ('1568', '1562', '2', '370828', '金乡县');
INSERT INTO `region` VALUES ('1569', '1562', '2', '370829', '嘉祥县');
INSERT INTO `region` VALUES ('1570', '1562', '2', '370830', '汶上县');
INSERT INTO `region` VALUES ('1571', '1562', '2', '370831', '泗水县');
INSERT INTO `region` VALUES ('1572', '1562', '2', '370832', '梁山县');
INSERT INTO `region` VALUES ('1573', '1562', '2', '370881', '曲阜市');
INSERT INTO `region` VALUES ('1574', '1562', '2', '370883', '邹城市');
INSERT INTO `region` VALUES ('1575', '1484', '1', '370900', '泰安市');
INSERT INTO `region` VALUES ('1576', '1575', '2', '370901', '市辖区');
INSERT INTO `region` VALUES ('1577', '1575', '2', '370902', '泰山区');
INSERT INTO `region` VALUES ('1578', '1575', '2', '370911', '岱岳区');
INSERT INTO `region` VALUES ('1579', '1575', '2', '370921', '宁阳县');
INSERT INTO `region` VALUES ('1580', '1575', '2', '370923', '东平县');
INSERT INTO `region` VALUES ('1581', '1575', '2', '370982', '新泰市');
INSERT INTO `region` VALUES ('1582', '1575', '2', '370983', '肥城市');
INSERT INTO `region` VALUES ('1583', '1484', '1', '371000', '威海市');
INSERT INTO `region` VALUES ('1584', '1583', '2', '371001', '市辖区');
INSERT INTO `region` VALUES ('1585', '1583', '2', '371002', '环翠区');
INSERT INTO `region` VALUES ('1586', '1583', '2', '371003', '文登区');
INSERT INTO `region` VALUES ('1587', '1583', '2', '371082', '荣成市');
INSERT INTO `region` VALUES ('1588', '1583', '2', '371083', '乳山市');
INSERT INTO `region` VALUES ('1589', '1484', '1', '371100', '日照市');
INSERT INTO `region` VALUES ('1590', '1589', '2', '371101', '市辖区');
INSERT INTO `region` VALUES ('1591', '1589', '2', '371102', '东港区');
INSERT INTO `region` VALUES ('1592', '1589', '2', '371103', '岚山区');
INSERT INTO `region` VALUES ('1593', '1589', '2', '371121', '五莲县');
INSERT INTO `region` VALUES ('1594', '1589', '2', '371122', '莒县');
INSERT INTO `region` VALUES ('1595', '1484', '1', '371200', '莱芜市');
INSERT INTO `region` VALUES ('1596', '1595', '2', '371201', '市辖区');
INSERT INTO `region` VALUES ('1597', '1595', '2', '371202', '莱城区');
INSERT INTO `region` VALUES ('1598', '1595', '2', '371203', '钢城区');
INSERT INTO `region` VALUES ('1599', '1484', '1', '371300', '临沂市');
INSERT INTO `region` VALUES ('1600', '1599', '2', '371301', '市辖区');
INSERT INTO `region` VALUES ('1601', '1599', '2', '371302', '兰山区');
INSERT INTO `region` VALUES ('1602', '1599', '2', '371311', '罗庄区');
INSERT INTO `region` VALUES ('1603', '1599', '2', '371312', '河东区');
INSERT INTO `region` VALUES ('1604', '1599', '2', '371321', '沂南县');
INSERT INTO `region` VALUES ('1605', '1599', '2', '371322', '郯城县');
INSERT INTO `region` VALUES ('1606', '1599', '2', '371323', '沂水县');
INSERT INTO `region` VALUES ('1607', '1599', '2', '371324', '兰陵县');
INSERT INTO `region` VALUES ('1608', '1599', '2', '371325', '费县');
INSERT INTO `region` VALUES ('1609', '1599', '2', '371326', '平邑县');
INSERT INTO `region` VALUES ('1610', '1599', '2', '371327', '莒南县');
INSERT INTO `region` VALUES ('1611', '1599', '2', '371328', '蒙阴县');
INSERT INTO `region` VALUES ('1612', '1599', '2', '371329', '临沭县');
INSERT INTO `region` VALUES ('1613', '1484', '1', '371400', '德州市');
INSERT INTO `region` VALUES ('1614', '1613', '2', '371401', '市辖区');
INSERT INTO `region` VALUES ('1615', '1613', '2', '371402', '德城区');
INSERT INTO `region` VALUES ('1616', '1613', '2', '371403', '陵城区');
INSERT INTO `region` VALUES ('1617', '1613', '2', '371422', '宁津县');
INSERT INTO `region` VALUES ('1618', '1613', '2', '371423', '庆云县');
INSERT INTO `region` VALUES ('1619', '1613', '2', '371424', '临邑县');
INSERT INTO `region` VALUES ('1620', '1613', '2', '371425', '齐河县');
INSERT INTO `region` VALUES ('1621', '1613', '2', '371426', '平原县');
INSERT INTO `region` VALUES ('1622', '1613', '2', '371427', '夏津县');
INSERT INTO `region` VALUES ('1623', '1613', '2', '371428', '武城县');
INSERT INTO `region` VALUES ('1624', '1613', '2', '371481', '乐陵市');
INSERT INTO `region` VALUES ('1625', '1613', '2', '371482', '禹城市');
INSERT INTO `region` VALUES ('1626', '1484', '1', '371500', '聊城市');
INSERT INTO `region` VALUES ('1627', '1626', '2', '371501', '市辖区');
INSERT INTO `region` VALUES ('1628', '1626', '2', '371502', '东昌府区');
INSERT INTO `region` VALUES ('1629', '1626', '2', '371521', '阳谷县');
INSERT INTO `region` VALUES ('1630', '1626', '2', '371522', '莘县');
INSERT INTO `region` VALUES ('1631', '1626', '2', '371523', '茌平县');
INSERT INTO `region` VALUES ('1632', '1626', '2', '371524', '东阿县');
INSERT INTO `region` VALUES ('1633', '1626', '2', '371525', '冠县');
INSERT INTO `region` VALUES ('1634', '1626', '2', '371526', '高唐县');
INSERT INTO `region` VALUES ('1635', '1626', '2', '371581', '临清市');
INSERT INTO `region` VALUES ('1636', '1484', '1', '371600', '滨州市');
INSERT INTO `region` VALUES ('1637', '1636', '2', '371601', '市辖区');
INSERT INTO `region` VALUES ('1638', '1636', '2', '371602', '滨城区');
INSERT INTO `region` VALUES ('1639', '1636', '2', '371603', '沾化区');
INSERT INTO `region` VALUES ('1640', '1636', '2', '371621', '惠民县');
INSERT INTO `region` VALUES ('1641', '1636', '2', '371622', '阳信县');
INSERT INTO `region` VALUES ('1642', '1636', '2', '371623', '无棣县');
INSERT INTO `region` VALUES ('1643', '1636', '2', '371625', '博兴县');
INSERT INTO `region` VALUES ('1644', '1636', '2', '371626', '邹平县');
INSERT INTO `region` VALUES ('1645', '1484', '1', '371700', '菏泽市');
INSERT INTO `region` VALUES ('1646', '1645', '2', '371701', '市辖区');
INSERT INTO `region` VALUES ('1647', '1645', '2', '371702', '牡丹区');
INSERT INTO `region` VALUES ('1648', '1645', '2', '371721', '曹县');
INSERT INTO `region` VALUES ('1649', '1645', '2', '371722', '单县');
INSERT INTO `region` VALUES ('1650', '1645', '2', '371723', '成武县');
INSERT INTO `region` VALUES ('1651', '1645', '2', '371724', '巨野县');
INSERT INTO `region` VALUES ('1652', '1645', '2', '371725', '郓城县');
INSERT INTO `region` VALUES ('1653', '1645', '2', '371726', '鄄城县');
INSERT INTO `region` VALUES ('1654', '1645', '2', '371727', '定陶县');
INSERT INTO `region` VALUES ('1655', '1645', '2', '371728', '东明县');
INSERT INTO `region` VALUES ('1656', '0', '0', '410000', '河南省');
INSERT INTO `region` VALUES ('1657', '1656', '1', '410100', '郑州市');
INSERT INTO `region` VALUES ('1658', '1657', '2', '410101', '市辖区');
INSERT INTO `region` VALUES ('1659', '1657', '2', '410102', '中原区');
INSERT INTO `region` VALUES ('1660', '1657', '2', '410103', '二七区');
INSERT INTO `region` VALUES ('1661', '1657', '2', '410104', '管城回族区');
INSERT INTO `region` VALUES ('1662', '1657', '2', '410105', '金水区');
INSERT INTO `region` VALUES ('1663', '1657', '2', '410106', '上街区');
INSERT INTO `region` VALUES ('1664', '1657', '2', '410108', '惠济区');
INSERT INTO `region` VALUES ('1665', '1657', '2', '410122', '中牟县');
INSERT INTO `region` VALUES ('1666', '1657', '2', '410181', '巩义市');
INSERT INTO `region` VALUES ('1667', '1657', '2', '410182', '荥阳市');
INSERT INTO `region` VALUES ('1668', '1657', '2', '410183', '新密市');
INSERT INTO `region` VALUES ('1669', '1657', '2', '410184', '新郑市');
INSERT INTO `region` VALUES ('1670', '1657', '2', '410185', '登封市');
INSERT INTO `region` VALUES ('1671', '1656', '1', '410200', '开封市');
INSERT INTO `region` VALUES ('1672', '1671', '2', '410201', '市辖区');
INSERT INTO `region` VALUES ('1673', '1671', '2', '410202', '龙亭区');
INSERT INTO `region` VALUES ('1674', '1671', '2', '410203', '顺河回族区');
INSERT INTO `region` VALUES ('1675', '1671', '2', '410204', '鼓楼区');
INSERT INTO `region` VALUES ('1676', '1671', '2', '410205', '禹王台区');
INSERT INTO `region` VALUES ('1677', '1671', '2', '410211', '金明区');
INSERT INTO `region` VALUES ('1678', '1671', '2', '410221', '杞县');
INSERT INTO `region` VALUES ('1679', '1671', '2', '410222', '通许县');
INSERT INTO `region` VALUES ('1680', '1671', '2', '410223', '尉氏县');
INSERT INTO `region` VALUES ('1681', '1671', '2', '410224', '开封县');
INSERT INTO `region` VALUES ('1682', '1671', '2', '410225', '兰考县');
INSERT INTO `region` VALUES ('1683', '1656', '1', '410300', '洛阳市');
INSERT INTO `region` VALUES ('1684', '1683', '2', '410301', '市辖区');
INSERT INTO `region` VALUES ('1685', '1683', '2', '410302', '老城区');
INSERT INTO `region` VALUES ('1686', '1683', '2', '410303', '西工区');
INSERT INTO `region` VALUES ('1687', '1683', '2', '410304', '瀍河回族区');
INSERT INTO `region` VALUES ('1688', '1683', '2', '410305', '涧西区');
INSERT INTO `region` VALUES ('1689', '1683', '2', '410306', '吉利区');
INSERT INTO `region` VALUES ('1690', '1683', '2', '410311', '洛龙区');
INSERT INTO `region` VALUES ('1691', '1683', '2', '410322', '孟津县');
INSERT INTO `region` VALUES ('1692', '1683', '2', '410323', '新安县');
INSERT INTO `region` VALUES ('1693', '1683', '2', '410324', '栾川县');
INSERT INTO `region` VALUES ('1694', '1683', '2', '410325', '嵩县');
INSERT INTO `region` VALUES ('1695', '1683', '2', '410326', '汝阳县');
INSERT INTO `region` VALUES ('1696', '1683', '2', '410327', '宜阳县');
INSERT INTO `region` VALUES ('1697', '1683', '2', '410328', '洛宁县');
INSERT INTO `region` VALUES ('1698', '1683', '2', '410329', '伊川县');
INSERT INTO `region` VALUES ('1699', '1683', '2', '410381', '偃师市');
INSERT INTO `region` VALUES ('1700', '1656', '1', '410400', '平顶山市');
INSERT INTO `region` VALUES ('1701', '1700', '2', '410401', '市辖区');
INSERT INTO `region` VALUES ('1702', '1700', '2', '410402', '新华区');
INSERT INTO `region` VALUES ('1703', '1700', '2', '410403', '卫东区');
INSERT INTO `region` VALUES ('1704', '1700', '2', '410404', '石龙区');
INSERT INTO `region` VALUES ('1705', '1700', '2', '410411', '湛河区');
INSERT INTO `region` VALUES ('1706', '1700', '2', '410421', '宝丰县');
INSERT INTO `region` VALUES ('1707', '1700', '2', '410422', '叶县');
INSERT INTO `region` VALUES ('1708', '1700', '2', '410423', '鲁山县');
INSERT INTO `region` VALUES ('1709', '1700', '2', '410425', '郏县');
INSERT INTO `region` VALUES ('1710', '1700', '2', '410481', '舞钢市');
INSERT INTO `region` VALUES ('1711', '1700', '2', '410482', '汝州市');
INSERT INTO `region` VALUES ('1712', '1656', '1', '410500', '安阳市');
INSERT INTO `region` VALUES ('1713', '1712', '2', '410501', '市辖区');
INSERT INTO `region` VALUES ('1714', '1712', '2', '410502', '文峰区');
INSERT INTO `region` VALUES ('1715', '1712', '2', '410503', '北关区');
INSERT INTO `region` VALUES ('1716', '1712', '2', '410505', '殷都区');
INSERT INTO `region` VALUES ('1717', '1712', '2', '410506', '龙安区');
INSERT INTO `region` VALUES ('1718', '1712', '2', '410522', '安阳县');
INSERT INTO `region` VALUES ('1719', '1712', '2', '410523', '汤阴县');
INSERT INTO `region` VALUES ('1720', '1712', '2', '410526', '滑县');
INSERT INTO `region` VALUES ('1721', '1712', '2', '410527', '内黄县');
INSERT INTO `region` VALUES ('1722', '1712', '2', '410581', '林州市');
INSERT INTO `region` VALUES ('1723', '1656', '1', '410600', '鹤壁市');
INSERT INTO `region` VALUES ('1724', '1723', '2', '410601', '市辖区');
INSERT INTO `region` VALUES ('1725', '1723', '2', '410602', '鹤山区');
INSERT INTO `region` VALUES ('1726', '1723', '2', '410603', '山城区');
INSERT INTO `region` VALUES ('1727', '1723', '2', '410611', '淇滨区');
INSERT INTO `region` VALUES ('1728', '1723', '2', '410621', '浚县');
INSERT INTO `region` VALUES ('1729', '1723', '2', '410622', '淇县');
INSERT INTO `region` VALUES ('1730', '1656', '1', '410700', '新乡市');
INSERT INTO `region` VALUES ('1731', '1730', '2', '410701', '市辖区');
INSERT INTO `region` VALUES ('1732', '1730', '2', '410702', '红旗区');
INSERT INTO `region` VALUES ('1733', '1730', '2', '410703', '卫滨区');
INSERT INTO `region` VALUES ('1734', '1730', '2', '410704', '凤泉区');
INSERT INTO `region` VALUES ('1735', '1730', '2', '410711', '牧野区');
INSERT INTO `region` VALUES ('1736', '1730', '2', '410721', '新乡县');
INSERT INTO `region` VALUES ('1737', '1730', '2', '410724', '获嘉县');
INSERT INTO `region` VALUES ('1738', '1730', '2', '410725', '原阳县');
INSERT INTO `region` VALUES ('1739', '1730', '2', '410726', '延津县');
INSERT INTO `region` VALUES ('1740', '1730', '2', '410727', '封丘县');
INSERT INTO `region` VALUES ('1741', '1730', '2', '410728', '长垣县');
INSERT INTO `region` VALUES ('1742', '1730', '2', '410781', '卫辉市');
INSERT INTO `region` VALUES ('1743', '1730', '2', '410782', '辉县市');
INSERT INTO `region` VALUES ('1744', '1656', '1', '410800', '焦作市');
INSERT INTO `region` VALUES ('1745', '1744', '2', '410801', '市辖区');
INSERT INTO `region` VALUES ('1746', '1744', '2', '410802', '解放区');
INSERT INTO `region` VALUES ('1747', '1744', '2', '410803', '中站区');
INSERT INTO `region` VALUES ('1748', '1744', '2', '410804', '马村区');
INSERT INTO `region` VALUES ('1749', '1744', '2', '410811', '山阳区');
INSERT INTO `region` VALUES ('1750', '1744', '2', '410821', '修武县');
INSERT INTO `region` VALUES ('1751', '1744', '2', '410822', '博爱县');
INSERT INTO `region` VALUES ('1752', '1744', '2', '410823', '武陟县');
INSERT INTO `region` VALUES ('1753', '1744', '2', '410825', '温县');
INSERT INTO `region` VALUES ('1754', '1744', '2', '410882', '沁阳市');
INSERT INTO `region` VALUES ('1755', '1744', '2', '410883', '孟州市');
INSERT INTO `region` VALUES ('1756', '1656', '1', '410900', '濮阳市');
INSERT INTO `region` VALUES ('1757', '1756', '2', '410901', '市辖区');
INSERT INTO `region` VALUES ('1758', '1756', '2', '410902', '华龙区');
INSERT INTO `region` VALUES ('1759', '1756', '2', '410922', '清丰县');
INSERT INTO `region` VALUES ('1760', '1756', '2', '410923', '南乐县');
INSERT INTO `region` VALUES ('1761', '1756', '2', '410926', '范县');
INSERT INTO `region` VALUES ('1762', '1756', '2', '410927', '台前县');
INSERT INTO `region` VALUES ('1763', '1756', '2', '410928', '濮阳县');
INSERT INTO `region` VALUES ('1764', '1656', '1', '411000', '许昌市');
INSERT INTO `region` VALUES ('1765', '1764', '2', '411001', '市辖区');
INSERT INTO `region` VALUES ('1766', '1764', '2', '411002', '魏都区');
INSERT INTO `region` VALUES ('1767', '1764', '2', '411023', '许昌县');
INSERT INTO `region` VALUES ('1768', '1764', '2', '411024', '鄢陵县');
INSERT INTO `region` VALUES ('1769', '1764', '2', '411025', '襄城县');
INSERT INTO `region` VALUES ('1770', '1764', '2', '411081', '禹州市');
INSERT INTO `region` VALUES ('1771', '1764', '2', '411082', '长葛市');
INSERT INTO `region` VALUES ('1772', '1656', '1', '411100', '漯河市');
INSERT INTO `region` VALUES ('1773', '1772', '2', '411101', '市辖区');
INSERT INTO `region` VALUES ('1774', '1772', '2', '411102', '源汇区');
INSERT INTO `region` VALUES ('1775', '1772', '2', '411103', '郾城区');
INSERT INTO `region` VALUES ('1776', '1772', '2', '411104', '召陵区');
INSERT INTO `region` VALUES ('1777', '1772', '2', '411121', '舞阳县');
INSERT INTO `region` VALUES ('1778', '1772', '2', '411122', '临颍县');
INSERT INTO `region` VALUES ('1779', '1656', '1', '411200', '三门峡市');
INSERT INTO `region` VALUES ('1780', '1779', '2', '411201', '市辖区');
INSERT INTO `region` VALUES ('1781', '1779', '2', '411202', '湖滨区');
INSERT INTO `region` VALUES ('1782', '1779', '2', '411221', '渑池县');
INSERT INTO `region` VALUES ('1783', '1779', '2', '411222', '陕县');
INSERT INTO `region` VALUES ('1784', '1779', '2', '411224', '卢氏县');
INSERT INTO `region` VALUES ('1785', '1779', '2', '411281', '义马市');
INSERT INTO `region` VALUES ('1786', '1779', '2', '411282', '灵宝市');
INSERT INTO `region` VALUES ('1787', '1656', '1', '411300', '南阳市');
INSERT INTO `region` VALUES ('1788', '1787', '2', '411301', '市辖区');
INSERT INTO `region` VALUES ('1789', '1787', '2', '411302', '宛城区');
INSERT INTO `region` VALUES ('1790', '1787', '2', '411303', '卧龙区');
INSERT INTO `region` VALUES ('1791', '1787', '2', '411321', '南召县');
INSERT INTO `region` VALUES ('1792', '1787', '2', '411322', '方城县');
INSERT INTO `region` VALUES ('1793', '1787', '2', '411323', '西峡县');
INSERT INTO `region` VALUES ('1794', '1787', '2', '411324', '镇平县');
INSERT INTO `region` VALUES ('1795', '1787', '2', '411325', '内乡县');
INSERT INTO `region` VALUES ('1796', '1787', '2', '411326', '淅川县');
INSERT INTO `region` VALUES ('1797', '1787', '2', '411327', '社旗县');
INSERT INTO `region` VALUES ('1798', '1787', '2', '411328', '唐河县');
INSERT INTO `region` VALUES ('1799', '1787', '2', '411329', '新野县');
INSERT INTO `region` VALUES ('1800', '1787', '2', '411330', '桐柏县');
INSERT INTO `region` VALUES ('1801', '1787', '2', '411381', '邓州市');
INSERT INTO `region` VALUES ('1802', '1656', '1', '411400', '商丘市');
INSERT INTO `region` VALUES ('1803', '1802', '2', '411401', '市辖区');
INSERT INTO `region` VALUES ('1804', '1802', '2', '411402', '梁园区');
INSERT INTO `region` VALUES ('1805', '1802', '2', '411403', '睢阳区');
INSERT INTO `region` VALUES ('1806', '1802', '2', '411421', '民权县');
INSERT INTO `region` VALUES ('1807', '1802', '2', '411422', '睢县');
INSERT INTO `region` VALUES ('1808', '1802', '2', '411423', '宁陵县');
INSERT INTO `region` VALUES ('1809', '1802', '2', '411424', '柘城县');
INSERT INTO `region` VALUES ('1810', '1802', '2', '411425', '虞城县');
INSERT INTO `region` VALUES ('1811', '1802', '2', '411426', '夏邑县');
INSERT INTO `region` VALUES ('1812', '1802', '2', '411481', '永城市');
INSERT INTO `region` VALUES ('1813', '1656', '1', '411500', '信阳市');
INSERT INTO `region` VALUES ('1814', '1813', '2', '411501', '市辖区');
INSERT INTO `region` VALUES ('1815', '1813', '2', '411502', '浉河区');
INSERT INTO `region` VALUES ('1816', '1813', '2', '411503', '平桥区');
INSERT INTO `region` VALUES ('1817', '1813', '2', '411521', '罗山县');
INSERT INTO `region` VALUES ('1818', '1813', '2', '411522', '光山县');
INSERT INTO `region` VALUES ('1819', '1813', '2', '411523', '新县');
INSERT INTO `region` VALUES ('1820', '1813', '2', '411524', '商城县');
INSERT INTO `region` VALUES ('1821', '1813', '2', '411525', '固始县');
INSERT INTO `region` VALUES ('1822', '1813', '2', '411526', '潢川县');
INSERT INTO `region` VALUES ('1823', '1813', '2', '411527', '淮滨县');
INSERT INTO `region` VALUES ('1824', '1813', '2', '411528', '息县');
INSERT INTO `region` VALUES ('1825', '1656', '1', '411600', '周口市');
INSERT INTO `region` VALUES ('1826', '1825', '2', '411601', '市辖区');
INSERT INTO `region` VALUES ('1827', '1825', '2', '411602', '川汇区');
INSERT INTO `region` VALUES ('1828', '1825', '2', '411621', '扶沟县');
INSERT INTO `region` VALUES ('1829', '1825', '2', '411622', '西华县');
INSERT INTO `region` VALUES ('1830', '1825', '2', '411623', '商水县');
INSERT INTO `region` VALUES ('1831', '1825', '2', '411624', '沈丘县');
INSERT INTO `region` VALUES ('1832', '1825', '2', '411625', '郸城县');
INSERT INTO `region` VALUES ('1833', '1825', '2', '411626', '淮阳县');
INSERT INTO `region` VALUES ('1834', '1825', '2', '411627', '太康县');
INSERT INTO `region` VALUES ('1835', '1825', '2', '411628', '鹿邑县');
INSERT INTO `region` VALUES ('1836', '1825', '2', '411681', '项城市');
INSERT INTO `region` VALUES ('1837', '1656', '1', '411700', '驻马店市');
INSERT INTO `region` VALUES ('1838', '1837', '2', '411701', '市辖区');
INSERT INTO `region` VALUES ('1839', '1837', '2', '411702', '驿城区');
INSERT INTO `region` VALUES ('1840', '1837', '2', '411721', '西平县');
INSERT INTO `region` VALUES ('1841', '1837', '2', '411722', '上蔡县');
INSERT INTO `region` VALUES ('1842', '1837', '2', '411723', '平舆县');
INSERT INTO `region` VALUES ('1843', '1837', '2', '411724', '正阳县');
INSERT INTO `region` VALUES ('1844', '1837', '2', '411725', '确山县');
INSERT INTO `region` VALUES ('1845', '1837', '2', '411726', '泌阳县');
INSERT INTO `region` VALUES ('1846', '1837', '2', '411727', '汝南县');
INSERT INTO `region` VALUES ('1847', '1837', '2', '411728', '遂平县');
INSERT INTO `region` VALUES ('1848', '1837', '2', '411729', '新蔡县');
INSERT INTO `region` VALUES ('1849', '1656', '1', '419000', '省直辖县级行政区划');
INSERT INTO `region` VALUES ('1850', '1849', '2', '419001', '济源市');
INSERT INTO `region` VALUES ('1851', '0', '0', '420000', '湖北省');
INSERT INTO `region` VALUES ('1852', '1851', '1', '420100', '武汉市');
INSERT INTO `region` VALUES ('1853', '1852', '2', '420101', '市辖区');
INSERT INTO `region` VALUES ('1854', '1852', '2', '420102', '江岸区');
INSERT INTO `region` VALUES ('1855', '1852', '2', '420103', '江汉区');
INSERT INTO `region` VALUES ('1856', '1852', '2', '420104', '硚口区');
INSERT INTO `region` VALUES ('1857', '1852', '2', '420105', '汉阳区');
INSERT INTO `region` VALUES ('1858', '1852', '2', '420106', '武昌区');
INSERT INTO `region` VALUES ('1859', '1852', '2', '420107', '青山区');
INSERT INTO `region` VALUES ('1860', '1852', '2', '420111', '洪山区');
INSERT INTO `region` VALUES ('1861', '1852', '2', '420112', '东西湖区');
INSERT INTO `region` VALUES ('1862', '1852', '2', '420113', '汉南区');
INSERT INTO `region` VALUES ('1863', '1852', '2', '420114', '蔡甸区');
INSERT INTO `region` VALUES ('1864', '1852', '2', '420115', '江夏区');
INSERT INTO `region` VALUES ('1865', '1852', '2', '420116', '黄陂区');
INSERT INTO `region` VALUES ('1866', '1852', '2', '420117', '新洲区');
INSERT INTO `region` VALUES ('1867', '1851', '1', '420200', '黄石市');
INSERT INTO `region` VALUES ('1868', '1867', '2', '420201', '市辖区');
INSERT INTO `region` VALUES ('1869', '1867', '2', '420202', '黄石港区');
INSERT INTO `region` VALUES ('1870', '1867', '2', '420203', '西塞山区');
INSERT INTO `region` VALUES ('1871', '1867', '2', '420204', '下陆区');
INSERT INTO `region` VALUES ('1872', '1867', '2', '420205', '铁山区');
INSERT INTO `region` VALUES ('1873', '1867', '2', '420222', '阳新县');
INSERT INTO `region` VALUES ('1874', '1867', '2', '420281', '大冶市');
INSERT INTO `region` VALUES ('1875', '1851', '1', '420300', '十堰市');
INSERT INTO `region` VALUES ('1876', '1875', '2', '420301', '市辖区');
INSERT INTO `region` VALUES ('1877', '1875', '2', '420302', '茅箭区');
INSERT INTO `region` VALUES ('1878', '1875', '2', '420303', '张湾区');
INSERT INTO `region` VALUES ('1879', '1875', '2', '420304', '郧阳区');
INSERT INTO `region` VALUES ('1880', '1875', '2', '420322', '郧西县');
INSERT INTO `region` VALUES ('1881', '1875', '2', '420323', '竹山县');
INSERT INTO `region` VALUES ('1882', '1875', '2', '420324', '竹溪县');
INSERT INTO `region` VALUES ('1883', '1875', '2', '420325', '房县');
INSERT INTO `region` VALUES ('1884', '1875', '2', '420381', '丹江口市');
INSERT INTO `region` VALUES ('1885', '1851', '1', '420500', '宜昌市');
INSERT INTO `region` VALUES ('1886', '1885', '2', '420501', '市辖区');
INSERT INTO `region` VALUES ('1887', '1885', '2', '420502', '西陵区');
INSERT INTO `region` VALUES ('1888', '1885', '2', '420503', '伍家岗区');
INSERT INTO `region` VALUES ('1889', '1885', '2', '420504', '点军区');
INSERT INTO `region` VALUES ('1890', '1885', '2', '420505', '猇亭区');
INSERT INTO `region` VALUES ('1891', '1885', '2', '420506', '夷陵区');
INSERT INTO `region` VALUES ('1892', '1885', '2', '420525', '远安县');
INSERT INTO `region` VALUES ('1893', '1885', '2', '420526', '兴山县');
INSERT INTO `region` VALUES ('1894', '1885', '2', '420527', '秭归县');
INSERT INTO `region` VALUES ('1895', '1885', '2', '420528', '长阳土家族自治县');
INSERT INTO `region` VALUES ('1896', '1885', '2', '420529', '五峰土家族自治县');
INSERT INTO `region` VALUES ('1897', '1885', '2', '420581', '宜都市');
INSERT INTO `region` VALUES ('1898', '1885', '2', '420582', '当阳市');
INSERT INTO `region` VALUES ('1899', '1885', '2', '420583', '枝江市');
INSERT INTO `region` VALUES ('1900', '1851', '1', '420600', '襄阳市');
INSERT INTO `region` VALUES ('1901', '1900', '2', '420601', '市辖区');
INSERT INTO `region` VALUES ('1902', '1900', '2', '420602', '襄城区');
INSERT INTO `region` VALUES ('1903', '1900', '2', '420606', '樊城区');
INSERT INTO `region` VALUES ('1904', '1900', '2', '420607', '襄州区');
INSERT INTO `region` VALUES ('1905', '1900', '2', '420624', '南漳县');
INSERT INTO `region` VALUES ('1906', '1900', '2', '420625', '谷城县');
INSERT INTO `region` VALUES ('1907', '1900', '2', '420626', '保康县');
INSERT INTO `region` VALUES ('1908', '1900', '2', '420682', '老河口市');
INSERT INTO `region` VALUES ('1909', '1900', '2', '420683', '枣阳市');
INSERT INTO `region` VALUES ('1910', '1900', '2', '420684', '宜城市');
INSERT INTO `region` VALUES ('1911', '1851', '1', '420700', '鄂州市');
INSERT INTO `region` VALUES ('1912', '1911', '2', '420701', '市辖区');
INSERT INTO `region` VALUES ('1913', '1911', '2', '420702', '梁子湖区');
INSERT INTO `region` VALUES ('1914', '1911', '2', '420703', '华容区');
INSERT INTO `region` VALUES ('1915', '1911', '2', '420704', '鄂城区');
INSERT INTO `region` VALUES ('1916', '1851', '1', '420800', '荆门市');
INSERT INTO `region` VALUES ('1917', '1916', '2', '420801', '市辖区');
INSERT INTO `region` VALUES ('1918', '1916', '2', '420802', '东宝区');
INSERT INTO `region` VALUES ('1919', '1916', '2', '420804', '掇刀区');
INSERT INTO `region` VALUES ('1920', '1916', '2', '420821', '京山县');
INSERT INTO `region` VALUES ('1921', '1916', '2', '420822', '沙洋县');
INSERT INTO `region` VALUES ('1922', '1916', '2', '420881', '钟祥市');
INSERT INTO `region` VALUES ('1923', '1851', '1', '420900', '孝感市');
INSERT INTO `region` VALUES ('1924', '1923', '2', '420901', '市辖区');
INSERT INTO `region` VALUES ('1925', '1923', '2', '420902', '孝南区');
INSERT INTO `region` VALUES ('1926', '1923', '2', '420921', '孝昌县');
INSERT INTO `region` VALUES ('1927', '1923', '2', '420922', '大悟县');
INSERT INTO `region` VALUES ('1928', '1923', '2', '420923', '云梦县');
INSERT INTO `region` VALUES ('1929', '1923', '2', '420981', '应城市');
INSERT INTO `region` VALUES ('1930', '1923', '2', '420982', '安陆市');
INSERT INTO `region` VALUES ('1931', '1923', '2', '420984', '汉川市');
INSERT INTO `region` VALUES ('1932', '1851', '1', '421000', '荆州市');
INSERT INTO `region` VALUES ('1933', '1932', '2', '421001', '市辖区');
INSERT INTO `region` VALUES ('1934', '1932', '2', '421002', '沙市区');
INSERT INTO `region` VALUES ('1935', '1932', '2', '421003', '荆州区');
INSERT INTO `region` VALUES ('1936', '1932', '2', '421022', '公安县');
INSERT INTO `region` VALUES ('1937', '1932', '2', '421023', '监利县');
INSERT INTO `region` VALUES ('1938', '1932', '2', '421024', '江陵县');
INSERT INTO `region` VALUES ('1939', '1932', '2', '421081', '石首市');
INSERT INTO `region` VALUES ('1940', '1932', '2', '421083', '洪湖市');
INSERT INTO `region` VALUES ('1941', '1932', '2', '421087', '松滋市');
INSERT INTO `region` VALUES ('1942', '1851', '1', '421100', '黄冈市');
INSERT INTO `region` VALUES ('1943', '1942', '2', '421101', '市辖区');
INSERT INTO `region` VALUES ('1944', '1942', '2', '421102', '黄州区');
INSERT INTO `region` VALUES ('1945', '1942', '2', '421121', '团风县');
INSERT INTO `region` VALUES ('1946', '1942', '2', '421122', '红安县');
INSERT INTO `region` VALUES ('1947', '1942', '2', '421123', '罗田县');
INSERT INTO `region` VALUES ('1948', '1942', '2', '421124', '英山县');
INSERT INTO `region` VALUES ('1949', '1942', '2', '421125', '浠水县');
INSERT INTO `region` VALUES ('1950', '1942', '2', '421126', '蕲春县');
INSERT INTO `region` VALUES ('1951', '1942', '2', '421127', '黄梅县');
INSERT INTO `region` VALUES ('1952', '1942', '2', '421181', '麻城市');
INSERT INTO `region` VALUES ('1953', '1942', '2', '421182', '武穴市');
INSERT INTO `region` VALUES ('1954', '1851', '1', '421200', '咸宁市');
INSERT INTO `region` VALUES ('1955', '1954', '2', '421201', '市辖区');
INSERT INTO `region` VALUES ('1956', '1954', '2', '421202', '咸安区');
INSERT INTO `region` VALUES ('1957', '1954', '2', '421221', '嘉鱼县');
INSERT INTO `region` VALUES ('1958', '1954', '2', '421222', '通城县');
INSERT INTO `region` VALUES ('1959', '1954', '2', '421223', '崇阳县');
INSERT INTO `region` VALUES ('1960', '1954', '2', '421224', '通山县');
INSERT INTO `region` VALUES ('1961', '1954', '2', '421281', '赤壁市');
INSERT INTO `region` VALUES ('1962', '1851', '1', '421300', '随州市');
INSERT INTO `region` VALUES ('1963', '1962', '2', '421301', '市辖区');
INSERT INTO `region` VALUES ('1964', '1962', '2', '421303', '曾都区');
INSERT INTO `region` VALUES ('1965', '1962', '2', '421321', '随县');
INSERT INTO `region` VALUES ('1966', '1962', '2', '421381', '广水市');
INSERT INTO `region` VALUES ('1967', '1851', '1', '422800', '恩施土家族苗族自治州');
INSERT INTO `region` VALUES ('1968', '1967', '2', '422801', '恩施市');
INSERT INTO `region` VALUES ('1969', '1967', '2', '422802', '利川市');
INSERT INTO `region` VALUES ('1970', '1967', '2', '422822', '建始县');
INSERT INTO `region` VALUES ('1971', '1967', '2', '422823', '巴东县');
INSERT INTO `region` VALUES ('1972', '1967', '2', '422825', '宣恩县');
INSERT INTO `region` VALUES ('1973', '1967', '2', '422826', '咸丰县');
INSERT INTO `region` VALUES ('1974', '1967', '2', '422827', '来凤县');
INSERT INTO `region` VALUES ('1975', '1967', '2', '422828', '鹤峰县');
INSERT INTO `region` VALUES ('1976', '1851', '1', '429000', '省直辖县级行政区划');
INSERT INTO `region` VALUES ('1977', '1976', '2', '429004', '仙桃市');
INSERT INTO `region` VALUES ('1978', '1976', '2', '429005', '潜江市');
INSERT INTO `region` VALUES ('1979', '1976', '2', '429006', '天门市');
INSERT INTO `region` VALUES ('1980', '1976', '2', '429021', '神农架林区');
INSERT INTO `region` VALUES ('1981', '0', '0', '430000', '湖南省');
INSERT INTO `region` VALUES ('1982', '1981', '1', '430100', '长沙市');
INSERT INTO `region` VALUES ('1983', '1982', '2', '430101', '市辖区');
INSERT INTO `region` VALUES ('1984', '1982', '2', '430102', '芙蓉区');
INSERT INTO `region` VALUES ('1985', '1982', '2', '430103', '天心区');
INSERT INTO `region` VALUES ('1986', '1982', '2', '430104', '岳麓区');
INSERT INTO `region` VALUES ('1987', '1982', '2', '430105', '开福区');
INSERT INTO `region` VALUES ('1988', '1982', '2', '430111', '雨花区');
INSERT INTO `region` VALUES ('1989', '1982', '2', '430112', '望城区');
INSERT INTO `region` VALUES ('1990', '1982', '2', '430121', '长沙县');
INSERT INTO `region` VALUES ('1991', '1982', '2', '430124', '宁乡县');
INSERT INTO `region` VALUES ('1992', '1982', '2', '430181', '浏阳市');
INSERT INTO `region` VALUES ('1993', '1981', '1', '430200', '株洲市');
INSERT INTO `region` VALUES ('1994', '1993', '2', '430201', '市辖区');
INSERT INTO `region` VALUES ('1995', '1993', '2', '430202', '荷塘区');
INSERT INTO `region` VALUES ('1996', '1993', '2', '430203', '芦淞区');
INSERT INTO `region` VALUES ('1997', '1993', '2', '430204', '石峰区');
INSERT INTO `region` VALUES ('1998', '1993', '2', '430211', '天元区');
INSERT INTO `region` VALUES ('1999', '1993', '2', '430221', '株洲县');
INSERT INTO `region` VALUES ('2000', '1993', '2', '430223', '攸县');
INSERT INTO `region` VALUES ('2001', '1993', '2', '430224', '茶陵县');
INSERT INTO `region` VALUES ('2002', '1993', '2', '430225', '炎陵县');
INSERT INTO `region` VALUES ('2003', '1993', '2', '430281', '醴陵市');
INSERT INTO `region` VALUES ('2004', '1981', '1', '430300', '湘潭市');
INSERT INTO `region` VALUES ('2005', '2004', '2', '430301', '市辖区');
INSERT INTO `region` VALUES ('2006', '2004', '2', '430302', '雨湖区');
INSERT INTO `region` VALUES ('2007', '2004', '2', '430304', '岳塘区');
INSERT INTO `region` VALUES ('2008', '2004', '2', '430321', '湘潭县');
INSERT INTO `region` VALUES ('2009', '2004', '2', '430381', '湘乡市');
INSERT INTO `region` VALUES ('2010', '2004', '2', '430382', '韶山市');
INSERT INTO `region` VALUES ('2011', '1981', '1', '430400', '衡阳市');
INSERT INTO `region` VALUES ('2012', '2011', '2', '430401', '市辖区');
INSERT INTO `region` VALUES ('2013', '2011', '2', '430405', '珠晖区');
INSERT INTO `region` VALUES ('2014', '2011', '2', '430406', '雁峰区');
INSERT INTO `region` VALUES ('2015', '2011', '2', '430407', '石鼓区');
INSERT INTO `region` VALUES ('2016', '2011', '2', '430408', '蒸湘区');
INSERT INTO `region` VALUES ('2017', '2011', '2', '430412', '南岳区');
INSERT INTO `region` VALUES ('2018', '2011', '2', '430421', '衡阳县');
INSERT INTO `region` VALUES ('2019', '2011', '2', '430422', '衡南县');
INSERT INTO `region` VALUES ('2020', '2011', '2', '430423', '衡山县');
INSERT INTO `region` VALUES ('2021', '2011', '2', '430424', '衡东县');
INSERT INTO `region` VALUES ('2022', '2011', '2', '430426', '祁东县');
INSERT INTO `region` VALUES ('2023', '2011', '2', '430481', '耒阳市');
INSERT INTO `region` VALUES ('2024', '2011', '2', '430482', '常宁市');
INSERT INTO `region` VALUES ('2025', '1981', '1', '430500', '邵阳市');
INSERT INTO `region` VALUES ('2026', '2025', '2', '430501', '市辖区');
INSERT INTO `region` VALUES ('2027', '2025', '2', '430502', '双清区');
INSERT INTO `region` VALUES ('2028', '2025', '2', '430503', '大祥区');
INSERT INTO `region` VALUES ('2029', '2025', '2', '430511', '北塔区');
INSERT INTO `region` VALUES ('2030', '2025', '2', '430521', '邵东县');
INSERT INTO `region` VALUES ('2031', '2025', '2', '430522', '新邵县');
INSERT INTO `region` VALUES ('2032', '2025', '2', '430523', '邵阳县');
INSERT INTO `region` VALUES ('2033', '2025', '2', '430524', '隆回县');
INSERT INTO `region` VALUES ('2034', '2025', '2', '430525', '洞口县');
INSERT INTO `region` VALUES ('2035', '2025', '2', '430527', '绥宁县');
INSERT INTO `region` VALUES ('2036', '2025', '2', '430528', '新宁县');
INSERT INTO `region` VALUES ('2037', '2025', '2', '430529', '城步苗族自治县');
INSERT INTO `region` VALUES ('2038', '2025', '2', '430581', '武冈市');
INSERT INTO `region` VALUES ('2039', '1981', '1', '430600', '岳阳市');
INSERT INTO `region` VALUES ('2040', '2039', '2', '430601', '市辖区');
INSERT INTO `region` VALUES ('2041', '2039', '2', '430602', '岳阳楼区');
INSERT INTO `region` VALUES ('2042', '2039', '2', '430603', '云溪区');
INSERT INTO `region` VALUES ('2043', '2039', '2', '430611', '君山区');
INSERT INTO `region` VALUES ('2044', '2039', '2', '430621', '岳阳县');
INSERT INTO `region` VALUES ('2045', '2039', '2', '430623', '华容县');
INSERT INTO `region` VALUES ('2046', '2039', '2', '430624', '湘阴县');
INSERT INTO `region` VALUES ('2047', '2039', '2', '430626', '平江县');
INSERT INTO `region` VALUES ('2048', '2039', '2', '430681', '汨罗市');
INSERT INTO `region` VALUES ('2049', '2039', '2', '430682', '临湘市');
INSERT INTO `region` VALUES ('2050', '1981', '1', '430700', '常德市');
INSERT INTO `region` VALUES ('2051', '2050', '2', '430701', '市辖区');
INSERT INTO `region` VALUES ('2052', '2050', '2', '430702', '武陵区');
INSERT INTO `region` VALUES ('2053', '2050', '2', '430703', '鼎城区');
INSERT INTO `region` VALUES ('2054', '2050', '2', '430721', '安乡县');
INSERT INTO `region` VALUES ('2055', '2050', '2', '430722', '汉寿县');
INSERT INTO `region` VALUES ('2056', '2050', '2', '430723', '澧县');
INSERT INTO `region` VALUES ('2057', '2050', '2', '430724', '临澧县');
INSERT INTO `region` VALUES ('2058', '2050', '2', '430725', '桃源县');
INSERT INTO `region` VALUES ('2059', '2050', '2', '430726', '石门县');
INSERT INTO `region` VALUES ('2060', '2050', '2', '430781', '津市市');
INSERT INTO `region` VALUES ('2061', '1981', '1', '430800', '张家界市');
INSERT INTO `region` VALUES ('2062', '2061', '2', '430801', '市辖区');
INSERT INTO `region` VALUES ('2063', '2061', '2', '430802', '永定区');
INSERT INTO `region` VALUES ('2064', '2061', '2', '430811', '武陵源区');
INSERT INTO `region` VALUES ('2065', '2061', '2', '430821', '慈利县');
INSERT INTO `region` VALUES ('2066', '2061', '2', '430822', '桑植县');
INSERT INTO `region` VALUES ('2067', '1981', '1', '430900', '益阳市');
INSERT INTO `region` VALUES ('2068', '2067', '2', '430901', '市辖区');
INSERT INTO `region` VALUES ('2069', '2067', '2', '430902', '资阳区');
INSERT INTO `region` VALUES ('2070', '2067', '2', '430903', '赫山区');
INSERT INTO `region` VALUES ('2071', '2067', '2', '430921', '南县');
INSERT INTO `region` VALUES ('2072', '2067', '2', '430922', '桃江县');
INSERT INTO `region` VALUES ('2073', '2067', '2', '430923', '安化县');
INSERT INTO `region` VALUES ('2074', '2067', '2', '430981', '沅江市');
INSERT INTO `region` VALUES ('2075', '1981', '1', '431000', '郴州市');
INSERT INTO `region` VALUES ('2076', '2075', '2', '431001', '市辖区');
INSERT INTO `region` VALUES ('2077', '2075', '2', '431002', '北湖区');
INSERT INTO `region` VALUES ('2078', '2075', '2', '431003', '苏仙区');
INSERT INTO `region` VALUES ('2079', '2075', '2', '431021', '桂阳县');
INSERT INTO `region` VALUES ('2080', '2075', '2', '431022', '宜章县');
INSERT INTO `region` VALUES ('2081', '2075', '2', '431023', '永兴县');
INSERT INTO `region` VALUES ('2082', '2075', '2', '431024', '嘉禾县');
INSERT INTO `region` VALUES ('2083', '2075', '2', '431025', '临武县');
INSERT INTO `region` VALUES ('2084', '2075', '2', '431026', '汝城县');
INSERT INTO `region` VALUES ('2085', '2075', '2', '431027', '桂东县');
INSERT INTO `region` VALUES ('2086', '2075', '2', '431028', '安仁县');
INSERT INTO `region` VALUES ('2087', '2075', '2', '431081', '资兴市');
INSERT INTO `region` VALUES ('2088', '1981', '1', '431100', '永州市');
INSERT INTO `region` VALUES ('2089', '2088', '2', '431101', '市辖区');
INSERT INTO `region` VALUES ('2090', '2088', '2', '431102', '零陵区');
INSERT INTO `region` VALUES ('2091', '2088', '2', '431103', '冷水滩区');
INSERT INTO `region` VALUES ('2092', '2088', '2', '431121', '祁阳县');
INSERT INTO `region` VALUES ('2093', '2088', '2', '431122', '东安县');
INSERT INTO `region` VALUES ('2094', '2088', '2', '431123', '双牌县');
INSERT INTO `region` VALUES ('2095', '2088', '2', '431124', '道县');
INSERT INTO `region` VALUES ('2096', '2088', '2', '431125', '江永县');
INSERT INTO `region` VALUES ('2097', '2088', '2', '431126', '宁远县');
INSERT INTO `region` VALUES ('2098', '2088', '2', '431127', '蓝山县');
INSERT INTO `region` VALUES ('2099', '2088', '2', '431128', '新田县');
INSERT INTO `region` VALUES ('2100', '2088', '2', '431129', '江华瑶族自治县');
INSERT INTO `region` VALUES ('2101', '1981', '1', '431200', '怀化市');
INSERT INTO `region` VALUES ('2102', '2101', '2', '431201', '市辖区');
INSERT INTO `region` VALUES ('2103', '2101', '2', '431202', '鹤城区');
INSERT INTO `region` VALUES ('2104', '2101', '2', '431221', '中方县');
INSERT INTO `region` VALUES ('2105', '2101', '2', '431222', '沅陵县');
INSERT INTO `region` VALUES ('2106', '2101', '2', '431223', '辰溪县');
INSERT INTO `region` VALUES ('2107', '2101', '2', '431224', '溆浦县');
INSERT INTO `region` VALUES ('2108', '2101', '2', '431225', '会同县');
INSERT INTO `region` VALUES ('2109', '2101', '2', '431226', '麻阳苗族自治县');
INSERT INTO `region` VALUES ('2110', '2101', '2', '431227', '新晃侗族自治县');
INSERT INTO `region` VALUES ('2111', '2101', '2', '431228', '芷江侗族自治县');
INSERT INTO `region` VALUES ('2112', '2101', '2', '431229', '靖州苗族侗族自治县');
INSERT INTO `region` VALUES ('2113', '2101', '2', '431230', '通道侗族自治县');
INSERT INTO `region` VALUES ('2114', '2101', '2', '431281', '洪江市');
INSERT INTO `region` VALUES ('2115', '1981', '1', '431300', '娄底市');
INSERT INTO `region` VALUES ('2116', '2115', '2', '431301', '市辖区');
INSERT INTO `region` VALUES ('2117', '2115', '2', '431302', '娄星区');
INSERT INTO `region` VALUES ('2118', '2115', '2', '431321', '双峰县');
INSERT INTO `region` VALUES ('2119', '2115', '2', '431322', '新化县');
INSERT INTO `region` VALUES ('2120', '2115', '2', '431381', '冷水江市');
INSERT INTO `region` VALUES ('2121', '2115', '2', '431382', '涟源市');
INSERT INTO `region` VALUES ('2122', '1981', '1', '433100', '湘西土家族苗族自治州');
INSERT INTO `region` VALUES ('2123', '2122', '2', '433101', '吉首市');
INSERT INTO `region` VALUES ('2124', '2122', '2', '433122', '泸溪县');
INSERT INTO `region` VALUES ('2125', '2122', '2', '433123', '凤凰县');
INSERT INTO `region` VALUES ('2126', '2122', '2', '433124', '花垣县');
INSERT INTO `region` VALUES ('2127', '2122', '2', '433125', '保靖县');
INSERT INTO `region` VALUES ('2128', '2122', '2', '433126', '古丈县');
INSERT INTO `region` VALUES ('2129', '2122', '2', '433127', '永顺县');
INSERT INTO `region` VALUES ('2130', '2122', '2', '433130', '龙山县');
INSERT INTO `region` VALUES ('2131', '0', '0', '440000', '广东省');
INSERT INTO `region` VALUES ('2132', '2131', '1', '440100', '广州市');
INSERT INTO `region` VALUES ('2133', '2132', '2', '440101', '市辖区');
INSERT INTO `region` VALUES ('2134', '2132', '2', '440103', '荔湾区');
INSERT INTO `region` VALUES ('2135', '2132', '2', '440104', '越秀区');
INSERT INTO `region` VALUES ('2136', '2132', '2', '440105', '海珠区');
INSERT INTO `region` VALUES ('2137', '2132', '2', '440106', '天河区');
INSERT INTO `region` VALUES ('2138', '2132', '2', '440111', '白云区');
INSERT INTO `region` VALUES ('2139', '2132', '2', '440112', '黄埔区');
INSERT INTO `region` VALUES ('2140', '2132', '2', '440113', '番禺区');
INSERT INTO `region` VALUES ('2141', '2132', '2', '440114', '花都区');
INSERT INTO `region` VALUES ('2142', '2132', '2', '440115', '南沙区');
INSERT INTO `region` VALUES ('2143', '2132', '2', '440116', '萝岗区');
INSERT INTO `region` VALUES ('2144', '2132', '2', '440117', '从化区');
INSERT INTO `region` VALUES ('2145', '2132', '2', '440118', '增城区');
INSERT INTO `region` VALUES ('2146', '2131', '1', '440200', '韶关市');
INSERT INTO `region` VALUES ('2147', '2146', '2', '440201', '市辖区');
INSERT INTO `region` VALUES ('2148', '2146', '2', '440203', '武江区');
INSERT INTO `region` VALUES ('2149', '2146', '2', '440204', '浈江区');
INSERT INTO `region` VALUES ('2150', '2146', '2', '440205', '曲江区');
INSERT INTO `region` VALUES ('2151', '2146', '2', '440222', '始兴县');
INSERT INTO `region` VALUES ('2152', '2146', '2', '440224', '仁化县');
INSERT INTO `region` VALUES ('2153', '2146', '2', '440229', '翁源县');
INSERT INTO `region` VALUES ('2154', '2146', '2', '440232', '乳源瑶族自治县');
INSERT INTO `region` VALUES ('2155', '2146', '2', '440233', '新丰县');
INSERT INTO `region` VALUES ('2156', '2146', '2', '440281', '乐昌市');
INSERT INTO `region` VALUES ('2157', '2146', '2', '440282', '南雄市');
INSERT INTO `region` VALUES ('2158', '2131', '1', '440300', '深圳市');
INSERT INTO `region` VALUES ('2159', '2158', '2', '440301', '市辖区');
INSERT INTO `region` VALUES ('2160', '2158', '2', '440303', '罗湖区');
INSERT INTO `region` VALUES ('2161', '2158', '2', '440304', '福田区');
INSERT INTO `region` VALUES ('2162', '2158', '2', '440305', '南山区');
INSERT INTO `region` VALUES ('2163', '2158', '2', '440306', '宝安区');
INSERT INTO `region` VALUES ('2164', '2158', '2', '440307', '龙岗区');
INSERT INTO `region` VALUES ('2165', '2158', '2', '440308', '盐田区');
INSERT INTO `region` VALUES ('2166', '2131', '1', '440400', '珠海市');
INSERT INTO `region` VALUES ('2167', '2166', '2', '440401', '市辖区');
INSERT INTO `region` VALUES ('2168', '2166', '2', '440402', '香洲区');
INSERT INTO `region` VALUES ('2169', '2166', '2', '440403', '斗门区');
INSERT INTO `region` VALUES ('2170', '2166', '2', '440404', '金湾区');
INSERT INTO `region` VALUES ('2171', '2131', '1', '440500', '汕头市');
INSERT INTO `region` VALUES ('2172', '2171', '2', '440501', '市辖区');
INSERT INTO `region` VALUES ('2173', '2171', '2', '440507', '龙湖区');
INSERT INTO `region` VALUES ('2174', '2171', '2', '440511', '金平区');
INSERT INTO `region` VALUES ('2175', '2171', '2', '440512', '濠江区');
INSERT INTO `region` VALUES ('2176', '2171', '2', '440513', '潮阳区');
INSERT INTO `region` VALUES ('2177', '2171', '2', '440514', '潮南区');
INSERT INTO `region` VALUES ('2178', '2171', '2', '440515', '澄海区');
INSERT INTO `region` VALUES ('2179', '2171', '2', '440523', '南澳县');
INSERT INTO `region` VALUES ('2180', '2131', '1', '440600', '佛山市');
INSERT INTO `region` VALUES ('2181', '2180', '2', '440601', '市辖区');
INSERT INTO `region` VALUES ('2182', '2180', '2', '440604', '禅城区');
INSERT INTO `region` VALUES ('2183', '2180', '2', '440605', '南海区');
INSERT INTO `region` VALUES ('2184', '2180', '2', '440606', '顺德区');
INSERT INTO `region` VALUES ('2185', '2180', '2', '440607', '三水区');
INSERT INTO `region` VALUES ('2186', '2180', '2', '440608', '高明区');
INSERT INTO `region` VALUES ('2187', '2131', '1', '440700', '江门市');
INSERT INTO `region` VALUES ('2188', '2187', '2', '440701', '市辖区');
INSERT INTO `region` VALUES ('2189', '2187', '2', '440703', '蓬江区');
INSERT INTO `region` VALUES ('2190', '2187', '2', '440704', '江海区');
INSERT INTO `region` VALUES ('2191', '2187', '2', '440705', '新会区');
INSERT INTO `region` VALUES ('2192', '2187', '2', '440781', '台山市');
INSERT INTO `region` VALUES ('2193', '2187', '2', '440783', '开平市');
INSERT INTO `region` VALUES ('2194', '2187', '2', '440784', '鹤山市');
INSERT INTO `region` VALUES ('2195', '2187', '2', '440785', '恩平市');
INSERT INTO `region` VALUES ('2196', '2131', '1', '440800', '湛江市');
INSERT INTO `region` VALUES ('2197', '2196', '2', '440801', '市辖区');
INSERT INTO `region` VALUES ('2198', '2196', '2', '440802', '赤坎区');
INSERT INTO `region` VALUES ('2199', '2196', '2', '440803', '霞山区');
INSERT INTO `region` VALUES ('2200', '2196', '2', '440804', '坡头区');
INSERT INTO `region` VALUES ('2201', '2196', '2', '440811', '麻章区');
INSERT INTO `region` VALUES ('2202', '2196', '2', '440823', '遂溪县');
INSERT INTO `region` VALUES ('2203', '2196', '2', '440825', '徐闻县');
INSERT INTO `region` VALUES ('2204', '2196', '2', '440881', '廉江市');
INSERT INTO `region` VALUES ('2205', '2196', '2', '440882', '雷州市');
INSERT INTO `region` VALUES ('2206', '2196', '2', '440883', '吴川市');
INSERT INTO `region` VALUES ('2207', '2131', '1', '440900', '茂名市');
INSERT INTO `region` VALUES ('2208', '2207', '2', '440901', '市辖区');
INSERT INTO `region` VALUES ('2209', '2207', '2', '440902', '茂南区');
INSERT INTO `region` VALUES ('2210', '2207', '2', '440904', '电白区');
INSERT INTO `region` VALUES ('2211', '2207', '2', '440981', '高州市');
INSERT INTO `region` VALUES ('2212', '2207', '2', '440982', '化州市');
INSERT INTO `region` VALUES ('2213', '2207', '2', '440983', '信宜市');
INSERT INTO `region` VALUES ('2214', '2131', '1', '441200', '肇庆市');
INSERT INTO `region` VALUES ('2215', '2214', '2', '441201', '市辖区');
INSERT INTO `region` VALUES ('2216', '2214', '2', '441202', '端州区');
INSERT INTO `region` VALUES ('2217', '2214', '2', '441203', '鼎湖区');
INSERT INTO `region` VALUES ('2218', '2214', '2', '441223', '广宁县');
INSERT INTO `region` VALUES ('2219', '2214', '2', '441224', '怀集县');
INSERT INTO `region` VALUES ('2220', '2214', '2', '441225', '封开县');
INSERT INTO `region` VALUES ('2221', '2214', '2', '441226', '德庆县');
INSERT INTO `region` VALUES ('2222', '2214', '2', '441283', '高要市');
INSERT INTO `region` VALUES ('2223', '2214', '2', '441284', '四会市');
INSERT INTO `region` VALUES ('2224', '2131', '1', '441300', '惠州市');
INSERT INTO `region` VALUES ('2225', '2224', '2', '441301', '市辖区');
INSERT INTO `region` VALUES ('2226', '2224', '2', '441302', '惠城区');
INSERT INTO `region` VALUES ('2227', '2224', '2', '441303', '惠阳区');
INSERT INTO `region` VALUES ('2228', '2224', '2', '441322', '博罗县');
INSERT INTO `region` VALUES ('2229', '2224', '2', '441323', '惠东县');
INSERT INTO `region` VALUES ('2230', '2224', '2', '441324', '龙门县');
INSERT INTO `region` VALUES ('2231', '2131', '1', '441400', '梅州市');
INSERT INTO `region` VALUES ('2232', '2231', '2', '441401', '市辖区');
INSERT INTO `region` VALUES ('2233', '2231', '2', '441402', '梅江区');
INSERT INTO `region` VALUES ('2234', '2231', '2', '441403', '梅县区');
INSERT INTO `region` VALUES ('2235', '2231', '2', '441422', '大埔县');
INSERT INTO `region` VALUES ('2236', '2231', '2', '441423', '丰顺县');
INSERT INTO `region` VALUES ('2237', '2231', '2', '441424', '五华县');
INSERT INTO `region` VALUES ('2238', '2231', '2', '441426', '平远县');
INSERT INTO `region` VALUES ('2239', '2231', '2', '441427', '蕉岭县');
INSERT INTO `region` VALUES ('2240', '2231', '2', '441481', '兴宁市');
INSERT INTO `region` VALUES ('2241', '2131', '1', '441500', '汕尾市');
INSERT INTO `region` VALUES ('2242', '2241', '2', '441501', '市辖区');
INSERT INTO `region` VALUES ('2243', '2241', '2', '441502', '城区');
INSERT INTO `region` VALUES ('2244', '2241', '2', '441521', '海丰县');
INSERT INTO `region` VALUES ('2245', '2241', '2', '441523', '陆河县');
INSERT INTO `region` VALUES ('2246', '2241', '2', '441581', '陆丰市');
INSERT INTO `region` VALUES ('2247', '2131', '1', '441600', '河源市');
INSERT INTO `region` VALUES ('2248', '2247', '2', '441601', '市辖区');
INSERT INTO `region` VALUES ('2249', '2247', '2', '441602', '源城区');
INSERT INTO `region` VALUES ('2250', '2247', '2', '441621', '紫金县');
INSERT INTO `region` VALUES ('2251', '2247', '2', '441622', '龙川县');
INSERT INTO `region` VALUES ('2252', '2247', '2', '441623', '连平县');
INSERT INTO `region` VALUES ('2253', '2247', '2', '441624', '和平县');
INSERT INTO `region` VALUES ('2254', '2247', '2', '441625', '东源县');
INSERT INTO `region` VALUES ('2255', '2131', '1', '441700', '阳江市');
INSERT INTO `region` VALUES ('2256', '2255', '2', '441701', '市辖区');
INSERT INTO `region` VALUES ('2257', '2255', '2', '441702', '江城区');
INSERT INTO `region` VALUES ('2258', '2255', '2', '441721', '阳西县');
INSERT INTO `region` VALUES ('2259', '2255', '2', '441723', '阳东县');
INSERT INTO `region` VALUES ('2260', '2255', '2', '441781', '阳春市');
INSERT INTO `region` VALUES ('2261', '2131', '1', '441800', '清远市');
INSERT INTO `region` VALUES ('2262', '2261', '2', '441801', '市辖区');
INSERT INTO `region` VALUES ('2263', '2261', '2', '441802', '清城区');
INSERT INTO `region` VALUES ('2264', '2261', '2', '441803', '清新区');
INSERT INTO `region` VALUES ('2265', '2261', '2', '441821', '佛冈县');
INSERT INTO `region` VALUES ('2266', '2261', '2', '441823', '阳山县');
INSERT INTO `region` VALUES ('2267', '2261', '2', '441825', '连山壮族瑶族自治县');
INSERT INTO `region` VALUES ('2268', '2261', '2', '441826', '连南瑶族自治县');
INSERT INTO `region` VALUES ('2269', '2261', '2', '441881', '英德市');
INSERT INTO `region` VALUES ('2270', '2261', '2', '441882', '连州市');
INSERT INTO `region` VALUES ('2271', '2131', '1', '441900', '东莞市');
INSERT INTO `region` VALUES ('2272', '2131', '1', '442000', '中山市');
INSERT INTO `region` VALUES ('2273', '2131', '1', '445100', '潮州市');
INSERT INTO `region` VALUES ('2274', '2273', '2', '445101', '市辖区');
INSERT INTO `region` VALUES ('2275', '2273', '2', '445102', '湘桥区');
INSERT INTO `region` VALUES ('2276', '2273', '2', '445103', '潮安区');
INSERT INTO `region` VALUES ('2277', '2273', '2', '445122', '饶平县');
INSERT INTO `region` VALUES ('2278', '2131', '1', '445200', '揭阳市');
INSERT INTO `region` VALUES ('2279', '2278', '2', '445201', '市辖区');
INSERT INTO `region` VALUES ('2280', '2278', '2', '445202', '榕城区');
INSERT INTO `region` VALUES ('2281', '2278', '2', '445203', '揭东区');
INSERT INTO `region` VALUES ('2282', '2278', '2', '445222', '揭西县');
INSERT INTO `region` VALUES ('2283', '2278', '2', '445224', '惠来县');
INSERT INTO `region` VALUES ('2284', '2278', '2', '445281', '普宁市');
INSERT INTO `region` VALUES ('2285', '2131', '1', '445300', '云浮市');
INSERT INTO `region` VALUES ('2286', '2285', '2', '445301', '市辖区');
INSERT INTO `region` VALUES ('2287', '2285', '2', '445302', '云城区');
INSERT INTO `region` VALUES ('2288', '2285', '2', '445303', '云安区');
INSERT INTO `region` VALUES ('2289', '2285', '2', '445321', '新兴县');
INSERT INTO `region` VALUES ('2290', '2285', '2', '445322', '郁南县');
INSERT INTO `region` VALUES ('2291', '2285', '2', '445381', '罗定市');
INSERT INTO `region` VALUES ('2292', '0', '0', '450000', '广西壮族自治区');
INSERT INTO `region` VALUES ('2293', '2292', '1', '450100', '南宁市');
INSERT INTO `region` VALUES ('2294', '2293', '2', '450101', '市辖区');
INSERT INTO `region` VALUES ('2295', '2293', '2', '450102', '兴宁区');
INSERT INTO `region` VALUES ('2296', '2293', '2', '450103', '青秀区');
INSERT INTO `region` VALUES ('2297', '2293', '2', '450105', '江南区');
INSERT INTO `region` VALUES ('2298', '2293', '2', '450107', '西乡塘区');
INSERT INTO `region` VALUES ('2299', '2293', '2', '450108', '良庆区');
INSERT INTO `region` VALUES ('2300', '2293', '2', '450109', '邕宁区');
INSERT INTO `region` VALUES ('2301', '2293', '2', '450122', '武鸣县');
INSERT INTO `region` VALUES ('2302', '2293', '2', '450123', '隆安县');
INSERT INTO `region` VALUES ('2303', '2293', '2', '450124', '马山县');
INSERT INTO `region` VALUES ('2304', '2293', '2', '450125', '上林县');
INSERT INTO `region` VALUES ('2305', '2293', '2', '450126', '宾阳县');
INSERT INTO `region` VALUES ('2306', '2293', '2', '450127', '横县');
INSERT INTO `region` VALUES ('2307', '2292', '1', '450200', '柳州市');
INSERT INTO `region` VALUES ('2308', '2307', '2', '450201', '市辖区');
INSERT INTO `region` VALUES ('2309', '2307', '2', '450202', '城中区');
INSERT INTO `region` VALUES ('2310', '2307', '2', '450203', '鱼峰区');
INSERT INTO `region` VALUES ('2311', '2307', '2', '450204', '柳南区');
INSERT INTO `region` VALUES ('2312', '2307', '2', '450205', '柳北区');
INSERT INTO `region` VALUES ('2313', '2307', '2', '450221', '柳江县');
INSERT INTO `region` VALUES ('2314', '2307', '2', '450222', '柳城县');
INSERT INTO `region` VALUES ('2315', '2307', '2', '450223', '鹿寨县');
INSERT INTO `region` VALUES ('2316', '2307', '2', '450224', '融安县');
INSERT INTO `region` VALUES ('2317', '2307', '2', '450225', '融水苗族自治县');
INSERT INTO `region` VALUES ('2318', '2307', '2', '450226', '三江侗族自治县');
INSERT INTO `region` VALUES ('2319', '2292', '1', '450300', '桂林市');
INSERT INTO `region` VALUES ('2320', '2319', '2', '450301', '市辖区');
INSERT INTO `region` VALUES ('2321', '2319', '2', '450302', '秀峰区');
INSERT INTO `region` VALUES ('2322', '2319', '2', '450303', '叠彩区');
INSERT INTO `region` VALUES ('2323', '2319', '2', '450304', '象山区');
INSERT INTO `region` VALUES ('2324', '2319', '2', '450305', '七星区');
INSERT INTO `region` VALUES ('2325', '2319', '2', '450311', '雁山区');
INSERT INTO `region` VALUES ('2326', '2319', '2', '450312', '临桂区');
INSERT INTO `region` VALUES ('2327', '2319', '2', '450321', '阳朔县');
INSERT INTO `region` VALUES ('2328', '2319', '2', '450323', '灵川县');
INSERT INTO `region` VALUES ('2329', '2319', '2', '450324', '全州县');
INSERT INTO `region` VALUES ('2330', '2319', '2', '450325', '兴安县');
INSERT INTO `region` VALUES ('2331', '2319', '2', '450326', '永福县');
INSERT INTO `region` VALUES ('2332', '2319', '2', '450327', '灌阳县');
INSERT INTO `region` VALUES ('2333', '2319', '2', '450328', '龙胜各族自治县');
INSERT INTO `region` VALUES ('2334', '2319', '2', '450329', '资源县');
INSERT INTO `region` VALUES ('2335', '2319', '2', '450330', '平乐县');
INSERT INTO `region` VALUES ('2336', '2319', '2', '450331', '荔浦县');
INSERT INTO `region` VALUES ('2337', '2319', '2', '450332', '恭城瑶族自治县');
INSERT INTO `region` VALUES ('2338', '2292', '1', '450400', '梧州市');
INSERT INTO `region` VALUES ('2339', '2338', '2', '450401', '市辖区');
INSERT INTO `region` VALUES ('2340', '2338', '2', '450403', '万秀区');
INSERT INTO `region` VALUES ('2341', '2338', '2', '450405', '长洲区');
INSERT INTO `region` VALUES ('2342', '2338', '2', '450406', '龙圩区');
INSERT INTO `region` VALUES ('2343', '2338', '2', '450421', '苍梧县');
INSERT INTO `region` VALUES ('2344', '2338', '2', '450422', '藤县');
INSERT INTO `region` VALUES ('2345', '2338', '2', '450423', '蒙山县');
INSERT INTO `region` VALUES ('2346', '2338', '2', '450481', '岑溪市');
INSERT INTO `region` VALUES ('2347', '2292', '1', '450500', '北海市');
INSERT INTO `region` VALUES ('2348', '2347', '2', '450501', '市辖区');
INSERT INTO `region` VALUES ('2349', '2347', '2', '450502', '海城区');
INSERT INTO `region` VALUES ('2350', '2347', '2', '450503', '银海区');
INSERT INTO `region` VALUES ('2351', '2347', '2', '450512', '铁山港区');
INSERT INTO `region` VALUES ('2352', '2347', '2', '450521', '合浦县');
INSERT INTO `region` VALUES ('2353', '2292', '1', '450600', '防城港市');
INSERT INTO `region` VALUES ('2354', '2353', '2', '450601', '市辖区');
INSERT INTO `region` VALUES ('2355', '2353', '2', '450602', '港口区');
INSERT INTO `region` VALUES ('2356', '2353', '2', '450603', '防城区');
INSERT INTO `region` VALUES ('2357', '2353', '2', '450621', '上思县');
INSERT INTO `region` VALUES ('2358', '2353', '2', '450681', '东兴市');
INSERT INTO `region` VALUES ('2359', '2292', '1', '450700', '钦州市');
INSERT INTO `region` VALUES ('2360', '2359', '2', '450701', '市辖区');
INSERT INTO `region` VALUES ('2361', '2359', '2', '450702', '钦南区');
INSERT INTO `region` VALUES ('2362', '2359', '2', '450703', '钦北区');
INSERT INTO `region` VALUES ('2363', '2359', '2', '450721', '灵山县');
INSERT INTO `region` VALUES ('2364', '2359', '2', '450722', '浦北县');
INSERT INTO `region` VALUES ('2365', '2292', '1', '450800', '贵港市');
INSERT INTO `region` VALUES ('2366', '2365', '2', '450801', '市辖区');
INSERT INTO `region` VALUES ('2367', '2365', '2', '450802', '港北区');
INSERT INTO `region` VALUES ('2368', '2365', '2', '450803', '港南区');
INSERT INTO `region` VALUES ('2369', '2365', '2', '450804', '覃塘区');
INSERT INTO `region` VALUES ('2370', '2365', '2', '450821', '平南县');
INSERT INTO `region` VALUES ('2371', '2365', '2', '450881', '桂平市');
INSERT INTO `region` VALUES ('2372', '2292', '1', '450900', '玉林市');
INSERT INTO `region` VALUES ('2373', '2372', '2', '450901', '市辖区');
INSERT INTO `region` VALUES ('2374', '2372', '2', '450902', '玉州区');
INSERT INTO `region` VALUES ('2375', '2372', '2', '450903', '福绵区');
INSERT INTO `region` VALUES ('2376', '2372', '2', '450921', '容县');
INSERT INTO `region` VALUES ('2377', '2372', '2', '450922', '陆川县');
INSERT INTO `region` VALUES ('2378', '2372', '2', '450923', '博白县');
INSERT INTO `region` VALUES ('2379', '2372', '2', '450924', '兴业县');
INSERT INTO `region` VALUES ('2380', '2372', '2', '450981', '北流市');
INSERT INTO `region` VALUES ('2381', '2292', '1', '451000', '百色市');
INSERT INTO `region` VALUES ('2382', '2381', '2', '451001', '市辖区');
INSERT INTO `region` VALUES ('2383', '2381', '2', '451002', '右江区');
INSERT INTO `region` VALUES ('2384', '2381', '2', '451021', '田阳县');
INSERT INTO `region` VALUES ('2385', '2381', '2', '451022', '田东县');
INSERT INTO `region` VALUES ('2386', '2381', '2', '451023', '平果县');
INSERT INTO `region` VALUES ('2387', '2381', '2', '451024', '德保县');
INSERT INTO `region` VALUES ('2388', '2381', '2', '451025', '靖西县');
INSERT INTO `region` VALUES ('2389', '2381', '2', '451026', '那坡县');
INSERT INTO `region` VALUES ('2390', '2381', '2', '451027', '凌云县');
INSERT INTO `region` VALUES ('2391', '2381', '2', '451028', '乐业县');
INSERT INTO `region` VALUES ('2392', '2381', '2', '451029', '田林县');
INSERT INTO `region` VALUES ('2393', '2381', '2', '451030', '西林县');
INSERT INTO `region` VALUES ('2394', '2381', '2', '451031', '隆林各族自治县');
INSERT INTO `region` VALUES ('2395', '2292', '1', '451100', '贺州市');
INSERT INTO `region` VALUES ('2396', '2395', '2', '451101', '市辖区');
INSERT INTO `region` VALUES ('2397', '2395', '2', '451102', '八步区');
INSERT INTO `region` VALUES ('2398', '2395', '2', '451121', '昭平县');
INSERT INTO `region` VALUES ('2399', '2395', '2', '451122', '钟山县');
INSERT INTO `region` VALUES ('2400', '2395', '2', '451123', '富川瑶族自治县');
INSERT INTO `region` VALUES ('2401', '2292', '1', '451200', '河池市');
INSERT INTO `region` VALUES ('2402', '2401', '2', '451201', '市辖区');
INSERT INTO `region` VALUES ('2403', '2401', '2', '451202', '金城江区');
INSERT INTO `region` VALUES ('2404', '2401', '2', '451221', '南丹县');
INSERT INTO `region` VALUES ('2405', '2401', '2', '451222', '天峨县');
INSERT INTO `region` VALUES ('2406', '2401', '2', '451223', '凤山县');
INSERT INTO `region` VALUES ('2407', '2401', '2', '451224', '东兰县');
INSERT INTO `region` VALUES ('2408', '2401', '2', '451225', '罗城仫佬族自治县');
INSERT INTO `region` VALUES ('2409', '2401', '2', '451226', '环江毛南族自治县');
INSERT INTO `region` VALUES ('2410', '2401', '2', '451227', '巴马瑶族自治县');
INSERT INTO `region` VALUES ('2411', '2401', '2', '451228', '都安瑶族自治县');
INSERT INTO `region` VALUES ('2412', '2401', '2', '451229', '大化瑶族自治县');
INSERT INTO `region` VALUES ('2413', '2401', '2', '451281', '宜州市');
INSERT INTO `region` VALUES ('2414', '2292', '1', '451300', '来宾市');
INSERT INTO `region` VALUES ('2415', '2414', '2', '451301', '市辖区');
INSERT INTO `region` VALUES ('2416', '2414', '2', '451302', '兴宾区');
INSERT INTO `region` VALUES ('2417', '2414', '2', '451321', '忻城县');
INSERT INTO `region` VALUES ('2418', '2414', '2', '451322', '象州县');
INSERT INTO `region` VALUES ('2419', '2414', '2', '451323', '武宣县');
INSERT INTO `region` VALUES ('2420', '2414', '2', '451324', '金秀瑶族自治县');
INSERT INTO `region` VALUES ('2421', '2414', '2', '451381', '合山市');
INSERT INTO `region` VALUES ('2422', '2292', '1', '451400', '崇左市');
INSERT INTO `region` VALUES ('2423', '2422', '2', '451401', '市辖区');
INSERT INTO `region` VALUES ('2424', '2422', '2', '451402', '江州区');
INSERT INTO `region` VALUES ('2425', '2422', '2', '451421', '扶绥县');
INSERT INTO `region` VALUES ('2426', '2422', '2', '451422', '宁明县');
INSERT INTO `region` VALUES ('2427', '2422', '2', '451423', '龙州县');
INSERT INTO `region` VALUES ('2428', '2422', '2', '451424', '大新县');
INSERT INTO `region` VALUES ('2429', '2422', '2', '451425', '天等县');
INSERT INTO `region` VALUES ('2430', '2422', '2', '451481', '凭祥市');
INSERT INTO `region` VALUES ('2431', '0', '0', '460000', '海南省');
INSERT INTO `region` VALUES ('2432', '2431', '1', '460100', '海口市');
INSERT INTO `region` VALUES ('2433', '2432', '2', '460101', '市辖区');
INSERT INTO `region` VALUES ('2434', '2432', '2', '460105', '秀英区');
INSERT INTO `region` VALUES ('2435', '2432', '2', '460106', '龙华区');
INSERT INTO `region` VALUES ('2436', '2432', '2', '460107', '琼山区');
INSERT INTO `region` VALUES ('2437', '2432', '2', '460108', '美兰区');
INSERT INTO `region` VALUES ('2438', '2431', '1', '460200', '三亚市');
INSERT INTO `region` VALUES ('2439', '2438', '2', '460201', '市辖区');
INSERT INTO `region` VALUES ('2440', '2438', '2', '460202', '海棠区');
INSERT INTO `region` VALUES ('2441', '2438', '2', '460203', '吉阳区');
INSERT INTO `region` VALUES ('2442', '2438', '2', '460204', '天涯区');
INSERT INTO `region` VALUES ('2443', '2438', '2', '460205', '崖州区');
INSERT INTO `region` VALUES ('2444', '2431', '1', '460300', '三沙市');
INSERT INTO `region` VALUES ('2445', '2431', '1', '469000', '省直辖县级行政区划');
INSERT INTO `region` VALUES ('2446', '2445', '2', '469001', '五指山市');
INSERT INTO `region` VALUES ('2447', '2445', '2', '469002', '琼海市');
INSERT INTO `region` VALUES ('2448', '2445', '2', '469003', '儋州市');
INSERT INTO `region` VALUES ('2449', '2445', '2', '469005', '文昌市');
INSERT INTO `region` VALUES ('2450', '2445', '2', '469006', '万宁市');
INSERT INTO `region` VALUES ('2451', '2445', '2', '469007', '东方市');
INSERT INTO `region` VALUES ('2452', '2445', '2', '469021', '定安县');
INSERT INTO `region` VALUES ('2453', '2445', '2', '469022', '屯昌县');
INSERT INTO `region` VALUES ('2454', '2445', '2', '469023', '澄迈县');
INSERT INTO `region` VALUES ('2455', '2445', '2', '469024', '临高县');
INSERT INTO `region` VALUES ('2456', '2445', '2', '469025', '白沙黎族自治县');
INSERT INTO `region` VALUES ('2457', '2445', '2', '469026', '昌江黎族自治县');
INSERT INTO `region` VALUES ('2458', '2445', '2', '469027', '乐东黎族自治县');
INSERT INTO `region` VALUES ('2459', '2445', '2', '469028', '陵水黎族自治县');
INSERT INTO `region` VALUES ('2460', '2445', '2', '469029', '保亭黎族苗族自治县');
INSERT INTO `region` VALUES ('2461', '2445', '2', '469030', '琼中黎族苗族自治县');
INSERT INTO `region` VALUES ('2462', '0', '0', '500000', '重庆市');
INSERT INTO `region` VALUES ('2463', '2462', '1', '500100', '市辖区');
INSERT INTO `region` VALUES ('2464', '2463', '2', '500101', '万州区');
INSERT INTO `region` VALUES ('2465', '2463', '2', '500102', '涪陵区');
INSERT INTO `region` VALUES ('2466', '2463', '2', '500103', '渝中区');
INSERT INTO `region` VALUES ('2467', '2463', '2', '500104', '大渡口区');
INSERT INTO `region` VALUES ('2468', '2463', '2', '500105', '江北区');
INSERT INTO `region` VALUES ('2469', '2463', '2', '500106', '沙坪坝区');
INSERT INTO `region` VALUES ('2470', '2463', '2', '500107', '九龙坡区');
INSERT INTO `region` VALUES ('2471', '2463', '2', '500108', '南岸区');
INSERT INTO `region` VALUES ('2472', '2463', '2', '500109', '北碚区');
INSERT INTO `region` VALUES ('2473', '2463', '2', '500110', '綦江区');
INSERT INTO `region` VALUES ('2474', '2463', '2', '500111', '大足区');
INSERT INTO `region` VALUES ('2475', '2463', '2', '500112', '渝北区');
INSERT INTO `region` VALUES ('2476', '2463', '2', '500113', '巴南区');
INSERT INTO `region` VALUES ('2477', '2463', '2', '500114', '黔江区');
INSERT INTO `region` VALUES ('2478', '2463', '2', '500115', '长寿区');
INSERT INTO `region` VALUES ('2479', '2463', '2', '500116', '江津区');
INSERT INTO `region` VALUES ('2480', '2463', '2', '500117', '合川区');
INSERT INTO `region` VALUES ('2481', '2463', '2', '500118', '永川区');
INSERT INTO `region` VALUES ('2482', '2463', '2', '500119', '南川区');
INSERT INTO `region` VALUES ('2483', '2463', '2', '500120', '璧山区');
INSERT INTO `region` VALUES ('2484', '2463', '2', '500151', '铜梁区');
INSERT INTO `region` VALUES ('2485', '2462', '1', '500200', '县');
INSERT INTO `region` VALUES ('2486', '2485', '2', '500223', '潼南县');
INSERT INTO `region` VALUES ('2487', '2485', '2', '500226', '荣昌县');
INSERT INTO `region` VALUES ('2488', '2485', '2', '500228', '梁平县');
INSERT INTO `region` VALUES ('2489', '2485', '2', '500229', '城口县');
INSERT INTO `region` VALUES ('2490', '2485', '2', '500230', '丰都县');
INSERT INTO `region` VALUES ('2491', '2485', '2', '500231', '垫江县');
INSERT INTO `region` VALUES ('2492', '2485', '2', '500232', '武隆县');
INSERT INTO `region` VALUES ('2493', '2485', '2', '500233', '忠县');
INSERT INTO `region` VALUES ('2494', '2485', '2', '500234', '开县');
INSERT INTO `region` VALUES ('2495', '2485', '2', '500235', '云阳县');
INSERT INTO `region` VALUES ('2496', '2485', '2', '500236', '奉节县');
INSERT INTO `region` VALUES ('2497', '2485', '2', '500237', '巫山县');
INSERT INTO `region` VALUES ('2498', '2485', '2', '500238', '巫溪县');
INSERT INTO `region` VALUES ('2499', '2485', '2', '500240', '石柱土家族自治县');
INSERT INTO `region` VALUES ('2500', '2485', '2', '500241', '秀山土家族苗族自治县');
INSERT INTO `region` VALUES ('2501', '2485', '2', '500242', '酉阳土家族苗族自治县');
INSERT INTO `region` VALUES ('2502', '2485', '2', '500243', '彭水苗族土家族自治县');
INSERT INTO `region` VALUES ('2503', '0', '0', '510000', '四川省');
INSERT INTO `region` VALUES ('2504', '2503', '1', '510100', '成都市');
INSERT INTO `region` VALUES ('2505', '2504', '2', '510101', '市辖区');
INSERT INTO `region` VALUES ('2506', '2504', '2', '510104', '锦江区');
INSERT INTO `region` VALUES ('2507', '2504', '2', '510105', '青羊区');
INSERT INTO `region` VALUES ('2508', '2504', '2', '510106', '金牛区');
INSERT INTO `region` VALUES ('2509', '2504', '2', '510107', '武侯区');
INSERT INTO `region` VALUES ('2510', '2504', '2', '510108', '成华区');
INSERT INTO `region` VALUES ('2511', '2504', '2', '510112', '龙泉驿区');
INSERT INTO `region` VALUES ('2512', '2504', '2', '510113', '青白江区');
INSERT INTO `region` VALUES ('2513', '2504', '2', '510114', '新都区');
INSERT INTO `region` VALUES ('2514', '2504', '2', '510115', '温江区');
INSERT INTO `region` VALUES ('2515', '2504', '2', '510121', '金堂县');
INSERT INTO `region` VALUES ('2516', '2504', '2', '510122', '双流县');
INSERT INTO `region` VALUES ('2517', '2504', '2', '510124', '郫县');
INSERT INTO `region` VALUES ('2518', '2504', '2', '510129', '大邑县');
INSERT INTO `region` VALUES ('2519', '2504', '2', '510131', '蒲江县');
INSERT INTO `region` VALUES ('2520', '2504', '2', '510132', '新津县');
INSERT INTO `region` VALUES ('2521', '2504', '2', '510181', '都江堰市');
INSERT INTO `region` VALUES ('2522', '2504', '2', '510182', '彭州市');
INSERT INTO `region` VALUES ('2523', '2504', '2', '510183', '邛崃市');
INSERT INTO `region` VALUES ('2524', '2504', '2', '510184', '崇州市');
INSERT INTO `region` VALUES ('2525', '2503', '1', '510300', '自贡市');
INSERT INTO `region` VALUES ('2526', '2525', '2', '510301', '市辖区');
INSERT INTO `region` VALUES ('2527', '2525', '2', '510302', '自流井区');
INSERT INTO `region` VALUES ('2528', '2525', '2', '510303', '贡井区');
INSERT INTO `region` VALUES ('2529', '2525', '2', '510304', '大安区');
INSERT INTO `region` VALUES ('2530', '2525', '2', '510311', '沿滩区');
INSERT INTO `region` VALUES ('2531', '2525', '2', '510321', '荣县');
INSERT INTO `region` VALUES ('2532', '2525', '2', '510322', '富顺县');
INSERT INTO `region` VALUES ('2533', '2503', '1', '510400', '攀枝花市');
INSERT INTO `region` VALUES ('2534', '2533', '2', '510401', '市辖区');
INSERT INTO `region` VALUES ('2535', '2533', '2', '510402', '东区');
INSERT INTO `region` VALUES ('2536', '2533', '2', '510403', '西区');
INSERT INTO `region` VALUES ('2537', '2533', '2', '510411', '仁和区');
INSERT INTO `region` VALUES ('2538', '2533', '2', '510421', '米易县');
INSERT INTO `region` VALUES ('2539', '2533', '2', '510422', '盐边县');
INSERT INTO `region` VALUES ('2540', '2503', '1', '510500', '泸州市');
INSERT INTO `region` VALUES ('2541', '2540', '2', '510501', '市辖区');
INSERT INTO `region` VALUES ('2542', '2540', '2', '510502', '江阳区');
INSERT INTO `region` VALUES ('2543', '2540', '2', '510503', '纳溪区');
INSERT INTO `region` VALUES ('2544', '2540', '2', '510504', '龙马潭区');
INSERT INTO `region` VALUES ('2545', '2540', '2', '510521', '泸县');
INSERT INTO `region` VALUES ('2546', '2540', '2', '510522', '合江县');
INSERT INTO `region` VALUES ('2547', '2540', '2', '510524', '叙永县');
INSERT INTO `region` VALUES ('2548', '2540', '2', '510525', '古蔺县');
INSERT INTO `region` VALUES ('2549', '2503', '1', '510600', '德阳市');
INSERT INTO `region` VALUES ('2550', '2549', '2', '510601', '市辖区');
INSERT INTO `region` VALUES ('2551', '2549', '2', '510603', '旌阳区');
INSERT INTO `region` VALUES ('2552', '2549', '2', '510623', '中江县');
INSERT INTO `region` VALUES ('2553', '2549', '2', '510626', '罗江县');
INSERT INTO `region` VALUES ('2554', '2549', '2', '510681', '广汉市');
INSERT INTO `region` VALUES ('2555', '2549', '2', '510682', '什邡市');
INSERT INTO `region` VALUES ('2556', '2549', '2', '510683', '绵竹市');
INSERT INTO `region` VALUES ('2557', '2503', '1', '510700', '绵阳市');
INSERT INTO `region` VALUES ('2558', '2557', '2', '510701', '市辖区');
INSERT INTO `region` VALUES ('2559', '2557', '2', '510703', '涪城区');
INSERT INTO `region` VALUES ('2560', '2557', '2', '510704', '游仙区');
INSERT INTO `region` VALUES ('2561', '2557', '2', '510722', '三台县');
INSERT INTO `region` VALUES ('2562', '2557', '2', '510723', '盐亭县');
INSERT INTO `region` VALUES ('2563', '2557', '2', '510724', '安县');
INSERT INTO `region` VALUES ('2564', '2557', '2', '510725', '梓潼县');
INSERT INTO `region` VALUES ('2565', '2557', '2', '510726', '北川羌族自治县');
INSERT INTO `region` VALUES ('2566', '2557', '2', '510727', '平武县');
INSERT INTO `region` VALUES ('2567', '2557', '2', '510781', '江油市');
INSERT INTO `region` VALUES ('2568', '2503', '1', '510800', '广元市');
INSERT INTO `region` VALUES ('2569', '2568', '2', '510801', '市辖区');
INSERT INTO `region` VALUES ('2570', '2568', '2', '510802', '利州区');
INSERT INTO `region` VALUES ('2571', '2568', '2', '510811', '昭化区');
INSERT INTO `region` VALUES ('2572', '2568', '2', '510812', '朝天区');
INSERT INTO `region` VALUES ('2573', '2568', '2', '510821', '旺苍县');
INSERT INTO `region` VALUES ('2574', '2568', '2', '510822', '青川县');
INSERT INTO `region` VALUES ('2575', '2568', '2', '510823', '剑阁县');
INSERT INTO `region` VALUES ('2576', '2568', '2', '510824', '苍溪县');
INSERT INTO `region` VALUES ('2577', '2503', '1', '510900', '遂宁市');
INSERT INTO `region` VALUES ('2578', '2577', '2', '510901', '市辖区');
INSERT INTO `region` VALUES ('2579', '2577', '2', '510903', '船山区');
INSERT INTO `region` VALUES ('2580', '2577', '2', '510904', '安居区');
INSERT INTO `region` VALUES ('2581', '2577', '2', '510921', '蓬溪县');
INSERT INTO `region` VALUES ('2582', '2577', '2', '510922', '射洪县');
INSERT INTO `region` VALUES ('2583', '2577', '2', '510923', '大英县');
INSERT INTO `region` VALUES ('2584', '2503', '1', '511000', '内江市');
INSERT INTO `region` VALUES ('2585', '2584', '2', '511001', '市辖区');
INSERT INTO `region` VALUES ('2586', '2584', '2', '511002', '市中区');
INSERT INTO `region` VALUES ('2587', '2584', '2', '511011', '东兴区');
INSERT INTO `region` VALUES ('2588', '2584', '2', '511024', '威远县');
INSERT INTO `region` VALUES ('2589', '2584', '2', '511025', '资中县');
INSERT INTO `region` VALUES ('2590', '2584', '2', '511028', '隆昌县');
INSERT INTO `region` VALUES ('2591', '2503', '1', '511100', '乐山市');
INSERT INTO `region` VALUES ('2592', '2591', '2', '511101', '市辖区');
INSERT INTO `region` VALUES ('2593', '2591', '2', '511102', '市中区');
INSERT INTO `region` VALUES ('2594', '2591', '2', '511111', '沙湾区');
INSERT INTO `region` VALUES ('2595', '2591', '2', '511112', '五通桥区');
INSERT INTO `region` VALUES ('2596', '2591', '2', '511113', '金口河区');
INSERT INTO `region` VALUES ('2597', '2591', '2', '511123', '犍为县');
INSERT INTO `region` VALUES ('2598', '2591', '2', '511124', '井研县');
INSERT INTO `region` VALUES ('2599', '2591', '2', '511126', '夹江县');
INSERT INTO `region` VALUES ('2600', '2591', '2', '511129', '沐川县');
INSERT INTO `region` VALUES ('2601', '2591', '2', '511132', '峨边彝族自治县');
INSERT INTO `region` VALUES ('2602', '2591', '2', '511133', '马边彝族自治县');
INSERT INTO `region` VALUES ('2603', '2591', '2', '511181', '峨眉山市');
INSERT INTO `region` VALUES ('2604', '2503', '1', '511300', '南充市');
INSERT INTO `region` VALUES ('2605', '2604', '2', '511301', '市辖区');
INSERT INTO `region` VALUES ('2606', '2604', '2', '511302', '顺庆区');
INSERT INTO `region` VALUES ('2607', '2604', '2', '511303', '高坪区');
INSERT INTO `region` VALUES ('2608', '2604', '2', '511304', '嘉陵区');
INSERT INTO `region` VALUES ('2609', '2604', '2', '511321', '南部县');
INSERT INTO `region` VALUES ('2610', '2604', '2', '511322', '营山县');
INSERT INTO `region` VALUES ('2611', '2604', '2', '511323', '蓬安县');
INSERT INTO `region` VALUES ('2612', '2604', '2', '511324', '仪陇县');
INSERT INTO `region` VALUES ('2613', '2604', '2', '511325', '西充县');
INSERT INTO `region` VALUES ('2614', '2604', '2', '511381', '阆中市');
INSERT INTO `region` VALUES ('2615', '2503', '1', '511400', '眉山市');
INSERT INTO `region` VALUES ('2616', '2615', '2', '511401', '市辖区');
INSERT INTO `region` VALUES ('2617', '2615', '2', '511402', '东坡区');
INSERT INTO `region` VALUES ('2618', '2615', '2', '511421', '仁寿县');
INSERT INTO `region` VALUES ('2619', '2615', '2', '511422', '彭山县');
INSERT INTO `region` VALUES ('2620', '2615', '2', '511423', '洪雅县');
INSERT INTO `region` VALUES ('2621', '2615', '2', '511424', '丹棱县');
INSERT INTO `region` VALUES ('2622', '2615', '2', '511425', '青神县');
INSERT INTO `region` VALUES ('2623', '2503', '1', '511500', '宜宾市');
INSERT INTO `region` VALUES ('2624', '2623', '2', '511501', '市辖区');
INSERT INTO `region` VALUES ('2625', '2623', '2', '511502', '翠屏区');
INSERT INTO `region` VALUES ('2626', '2623', '2', '511503', '南溪区');
INSERT INTO `region` VALUES ('2627', '2623', '2', '511521', '宜宾县');
INSERT INTO `region` VALUES ('2628', '2623', '2', '511523', '江安县');
INSERT INTO `region` VALUES ('2629', '2623', '2', '511524', '长宁县');
INSERT INTO `region` VALUES ('2630', '2623', '2', '511525', '高县');
INSERT INTO `region` VALUES ('2631', '2623', '2', '511526', '珙县');
INSERT INTO `region` VALUES ('2632', '2623', '2', '511527', '筠连县');
INSERT INTO `region` VALUES ('2633', '2623', '2', '511528', '兴文县');
INSERT INTO `region` VALUES ('2634', '2623', '2', '511529', '屏山县');
INSERT INTO `region` VALUES ('2635', '2503', '1', '511600', '广安市');
INSERT INTO `region` VALUES ('2636', '2635', '2', '511601', '市辖区');
INSERT INTO `region` VALUES ('2637', '2635', '2', '511602', '广安区');
INSERT INTO `region` VALUES ('2638', '2635', '2', '511603', '前锋区');
INSERT INTO `region` VALUES ('2639', '2635', '2', '511621', '岳池县');
INSERT INTO `region` VALUES ('2640', '2635', '2', '511622', '武胜县');
INSERT INTO `region` VALUES ('2641', '2635', '2', '511623', '邻水县');
INSERT INTO `region` VALUES ('2642', '2635', '2', '511681', '华蓥市');
INSERT INTO `region` VALUES ('2643', '2503', '1', '511700', '达州市');
INSERT INTO `region` VALUES ('2644', '2643', '2', '511701', '市辖区');
INSERT INTO `region` VALUES ('2645', '2643', '2', '511702', '通川区');
INSERT INTO `region` VALUES ('2646', '2643', '2', '511703', '达川区');
INSERT INTO `region` VALUES ('2647', '2643', '2', '511722', '宣汉县');
INSERT INTO `region` VALUES ('2648', '2643', '2', '511723', '开江县');
INSERT INTO `region` VALUES ('2649', '2643', '2', '511724', '大竹县');
INSERT INTO `region` VALUES ('2650', '2643', '2', '511725', '渠县');
INSERT INTO `region` VALUES ('2651', '2643', '2', '511781', '万源市');
INSERT INTO `region` VALUES ('2652', '2503', '1', '511800', '雅安市');
INSERT INTO `region` VALUES ('2653', '2652', '2', '511801', '市辖区');
INSERT INTO `region` VALUES ('2654', '2652', '2', '511802', '雨城区');
INSERT INTO `region` VALUES ('2655', '2652', '2', '511803', '名山区');
INSERT INTO `region` VALUES ('2656', '2652', '2', '511822', '荥经县');
INSERT INTO `region` VALUES ('2657', '2652', '2', '511823', '汉源县');
INSERT INTO `region` VALUES ('2658', '2652', '2', '511824', '石棉县');
INSERT INTO `region` VALUES ('2659', '2652', '2', '511825', '天全县');
INSERT INTO `region` VALUES ('2660', '2652', '2', '511826', '芦山县');
INSERT INTO `region` VALUES ('2661', '2652', '2', '511827', '宝兴县');
INSERT INTO `region` VALUES ('2662', '2503', '1', '511900', '巴中市');
INSERT INTO `region` VALUES ('2663', '2662', '2', '511901', '市辖区');
INSERT INTO `region` VALUES ('2664', '2662', '2', '511902', '巴州区');
INSERT INTO `region` VALUES ('2665', '2662', '2', '511903', '恩阳区');
INSERT INTO `region` VALUES ('2666', '2662', '2', '511921', '通江县');
INSERT INTO `region` VALUES ('2667', '2662', '2', '511922', '南江县');
INSERT INTO `region` VALUES ('2668', '2662', '2', '511923', '平昌县');
INSERT INTO `region` VALUES ('2669', '2503', '1', '512000', '资阳市');
INSERT INTO `region` VALUES ('2670', '2669', '2', '512001', '市辖区');
INSERT INTO `region` VALUES ('2671', '2669', '2', '512002', '雁江区');
INSERT INTO `region` VALUES ('2672', '2669', '2', '512021', '安岳县');
INSERT INTO `region` VALUES ('2673', '2669', '2', '512022', '乐至县');
INSERT INTO `region` VALUES ('2674', '2669', '2', '512081', '简阳市');
INSERT INTO `region` VALUES ('2675', '2503', '1', '513200', '阿坝藏族羌族自治州');
INSERT INTO `region` VALUES ('2676', '2675', '2', '513221', '汶川县');
INSERT INTO `region` VALUES ('2677', '2675', '2', '513222', '理县');
INSERT INTO `region` VALUES ('2678', '2675', '2', '513223', '茂县');
INSERT INTO `region` VALUES ('2679', '2675', '2', '513224', '松潘县');
INSERT INTO `region` VALUES ('2680', '2675', '2', '513225', '九寨沟县');
INSERT INTO `region` VALUES ('2681', '2675', '2', '513226', '金川县');
INSERT INTO `region` VALUES ('2682', '2675', '2', '513227', '小金县');
INSERT INTO `region` VALUES ('2683', '2675', '2', '513228', '黑水县');
INSERT INTO `region` VALUES ('2684', '2675', '2', '513229', '马尔康县');
INSERT INTO `region` VALUES ('2685', '2675', '2', '513230', '壤塘县');
INSERT INTO `region` VALUES ('2686', '2675', '2', '513231', '阿坝县');
INSERT INTO `region` VALUES ('2687', '2675', '2', '513232', '若尔盖县');
INSERT INTO `region` VALUES ('2688', '2675', '2', '513233', '红原县');
INSERT INTO `region` VALUES ('2689', '2503', '1', '513300', '甘孜藏族自治州');
INSERT INTO `region` VALUES ('2690', '2689', '2', '513321', '康定县');
INSERT INTO `region` VALUES ('2691', '2689', '2', '513322', '泸定县');
INSERT INTO `region` VALUES ('2692', '2689', '2', '513323', '丹巴县');
INSERT INTO `region` VALUES ('2693', '2689', '2', '513324', '九龙县');
INSERT INTO `region` VALUES ('2694', '2689', '2', '513325', '雅江县');
INSERT INTO `region` VALUES ('2695', '2689', '2', '513326', '道孚县');
INSERT INTO `region` VALUES ('2696', '2689', '2', '513327', '炉霍县');
INSERT INTO `region` VALUES ('2697', '2689', '2', '513328', '甘孜县');
INSERT INTO `region` VALUES ('2698', '2689', '2', '513329', '新龙县');
INSERT INTO `region` VALUES ('2699', '2689', '2', '513330', '德格县');
INSERT INTO `region` VALUES ('2700', '2689', '2', '513331', '白玉县');
INSERT INTO `region` VALUES ('2701', '2689', '2', '513332', '石渠县');
INSERT INTO `region` VALUES ('2702', '2689', '2', '513333', '色达县');
INSERT INTO `region` VALUES ('2703', '2689', '2', '513334', '理塘县');
INSERT INTO `region` VALUES ('2704', '2689', '2', '513335', '巴塘县');
INSERT INTO `region` VALUES ('2705', '2689', '2', '513336', '乡城县');
INSERT INTO `region` VALUES ('2706', '2689', '2', '513337', '稻城县');
INSERT INTO `region` VALUES ('2707', '2689', '2', '513338', '得荣县');
INSERT INTO `region` VALUES ('2708', '2503', '1', '513400', '凉山彝族自治州');
INSERT INTO `region` VALUES ('2709', '2708', '2', '513401', '西昌市');
INSERT INTO `region` VALUES ('2710', '2708', '2', '513422', '木里藏族自治县');
INSERT INTO `region` VALUES ('2711', '2708', '2', '513423', '盐源县');
INSERT INTO `region` VALUES ('2712', '2708', '2', '513424', '德昌县');
INSERT INTO `region` VALUES ('2713', '2708', '2', '513425', '会理县');
INSERT INTO `region` VALUES ('2714', '2708', '2', '513426', '会东县');
INSERT INTO `region` VALUES ('2715', '2708', '2', '513427', '宁南县');
INSERT INTO `region` VALUES ('2716', '2708', '2', '513428', '普格县');
INSERT INTO `region` VALUES ('2717', '2708', '2', '513429', '布拖县');
INSERT INTO `region` VALUES ('2718', '2708', '2', '513430', '金阳县');
INSERT INTO `region` VALUES ('2719', '2708', '2', '513431', '昭觉县');
INSERT INTO `region` VALUES ('2720', '2708', '2', '513432', '喜德县');
INSERT INTO `region` VALUES ('2721', '2708', '2', '513433', '冕宁县');
INSERT INTO `region` VALUES ('2722', '2708', '2', '513434', '越西县');
INSERT INTO `region` VALUES ('2723', '2708', '2', '513435', '甘洛县');
INSERT INTO `region` VALUES ('2724', '2708', '2', '513436', '美姑县');
INSERT INTO `region` VALUES ('2725', '2708', '2', '513437', '雷波县');
INSERT INTO `region` VALUES ('2726', '0', '0', '520000', '贵州省');
INSERT INTO `region` VALUES ('2727', '2726', '1', '520100', '贵阳市');
INSERT INTO `region` VALUES ('2728', '2727', '2', '520101', '市辖区');
INSERT INTO `region` VALUES ('2729', '2727', '2', '520102', '南明区');
INSERT INTO `region` VALUES ('2730', '2727', '2', '520103', '云岩区');
INSERT INTO `region` VALUES ('2731', '2727', '2', '520111', '花溪区');
INSERT INTO `region` VALUES ('2732', '2727', '2', '520112', '乌当区');
INSERT INTO `region` VALUES ('2733', '2727', '2', '520113', '白云区');
INSERT INTO `region` VALUES ('2734', '2727', '2', '520115', '观山湖区');
INSERT INTO `region` VALUES ('2735', '2727', '2', '520121', '开阳县');
INSERT INTO `region` VALUES ('2736', '2727', '2', '520122', '息烽县');
INSERT INTO `region` VALUES ('2737', '2727', '2', '520123', '修文县');
INSERT INTO `region` VALUES ('2738', '2727', '2', '520181', '清镇市');
INSERT INTO `region` VALUES ('2739', '2726', '1', '520200', '六盘水市');
INSERT INTO `region` VALUES ('2740', '2739', '2', '520201', '钟山区');
INSERT INTO `region` VALUES ('2741', '2739', '2', '520203', '六枝特区');
INSERT INTO `region` VALUES ('2742', '2739', '2', '520221', '水城县');
INSERT INTO `region` VALUES ('2743', '2739', '2', '520222', '盘县');
INSERT INTO `region` VALUES ('2744', '2726', '1', '520300', '遵义市');
INSERT INTO `region` VALUES ('2745', '2744', '2', '520301', '市辖区');
INSERT INTO `region` VALUES ('2746', '2744', '2', '520302', '红花岗区');
INSERT INTO `region` VALUES ('2747', '2744', '2', '520303', '汇川区');
INSERT INTO `region` VALUES ('2748', '2744', '2', '520321', '遵义县');
INSERT INTO `region` VALUES ('2749', '2744', '2', '520322', '桐梓县');
INSERT INTO `region` VALUES ('2750', '2744', '2', '520323', '绥阳县');
INSERT INTO `region` VALUES ('2751', '2744', '2', '520324', '正安县');
INSERT INTO `region` VALUES ('2752', '2744', '2', '520325', '道真仡佬族苗族自治县');
INSERT INTO `region` VALUES ('2753', '2744', '2', '520326', '务川仡佬族苗族自治县');
INSERT INTO `region` VALUES ('2754', '2744', '2', '520327', '凤冈县');
INSERT INTO `region` VALUES ('2755', '2744', '2', '520328', '湄潭县');
INSERT INTO `region` VALUES ('2756', '2744', '2', '520329', '余庆县');
INSERT INTO `region` VALUES ('2757', '2744', '2', '520330', '习水县');
INSERT INTO `region` VALUES ('2758', '2744', '2', '520381', '赤水市');
INSERT INTO `region` VALUES ('2759', '2744', '2', '520382', '仁怀市');
INSERT INTO `region` VALUES ('2760', '2726', '1', '520400', '安顺市');
INSERT INTO `region` VALUES ('2761', '2760', '2', '520401', '市辖区');
INSERT INTO `region` VALUES ('2762', '2760', '2', '520402', '西秀区');
INSERT INTO `region` VALUES ('2763', '2760', '2', '520421', '平坝县');
INSERT INTO `region` VALUES ('2764', '2760', '2', '520422', '普定县');
INSERT INTO `region` VALUES ('2765', '2760', '2', '520423', '镇宁布依族苗族自治县');
INSERT INTO `region` VALUES ('2766', '2760', '2', '520424', '关岭布依族苗族自治县');
INSERT INTO `region` VALUES ('2767', '2760', '2', '520425', '紫云苗族布依族自治县');
INSERT INTO `region` VALUES ('2768', '2726', '1', '520500', '毕节市');
INSERT INTO `region` VALUES ('2769', '2768', '2', '520501', '市辖区');
INSERT INTO `region` VALUES ('2770', '2768', '2', '520502', '七星关区');
INSERT INTO `region` VALUES ('2771', '2768', '2', '520521', '大方县');
INSERT INTO `region` VALUES ('2772', '2768', '2', '520522', '黔西县');
INSERT INTO `region` VALUES ('2773', '2768', '2', '520523', '金沙县');
INSERT INTO `region` VALUES ('2774', '2768', '2', '520524', '织金县');
INSERT INTO `region` VALUES ('2775', '2768', '2', '520525', '纳雍县');
INSERT INTO `region` VALUES ('2776', '2768', '2', '520526', '威宁彝族回族苗族自治县');
INSERT INTO `region` VALUES ('2777', '2768', '2', '520527', '赫章县');
INSERT INTO `region` VALUES ('2778', '2726', '1', '520600', '铜仁市');
INSERT INTO `region` VALUES ('2779', '2778', '2', '520601', '市辖区');
INSERT INTO `region` VALUES ('2780', '2778', '2', '520602', '碧江区');
INSERT INTO `region` VALUES ('2781', '2778', '2', '520603', '万山区');
INSERT INTO `region` VALUES ('2782', '2778', '2', '520621', '江口县');
INSERT INTO `region` VALUES ('2783', '2778', '2', '520622', '玉屏侗族自治县');
INSERT INTO `region` VALUES ('2784', '2778', '2', '520623', '石阡县');
INSERT INTO `region` VALUES ('2785', '2778', '2', '520624', '思南县');
INSERT INTO `region` VALUES ('2786', '2778', '2', '520625', '印江土家族苗族自治县');
INSERT INTO `region` VALUES ('2787', '2778', '2', '520626', '德江县');
INSERT INTO `region` VALUES ('2788', '2778', '2', '520627', '沿河土家族自治县');
INSERT INTO `region` VALUES ('2789', '2778', '2', '520628', '松桃苗族自治县');
INSERT INTO `region` VALUES ('2790', '2726', '1', '522300', '黔西南布依族苗族自治州');
INSERT INTO `region` VALUES ('2791', '2790', '2', '522301', '兴义市');
INSERT INTO `region` VALUES ('2792', '2790', '2', '522322', '兴仁县');
INSERT INTO `region` VALUES ('2793', '2790', '2', '522323', '普安县');
INSERT INTO `region` VALUES ('2794', '2790', '2', '522324', '晴隆县');
INSERT INTO `region` VALUES ('2795', '2790', '2', '522325', '贞丰县');
INSERT INTO `region` VALUES ('2796', '2790', '2', '522326', '望谟县');
INSERT INTO `region` VALUES ('2797', '2790', '2', '522327', '册亨县');
INSERT INTO `region` VALUES ('2798', '2790', '2', '522328', '安龙县');
INSERT INTO `region` VALUES ('2799', '2726', '1', '522600', '黔东南苗族侗族自治州');
INSERT INTO `region` VALUES ('2800', '2799', '2', '522601', '凯里市');
INSERT INTO `region` VALUES ('2801', '2799', '2', '522622', '黄平县');
INSERT INTO `region` VALUES ('2802', '2799', '2', '522623', '施秉县');
INSERT INTO `region` VALUES ('2803', '2799', '2', '522624', '三穗县');
INSERT INTO `region` VALUES ('2804', '2799', '2', '522625', '镇远县');
INSERT INTO `region` VALUES ('2805', '2799', '2', '522626', '岑巩县');
INSERT INTO `region` VALUES ('2806', '2799', '2', '522627', '天柱县');
INSERT INTO `region` VALUES ('2807', '2799', '2', '522628', '锦屏县');
INSERT INTO `region` VALUES ('2808', '2799', '2', '522629', '剑河县');
INSERT INTO `region` VALUES ('2809', '2799', '2', '522630', '台江县');
INSERT INTO `region` VALUES ('2810', '2799', '2', '522631', '黎平县');
INSERT INTO `region` VALUES ('2811', '2799', '2', '522632', '榕江县');
INSERT INTO `region` VALUES ('2812', '2799', '2', '522633', '从江县');
INSERT INTO `region` VALUES ('2813', '2799', '2', '522634', '雷山县');
INSERT INTO `region` VALUES ('2814', '2799', '2', '522635', '麻江县');
INSERT INTO `region` VALUES ('2815', '2799', '2', '522636', '丹寨县');
INSERT INTO `region` VALUES ('2816', '2726', '1', '522700', '黔南布依族苗族自治州');
INSERT INTO `region` VALUES ('2817', '2816', '2', '522701', '都匀市');
INSERT INTO `region` VALUES ('2818', '2816', '2', '522702', '福泉市');
INSERT INTO `region` VALUES ('2819', '2816', '2', '522722', '荔波县');
INSERT INTO `region` VALUES ('2820', '2816', '2', '522723', '贵定县');
INSERT INTO `region` VALUES ('2821', '2816', '2', '522725', '瓮安县');
INSERT INTO `region` VALUES ('2822', '2816', '2', '522726', '独山县');
INSERT INTO `region` VALUES ('2823', '2816', '2', '522727', '平塘县');
INSERT INTO `region` VALUES ('2824', '2816', '2', '522728', '罗甸县');
INSERT INTO `region` VALUES ('2825', '2816', '2', '522729', '长顺县');
INSERT INTO `region` VALUES ('2826', '2816', '2', '522730', '龙里县');
INSERT INTO `region` VALUES ('2827', '2816', '2', '522731', '惠水县');
INSERT INTO `region` VALUES ('2828', '2816', '2', '522732', '三都水族自治县');
INSERT INTO `region` VALUES ('2829', '0', '0', '530000', '云南省');
INSERT INTO `region` VALUES ('2830', '2829', '1', '530100', '昆明市');
INSERT INTO `region` VALUES ('2831', '2830', '2', '530101', '市辖区');
INSERT INTO `region` VALUES ('2832', '2830', '2', '530102', '五华区');
INSERT INTO `region` VALUES ('2833', '2830', '2', '530103', '盘龙区');
INSERT INTO `region` VALUES ('2834', '2830', '2', '530111', '官渡区');
INSERT INTO `region` VALUES ('2835', '2830', '2', '530112', '西山区');
INSERT INTO `region` VALUES ('2836', '2830', '2', '530113', '东川区');
INSERT INTO `region` VALUES ('2837', '2830', '2', '530114', '呈贡区');
INSERT INTO `region` VALUES ('2838', '2830', '2', '530122', '晋宁县');
INSERT INTO `region` VALUES ('2839', '2830', '2', '530124', '富民县');
INSERT INTO `region` VALUES ('2840', '2830', '2', '530125', '宜良县');
INSERT INTO `region` VALUES ('2841', '2830', '2', '530126', '石林彝族自治县');
INSERT INTO `region` VALUES ('2842', '2830', '2', '530127', '嵩明县');
INSERT INTO `region` VALUES ('2843', '2830', '2', '530128', '禄劝彝族苗族自治县');
INSERT INTO `region` VALUES ('2844', '2830', '2', '530129', '寻甸回族彝族自治县');
INSERT INTO `region` VALUES ('2845', '2830', '2', '530181', '安宁市');
INSERT INTO `region` VALUES ('2846', '2829', '1', '530300', '曲靖市');
INSERT INTO `region` VALUES ('2847', '2846', '2', '530301', '市辖区');
INSERT INTO `region` VALUES ('2848', '2846', '2', '530302', '麒麟区');
INSERT INTO `region` VALUES ('2849', '2846', '2', '530321', '马龙县');
INSERT INTO `region` VALUES ('2850', '2846', '2', '530322', '陆良县');
INSERT INTO `region` VALUES ('2851', '2846', '2', '530323', '师宗县');
INSERT INTO `region` VALUES ('2852', '2846', '2', '530324', '罗平县');
INSERT INTO `region` VALUES ('2853', '2846', '2', '530325', '富源县');
INSERT INTO `region` VALUES ('2854', '2846', '2', '530326', '会泽县');
INSERT INTO `region` VALUES ('2855', '2846', '2', '530328', '沾益县');
INSERT INTO `region` VALUES ('2856', '2846', '2', '530381', '宣威市');
INSERT INTO `region` VALUES ('2857', '2829', '1', '530400', '玉溪市');
INSERT INTO `region` VALUES ('2858', '2857', '2', '530401', '市辖区');
INSERT INTO `region` VALUES ('2859', '2857', '2', '530402', '红塔区');
INSERT INTO `region` VALUES ('2860', '2857', '2', '530421', '江川县');
INSERT INTO `region` VALUES ('2861', '2857', '2', '530422', '澄江县');
INSERT INTO `region` VALUES ('2862', '2857', '2', '530423', '通海县');
INSERT INTO `region` VALUES ('2863', '2857', '2', '530424', '华宁县');
INSERT INTO `region` VALUES ('2864', '2857', '2', '530425', '易门县');
INSERT INTO `region` VALUES ('2865', '2857', '2', '530426', '峨山彝族自治县');
INSERT INTO `region` VALUES ('2866', '2857', '2', '530427', '新平彝族傣族自治县');
INSERT INTO `region` VALUES ('2867', '2857', '2', '530428', '元江哈尼族彝族傣族自治县');
INSERT INTO `region` VALUES ('2868', '2829', '1', '530500', '保山市');
INSERT INTO `region` VALUES ('2869', '2868', '2', '530501', '市辖区');
INSERT INTO `region` VALUES ('2870', '2868', '2', '530502', '隆阳区');
INSERT INTO `region` VALUES ('2871', '2868', '2', '530521', '施甸县');
INSERT INTO `region` VALUES ('2872', '2868', '2', '530522', '腾冲县');
INSERT INTO `region` VALUES ('2873', '2868', '2', '530523', '龙陵县');
INSERT INTO `region` VALUES ('2874', '2868', '2', '530524', '昌宁县');
INSERT INTO `region` VALUES ('2875', '2829', '1', '530600', '昭通市');
INSERT INTO `region` VALUES ('2876', '2875', '2', '530601', '市辖区');
INSERT INTO `region` VALUES ('2877', '2875', '2', '530602', '昭阳区');
INSERT INTO `region` VALUES ('2878', '2875', '2', '530621', '鲁甸县');
INSERT INTO `region` VALUES ('2879', '2875', '2', '530622', '巧家县');
INSERT INTO `region` VALUES ('2880', '2875', '2', '530623', '盐津县');
INSERT INTO `region` VALUES ('2881', '2875', '2', '530624', '大关县');
INSERT INTO `region` VALUES ('2882', '2875', '2', '530625', '永善县');
INSERT INTO `region` VALUES ('2883', '2875', '2', '530626', '绥江县');
INSERT INTO `region` VALUES ('2884', '2875', '2', '530627', '镇雄县');
INSERT INTO `region` VALUES ('2885', '2875', '2', '530628', '彝良县');
INSERT INTO `region` VALUES ('2886', '2875', '2', '530629', '威信县');
INSERT INTO `region` VALUES ('2887', '2875', '2', '530630', '水富县');
INSERT INTO `region` VALUES ('2888', '2829', '1', '530700', '丽江市');
INSERT INTO `region` VALUES ('2889', '2888', '2', '530701', '市辖区');
INSERT INTO `region` VALUES ('2890', '2888', '2', '530702', '古城区');
INSERT INTO `region` VALUES ('2891', '2888', '2', '530721', '玉龙纳西族自治县');
INSERT INTO `region` VALUES ('2892', '2888', '2', '530722', '永胜县');
INSERT INTO `region` VALUES ('2893', '2888', '2', '530723', '华坪县');
INSERT INTO `region` VALUES ('2894', '2888', '2', '530724', '宁蒗彝族自治县');
INSERT INTO `region` VALUES ('2895', '2829', '1', '530800', '普洱市');
INSERT INTO `region` VALUES ('2896', '2895', '2', '530801', '市辖区');
INSERT INTO `region` VALUES ('2897', '2895', '2', '530802', '思茅区');
INSERT INTO `region` VALUES ('2898', '2895', '2', '530821', '宁洱哈尼族彝族自治县');
INSERT INTO `region` VALUES ('2899', '2895', '2', '530822', '墨江哈尼族自治县');
INSERT INTO `region` VALUES ('2900', '2895', '2', '530823', '景东彝族自治县');
INSERT INTO `region` VALUES ('2901', '2895', '2', '530824', '景谷傣族彝族自治县');
INSERT INTO `region` VALUES ('2902', '2895', '2', '530825', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `region` VALUES ('2903', '2895', '2', '530826', '江城哈尼族彝族自治县');
INSERT INTO `region` VALUES ('2904', '2895', '2', '530827', '孟连傣族拉祜族佤族自治县');
INSERT INTO `region` VALUES ('2905', '2895', '2', '530828', '澜沧拉祜族自治县');
INSERT INTO `region` VALUES ('2906', '2895', '2', '530829', '西盟佤族自治县');
INSERT INTO `region` VALUES ('2907', '2829', '1', '530900', '临沧市');
INSERT INTO `region` VALUES ('2908', '2907', '2', '530901', '市辖区');
INSERT INTO `region` VALUES ('2909', '2907', '2', '530902', '临翔区');
INSERT INTO `region` VALUES ('2910', '2907', '2', '530921', '凤庆县');
INSERT INTO `region` VALUES ('2911', '2907', '2', '530922', '云县');
INSERT INTO `region` VALUES ('2912', '2907', '2', '530923', '永德县');
INSERT INTO `region` VALUES ('2913', '2907', '2', '530924', '镇康县');
INSERT INTO `region` VALUES ('2914', '2907', '2', '530925', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `region` VALUES ('2915', '2907', '2', '530926', '耿马傣族佤族自治县');
INSERT INTO `region` VALUES ('2916', '2907', '2', '530927', '沧源佤族自治县');
INSERT INTO `region` VALUES ('2917', '2829', '1', '532300', '楚雄彝族自治州');
INSERT INTO `region` VALUES ('2918', '2917', '2', '532301', '楚雄市');
INSERT INTO `region` VALUES ('2919', '2917', '2', '532322', '双柏县');
INSERT INTO `region` VALUES ('2920', '2917', '2', '532323', '牟定县');
INSERT INTO `region` VALUES ('2921', '2917', '2', '532324', '南华县');
INSERT INTO `region` VALUES ('2922', '2917', '2', '532325', '姚安县');
INSERT INTO `region` VALUES ('2923', '2917', '2', '532326', '大姚县');
INSERT INTO `region` VALUES ('2924', '2917', '2', '532327', '永仁县');
INSERT INTO `region` VALUES ('2925', '2917', '2', '532328', '元谋县');
INSERT INTO `region` VALUES ('2926', '2917', '2', '532329', '武定县');
INSERT INTO `region` VALUES ('2927', '2917', '2', '532331', '禄丰县');
INSERT INTO `region` VALUES ('2928', '2829', '1', '532500', '红河哈尼族彝族自治州');
INSERT INTO `region` VALUES ('2929', '2928', '2', '532501', '个旧市');
INSERT INTO `region` VALUES ('2930', '2928', '2', '532502', '开远市');
INSERT INTO `region` VALUES ('2931', '2928', '2', '532503', '蒙自市');
INSERT INTO `region` VALUES ('2932', '2928', '2', '532504', '弥勒市');
INSERT INTO `region` VALUES ('2933', '2928', '2', '532523', '屏边苗族自治县');
INSERT INTO `region` VALUES ('2934', '2928', '2', '532524', '建水县');
INSERT INTO `region` VALUES ('2935', '2928', '2', '532525', '石屏县');
INSERT INTO `region` VALUES ('2936', '2928', '2', '532527', '泸西县');
INSERT INTO `region` VALUES ('2937', '2928', '2', '532528', '元阳县');
INSERT INTO `region` VALUES ('2938', '2928', '2', '532529', '红河县');
INSERT INTO `region` VALUES ('2939', '2928', '2', '532530', '金平苗族瑶族傣族自治县');
INSERT INTO `region` VALUES ('2940', '2928', '2', '532531', '绿春县');
INSERT INTO `region` VALUES ('2941', '2928', '2', '532532', '河口瑶族自治县');
INSERT INTO `region` VALUES ('2942', '2829', '1', '532600', '文山壮族苗族自治州');
INSERT INTO `region` VALUES ('2943', '2942', '2', '532601', '文山市');
INSERT INTO `region` VALUES ('2944', '2942', '2', '532622', '砚山县');
INSERT INTO `region` VALUES ('2945', '2942', '2', '532623', '西畴县');
INSERT INTO `region` VALUES ('2946', '2942', '2', '532624', '麻栗坡县');
INSERT INTO `region` VALUES ('2947', '2942', '2', '532625', '马关县');
INSERT INTO `region` VALUES ('2948', '2942', '2', '532626', '丘北县');
INSERT INTO `region` VALUES ('2949', '2942', '2', '532627', '广南县');
INSERT INTO `region` VALUES ('2950', '2942', '2', '532628', '富宁县');
INSERT INTO `region` VALUES ('2951', '2829', '1', '532800', '西双版纳傣族自治州');
INSERT INTO `region` VALUES ('2952', '2951', '2', '532801', '景洪市');
INSERT INTO `region` VALUES ('2953', '2951', '2', '532822', '勐海县');
INSERT INTO `region` VALUES ('2954', '2951', '2', '532823', '勐腊县');
INSERT INTO `region` VALUES ('2955', '2829', '1', '532900', '大理白族自治州');
INSERT INTO `region` VALUES ('2956', '2955', '2', '532901', '大理市');
INSERT INTO `region` VALUES ('2957', '2955', '2', '532922', '漾濞彝族自治县');
INSERT INTO `region` VALUES ('2958', '2955', '2', '532923', '祥云县');
INSERT INTO `region` VALUES ('2959', '2955', '2', '532924', '宾川县');
INSERT INTO `region` VALUES ('2960', '2955', '2', '532925', '弥渡县');
INSERT INTO `region` VALUES ('2961', '2955', '2', '532926', '南涧彝族自治县');
INSERT INTO `region` VALUES ('2962', '2955', '2', '532927', '巍山彝族回族自治县');
INSERT INTO `region` VALUES ('2963', '2955', '2', '532928', '永平县');
INSERT INTO `region` VALUES ('2964', '2955', '2', '532929', '云龙县');
INSERT INTO `region` VALUES ('2965', '2955', '2', '532930', '洱源县');
INSERT INTO `region` VALUES ('2966', '2955', '2', '532931', '剑川县');
INSERT INTO `region` VALUES ('2967', '2955', '2', '532932', '鹤庆县');
INSERT INTO `region` VALUES ('2968', '2829', '1', '533100', '德宏傣族景颇族自治州');
INSERT INTO `region` VALUES ('2969', '2968', '2', '533102', '瑞丽市');
INSERT INTO `region` VALUES ('2970', '2968', '2', '533103', '芒市');
INSERT INTO `region` VALUES ('2971', '2968', '2', '533122', '梁河县');
INSERT INTO `region` VALUES ('2972', '2968', '2', '533123', '盈江县');
INSERT INTO `region` VALUES ('2973', '2968', '2', '533124', '陇川县');
INSERT INTO `region` VALUES ('2974', '2829', '1', '533300', '怒江傈僳族自治州');
INSERT INTO `region` VALUES ('2975', '2974', '2', '533321', '泸水县');
INSERT INTO `region` VALUES ('2976', '2974', '2', '533323', '福贡县');
INSERT INTO `region` VALUES ('2977', '2974', '2', '533324', '贡山独龙族怒族自治县');
INSERT INTO `region` VALUES ('2978', '2974', '2', '533325', '兰坪白族普米族自治县');
INSERT INTO `region` VALUES ('2979', '2829', '1', '533400', '迪庆藏族自治州');
INSERT INTO `region` VALUES ('2980', '2979', '2', '533421', '香格里拉县');
INSERT INTO `region` VALUES ('2981', '2979', '2', '533422', '德钦县');
INSERT INTO `region` VALUES ('2982', '2979', '2', '533423', '维西傈僳族自治县');
INSERT INTO `region` VALUES ('2983', '0', '0', '540000', '西藏自治区');
INSERT INTO `region` VALUES ('2984', '2983', '1', '540100', '拉萨市');
INSERT INTO `region` VALUES ('2985', '2984', '2', '540101', '市辖区');
INSERT INTO `region` VALUES ('2986', '2984', '2', '540102', '城关区');
INSERT INTO `region` VALUES ('2987', '2984', '2', '540121', '林周县');
INSERT INTO `region` VALUES ('2988', '2984', '2', '540122', '当雄县');
INSERT INTO `region` VALUES ('2989', '2984', '2', '540123', '尼木县');
INSERT INTO `region` VALUES ('2990', '2984', '2', '540124', '曲水县');
INSERT INTO `region` VALUES ('2991', '2984', '2', '540125', '堆龙德庆县');
INSERT INTO `region` VALUES ('2992', '2984', '2', '540126', '达孜县');
INSERT INTO `region` VALUES ('2993', '2984', '2', '540127', '墨竹工卡县');
INSERT INTO `region` VALUES ('2994', '2983', '1', '540200', '日喀则市');
INSERT INTO `region` VALUES ('2995', '2994', '2', '540202', '桑珠孜区');
INSERT INTO `region` VALUES ('2996', '2994', '2', '540221', '南木林县');
INSERT INTO `region` VALUES ('2997', '2994', '2', '540222', '江孜县');
INSERT INTO `region` VALUES ('2998', '2994', '2', '540223', '定日县');
INSERT INTO `region` VALUES ('2999', '2994', '2', '540224', '萨迦县');
INSERT INTO `region` VALUES ('3000', '2994', '2', '540225', '拉孜县');
INSERT INTO `region` VALUES ('3001', '2994', '2', '540226', '昂仁县');
INSERT INTO `region` VALUES ('3002', '2994', '2', '540227', '谢通门县');
INSERT INTO `region` VALUES ('3003', '2994', '2', '540228', '白朗县');
INSERT INTO `region` VALUES ('3004', '2994', '2', '540229', '仁布县');
INSERT INTO `region` VALUES ('3005', '2994', '2', '540230', '康马县');
INSERT INTO `region` VALUES ('3006', '2994', '2', '540231', '定结县');
INSERT INTO `region` VALUES ('3007', '2994', '2', '540232', '仲巴县');
INSERT INTO `region` VALUES ('3008', '2994', '2', '540233', '亚东县');
INSERT INTO `region` VALUES ('3009', '2994', '2', '540234', '吉隆县');
INSERT INTO `region` VALUES ('3010', '2994', '2', '540235', '聂拉木县');
INSERT INTO `region` VALUES ('3011', '2994', '2', '540236', '萨嘎县');
INSERT INTO `region` VALUES ('3012', '2994', '2', '540237', '岗巴县');
INSERT INTO `region` VALUES ('3013', '2983', '1', '542100', '昌都地区');
INSERT INTO `region` VALUES ('3014', '3013', '2', '542121', '昌都县');
INSERT INTO `region` VALUES ('3015', '3013', '2', '542122', '江达县');
INSERT INTO `region` VALUES ('3016', '3013', '2', '542123', '贡觉县');
INSERT INTO `region` VALUES ('3017', '3013', '2', '542124', '类乌齐县');
INSERT INTO `region` VALUES ('3018', '3013', '2', '542125', '丁青县');
INSERT INTO `region` VALUES ('3019', '3013', '2', '542126', '察雅县');
INSERT INTO `region` VALUES ('3020', '3013', '2', '542127', '八宿县');
INSERT INTO `region` VALUES ('3021', '3013', '2', '542128', '左贡县');
INSERT INTO `region` VALUES ('3022', '3013', '2', '542129', '芒康县');
INSERT INTO `region` VALUES ('3023', '3013', '2', '542132', '洛隆县');
INSERT INTO `region` VALUES ('3024', '3013', '2', '542133', '边坝县');
INSERT INTO `region` VALUES ('3025', '2983', '1', '542200', '山南地区');
INSERT INTO `region` VALUES ('3026', '3025', '2', '542221', '乃东县');
INSERT INTO `region` VALUES ('3027', '3025', '2', '542222', '扎囊县');
INSERT INTO `region` VALUES ('3028', '3025', '2', '542223', '贡嘎县');
INSERT INTO `region` VALUES ('3029', '3025', '2', '542224', '桑日县');
INSERT INTO `region` VALUES ('3030', '3025', '2', '542225', '琼结县');
INSERT INTO `region` VALUES ('3031', '3025', '2', '542226', '曲松县');
INSERT INTO `region` VALUES ('3032', '3025', '2', '542227', '措美县');
INSERT INTO `region` VALUES ('3033', '3025', '2', '542228', '洛扎县');
INSERT INTO `region` VALUES ('3034', '3025', '2', '542229', '加查县');
INSERT INTO `region` VALUES ('3035', '3025', '2', '542231', '隆子县');
INSERT INTO `region` VALUES ('3036', '3025', '2', '542232', '错那县');
INSERT INTO `region` VALUES ('3037', '3025', '2', '542233', '浪卡子县');
INSERT INTO `region` VALUES ('3038', '2983', '1', '542400', '那曲地区');
INSERT INTO `region` VALUES ('3039', '3038', '2', '542421', '那曲县');
INSERT INTO `region` VALUES ('3040', '3038', '2', '542422', '嘉黎县');
INSERT INTO `region` VALUES ('3041', '3038', '2', '542423', '比如县');
INSERT INTO `region` VALUES ('3042', '3038', '2', '542424', '聂荣县');
INSERT INTO `region` VALUES ('3043', '3038', '2', '542425', '安多县');
INSERT INTO `region` VALUES ('3044', '3038', '2', '542426', '申扎县');
INSERT INTO `region` VALUES ('3045', '3038', '2', '542427', '索县');
INSERT INTO `region` VALUES ('3046', '3038', '2', '542428', '班戈县');
INSERT INTO `region` VALUES ('3047', '3038', '2', '542429', '巴青县');
INSERT INTO `region` VALUES ('3048', '3038', '2', '542430', '尼玛县');
INSERT INTO `region` VALUES ('3049', '3038', '2', '542431', '双湖县');
INSERT INTO `region` VALUES ('3050', '2983', '1', '542500', '阿里地区');
INSERT INTO `region` VALUES ('3051', '3050', '2', '542521', '普兰县');
INSERT INTO `region` VALUES ('3052', '3050', '2', '542522', '札达县');
INSERT INTO `region` VALUES ('3053', '3050', '2', '542523', '噶尔县');
INSERT INTO `region` VALUES ('3054', '3050', '2', '542524', '日土县');
INSERT INTO `region` VALUES ('3055', '3050', '2', '542525', '革吉县');
INSERT INTO `region` VALUES ('3056', '3050', '2', '542526', '改则县');
INSERT INTO `region` VALUES ('3057', '3050', '2', '542527', '措勤县');
INSERT INTO `region` VALUES ('3058', '2983', '1', '542600', '林芝地区');
INSERT INTO `region` VALUES ('3059', '3058', '2', '542621', '林芝县');
INSERT INTO `region` VALUES ('3060', '3058', '2', '542622', '工布江达县');
INSERT INTO `region` VALUES ('3061', '3058', '2', '542623', '米林县');
INSERT INTO `region` VALUES ('3062', '3058', '2', '542624', '墨脱县');
INSERT INTO `region` VALUES ('3063', '3058', '2', '542625', '波密县');
INSERT INTO `region` VALUES ('3064', '3058', '2', '542626', '察隅县');
INSERT INTO `region` VALUES ('3065', '3058', '2', '542627', '朗县');
INSERT INTO `region` VALUES ('3066', '0', '0', '610000', '陕西省');
INSERT INTO `region` VALUES ('3067', '3066', '1', '610100', '西安市');
INSERT INTO `region` VALUES ('3068', '3067', '2', '610101', '市辖区');
INSERT INTO `region` VALUES ('3069', '3067', '2', '610102', '新城区');
INSERT INTO `region` VALUES ('3070', '3067', '2', '610103', '碑林区');
INSERT INTO `region` VALUES ('3071', '3067', '2', '610104', '莲湖区');
INSERT INTO `region` VALUES ('3072', '3067', '2', '610111', '灞桥区');
INSERT INTO `region` VALUES ('3073', '3067', '2', '610112', '未央区');
INSERT INTO `region` VALUES ('3074', '3067', '2', '610113', '雁塔区');
INSERT INTO `region` VALUES ('3075', '3067', '2', '610114', '阎良区');
INSERT INTO `region` VALUES ('3076', '3067', '2', '610115', '临潼区');
INSERT INTO `region` VALUES ('3077', '3067', '2', '610116', '长安区');
INSERT INTO `region` VALUES ('3078', '3067', '2', '610122', '蓝田县');
INSERT INTO `region` VALUES ('3079', '3067', '2', '610124', '周至县');
INSERT INTO `region` VALUES ('3080', '3067', '2', '610125', '户县');
INSERT INTO `region` VALUES ('3081', '3067', '2', '610126', '高陵县');
INSERT INTO `region` VALUES ('3082', '3066', '1', '610200', '铜川市');
INSERT INTO `region` VALUES ('3083', '3082', '2', '610201', '市辖区');
INSERT INTO `region` VALUES ('3084', '3082', '2', '610202', '王益区');
INSERT INTO `region` VALUES ('3085', '3082', '2', '610203', '印台区');
INSERT INTO `region` VALUES ('3086', '3082', '2', '610204', '耀州区');
INSERT INTO `region` VALUES ('3087', '3082', '2', '610222', '宜君县');
INSERT INTO `region` VALUES ('3088', '3066', '1', '610300', '宝鸡市');
INSERT INTO `region` VALUES ('3089', '3088', '2', '610301', '市辖区');
INSERT INTO `region` VALUES ('3090', '3088', '2', '610302', '渭滨区');
INSERT INTO `region` VALUES ('3091', '3088', '2', '610303', '金台区');
INSERT INTO `region` VALUES ('3092', '3088', '2', '610304', '陈仓区');
INSERT INTO `region` VALUES ('3093', '3088', '2', '610322', '凤翔县');
INSERT INTO `region` VALUES ('3094', '3088', '2', '610323', '岐山县');
INSERT INTO `region` VALUES ('3095', '3088', '2', '610324', '扶风县');
INSERT INTO `region` VALUES ('3096', '3088', '2', '610326', '眉县');
INSERT INTO `region` VALUES ('3097', '3088', '2', '610327', '陇县');
INSERT INTO `region` VALUES ('3098', '3088', '2', '610328', '千阳县');
INSERT INTO `region` VALUES ('3099', '3088', '2', '610329', '麟游县');
INSERT INTO `region` VALUES ('3100', '3088', '2', '610330', '凤县');
INSERT INTO `region` VALUES ('3101', '3088', '2', '610331', '太白县');
INSERT INTO `region` VALUES ('3102', '3066', '1', '610400', '咸阳市');
INSERT INTO `region` VALUES ('3103', '3102', '2', '610401', '市辖区');
INSERT INTO `region` VALUES ('3104', '3102', '2', '610402', '秦都区');
INSERT INTO `region` VALUES ('3105', '3102', '2', '610403', '杨陵区');
INSERT INTO `region` VALUES ('3106', '3102', '2', '610404', '渭城区');
INSERT INTO `region` VALUES ('3107', '3102', '2', '610422', '三原县');
INSERT INTO `region` VALUES ('3108', '3102', '2', '610423', '泾阳县');
INSERT INTO `region` VALUES ('3109', '3102', '2', '610424', '乾县');
INSERT INTO `region` VALUES ('3110', '3102', '2', '610425', '礼泉县');
INSERT INTO `region` VALUES ('3111', '3102', '2', '610426', '永寿县');
INSERT INTO `region` VALUES ('3112', '3102', '2', '610427', '彬县');
INSERT INTO `region` VALUES ('3113', '3102', '2', '610428', '长武县');
INSERT INTO `region` VALUES ('3114', '3102', '2', '610429', '旬邑县');
INSERT INTO `region` VALUES ('3115', '3102', '2', '610430', '淳化县');
INSERT INTO `region` VALUES ('3116', '3102', '2', '610431', '武功县');
INSERT INTO `region` VALUES ('3117', '3102', '2', '610481', '兴平市');
INSERT INTO `region` VALUES ('3118', '3066', '1', '610500', '渭南市');
INSERT INTO `region` VALUES ('3119', '3118', '2', '610501', '市辖区');
INSERT INTO `region` VALUES ('3120', '3118', '2', '610502', '临渭区');
INSERT INTO `region` VALUES ('3121', '3118', '2', '610521', '华县');
INSERT INTO `region` VALUES ('3122', '3118', '2', '610522', '潼关县');
INSERT INTO `region` VALUES ('3123', '3118', '2', '610523', '大荔县');
INSERT INTO `region` VALUES ('3124', '3118', '2', '610524', '合阳县');
INSERT INTO `region` VALUES ('3125', '3118', '2', '610525', '澄城县');
INSERT INTO `region` VALUES ('3126', '3118', '2', '610526', '蒲城县');
INSERT INTO `region` VALUES ('3127', '3118', '2', '610527', '白水县');
INSERT INTO `region` VALUES ('3128', '3118', '2', '610528', '富平县');
INSERT INTO `region` VALUES ('3129', '3118', '2', '610581', '韩城市');
INSERT INTO `region` VALUES ('3130', '3118', '2', '610582', '华阴市');
INSERT INTO `region` VALUES ('3131', '3066', '1', '610600', '延安市');
INSERT INTO `region` VALUES ('3132', '3131', '2', '610601', '市辖区');
INSERT INTO `region` VALUES ('3133', '3131', '2', '610602', '宝塔区');
INSERT INTO `region` VALUES ('3134', '3131', '2', '610621', '延长县');
INSERT INTO `region` VALUES ('3135', '3131', '2', '610622', '延川县');
INSERT INTO `region` VALUES ('3136', '3131', '2', '610623', '子长县');
INSERT INTO `region` VALUES ('3137', '3131', '2', '610624', '安塞县');
INSERT INTO `region` VALUES ('3138', '3131', '2', '610625', '志丹县');
INSERT INTO `region` VALUES ('3139', '3131', '2', '610626', '吴起县');
INSERT INTO `region` VALUES ('3140', '3131', '2', '610627', '甘泉县');
INSERT INTO `region` VALUES ('3141', '3131', '2', '610628', '富县');
INSERT INTO `region` VALUES ('3142', '3131', '2', '610629', '洛川县');
INSERT INTO `region` VALUES ('3143', '3131', '2', '610630', '宜川县');
INSERT INTO `region` VALUES ('3144', '3131', '2', '610631', '黄龙县');
INSERT INTO `region` VALUES ('3145', '3131', '2', '610632', '黄陵县');
INSERT INTO `region` VALUES ('3146', '3066', '1', '610700', '汉中市');
INSERT INTO `region` VALUES ('3147', '3146', '2', '610701', '市辖区');
INSERT INTO `region` VALUES ('3148', '3146', '2', '610702', '汉台区');
INSERT INTO `region` VALUES ('3149', '3146', '2', '610721', '南郑县');
INSERT INTO `region` VALUES ('3150', '3146', '2', '610722', '城固县');
INSERT INTO `region` VALUES ('3151', '3146', '2', '610723', '洋县');
INSERT INTO `region` VALUES ('3152', '3146', '2', '610724', '西乡县');
INSERT INTO `region` VALUES ('3153', '3146', '2', '610725', '勉县');
INSERT INTO `region` VALUES ('3154', '3146', '2', '610726', '宁强县');
INSERT INTO `region` VALUES ('3155', '3146', '2', '610727', '略阳县');
INSERT INTO `region` VALUES ('3156', '3146', '2', '610728', '镇巴县');
INSERT INTO `region` VALUES ('3157', '3146', '2', '610729', '留坝县');
INSERT INTO `region` VALUES ('3158', '3146', '2', '610730', '佛坪县');
INSERT INTO `region` VALUES ('3159', '3066', '1', '610800', '榆林市');
INSERT INTO `region` VALUES ('3160', '3159', '2', '610801', '市辖区');
INSERT INTO `region` VALUES ('3161', '3159', '2', '610802', '榆阳区');
INSERT INTO `region` VALUES ('3162', '3159', '2', '610821', '神木县');
INSERT INTO `region` VALUES ('3163', '3159', '2', '610822', '府谷县');
INSERT INTO `region` VALUES ('3164', '3159', '2', '610823', '横山县');
INSERT INTO `region` VALUES ('3165', '3159', '2', '610824', '靖边县');
INSERT INTO `region` VALUES ('3166', '3159', '2', '610825', '定边县');
INSERT INTO `region` VALUES ('3167', '3159', '2', '610826', '绥德县');
INSERT INTO `region` VALUES ('3168', '3159', '2', '610827', '米脂县');
INSERT INTO `region` VALUES ('3169', '3159', '2', '610828', '佳县');
INSERT INTO `region` VALUES ('3170', '3159', '2', '610829', '吴堡县');
INSERT INTO `region` VALUES ('3171', '3159', '2', '610830', '清涧县');
INSERT INTO `region` VALUES ('3172', '3159', '2', '610831', '子洲县');
INSERT INTO `region` VALUES ('3173', '3066', '1', '610900', '安康市');
INSERT INTO `region` VALUES ('3174', '3173', '2', '610901', '市辖区');
INSERT INTO `region` VALUES ('3175', '3173', '2', '610902', '汉滨区');
INSERT INTO `region` VALUES ('3176', '3173', '2', '610921', '汉阴县');
INSERT INTO `region` VALUES ('3177', '3173', '2', '610922', '石泉县');
INSERT INTO `region` VALUES ('3178', '3173', '2', '610923', '宁陕县');
INSERT INTO `region` VALUES ('3179', '3173', '2', '610924', '紫阳县');
INSERT INTO `region` VALUES ('3180', '3173', '2', '610925', '岚皋县');
INSERT INTO `region` VALUES ('3181', '3173', '2', '610926', '平利县');
INSERT INTO `region` VALUES ('3182', '3173', '2', '610927', '镇坪县');
INSERT INTO `region` VALUES ('3183', '3173', '2', '610928', '旬阳县');
INSERT INTO `region` VALUES ('3184', '3173', '2', '610929', '白河县');
INSERT INTO `region` VALUES ('3185', '3066', '1', '611000', '商洛市');
INSERT INTO `region` VALUES ('3186', '3185', '2', '611001', '市辖区');
INSERT INTO `region` VALUES ('3187', '3185', '2', '611002', '商州区');
INSERT INTO `region` VALUES ('3188', '3185', '2', '611021', '洛南县');
INSERT INTO `region` VALUES ('3189', '3185', '2', '611022', '丹凤县');
INSERT INTO `region` VALUES ('3190', '3185', '2', '611023', '商南县');
INSERT INTO `region` VALUES ('3191', '3185', '2', '611024', '山阳县');
INSERT INTO `region` VALUES ('3192', '3185', '2', '611025', '镇安县');
INSERT INTO `region` VALUES ('3193', '3185', '2', '611026', '柞水县');
INSERT INTO `region` VALUES ('3194', '0', '0', '620000', '甘肃省');
INSERT INTO `region` VALUES ('3195', '3194', '1', '620100', '兰州市');
INSERT INTO `region` VALUES ('3196', '3195', '2', '620101', '市辖区');
INSERT INTO `region` VALUES ('3197', '3195', '2', '620102', '城关区');
INSERT INTO `region` VALUES ('3198', '3195', '2', '620103', '七里河区');
INSERT INTO `region` VALUES ('3199', '3195', '2', '620104', '西固区');
INSERT INTO `region` VALUES ('3200', '3195', '2', '620105', '安宁区');
INSERT INTO `region` VALUES ('3201', '3195', '2', '620111', '红古区');
INSERT INTO `region` VALUES ('3202', '3195', '2', '620121', '永登县');
INSERT INTO `region` VALUES ('3203', '3195', '2', '620122', '皋兰县');
INSERT INTO `region` VALUES ('3204', '3195', '2', '620123', '榆中县');
INSERT INTO `region` VALUES ('3205', '3194', '1', '620200', '嘉峪关市');
INSERT INTO `region` VALUES ('3206', '3205', '2', '620201', '市辖区');
INSERT INTO `region` VALUES ('3207', '3194', '1', '620300', '金昌市');
INSERT INTO `region` VALUES ('3208', '3207', '2', '620301', '市辖区');
INSERT INTO `region` VALUES ('3209', '3207', '2', '620302', '金川区');
INSERT INTO `region` VALUES ('3210', '3207', '2', '620321', '永昌县');
INSERT INTO `region` VALUES ('3211', '3194', '1', '620400', '白银市');
INSERT INTO `region` VALUES ('3212', '3211', '2', '620401', '市辖区');
INSERT INTO `region` VALUES ('3213', '3211', '2', '620402', '白银区');
INSERT INTO `region` VALUES ('3214', '3211', '2', '620403', '平川区');
INSERT INTO `region` VALUES ('3215', '3211', '2', '620421', '靖远县');
INSERT INTO `region` VALUES ('3216', '3211', '2', '620422', '会宁县');
INSERT INTO `region` VALUES ('3217', '3211', '2', '620423', '景泰县');
INSERT INTO `region` VALUES ('3218', '3194', '1', '620500', '天水市');
INSERT INTO `region` VALUES ('3219', '3218', '2', '620501', '市辖区');
INSERT INTO `region` VALUES ('3220', '3218', '2', '620502', '秦州区');
INSERT INTO `region` VALUES ('3221', '3218', '2', '620503', '麦积区');
INSERT INTO `region` VALUES ('3222', '3218', '2', '620521', '清水县');
INSERT INTO `region` VALUES ('3223', '3218', '2', '620522', '秦安县');
INSERT INTO `region` VALUES ('3224', '3218', '2', '620523', '甘谷县');
INSERT INTO `region` VALUES ('3225', '3218', '2', '620524', '武山县');
INSERT INTO `region` VALUES ('3226', '3218', '2', '620525', '张家川回族自治县');
INSERT INTO `region` VALUES ('3227', '3194', '1', '620600', '武威市');
INSERT INTO `region` VALUES ('3228', '3227', '2', '620601', '市辖区');
INSERT INTO `region` VALUES ('3229', '3227', '2', '620602', '凉州区');
INSERT INTO `region` VALUES ('3230', '3227', '2', '620621', '民勤县');
INSERT INTO `region` VALUES ('3231', '3227', '2', '620622', '古浪县');
INSERT INTO `region` VALUES ('3232', '3227', '2', '620623', '天祝藏族自治县');
INSERT INTO `region` VALUES ('3233', '3194', '1', '620700', '张掖市');
INSERT INTO `region` VALUES ('3234', '3233', '2', '620701', '市辖区');
INSERT INTO `region` VALUES ('3235', '3233', '2', '620702', '甘州区');
INSERT INTO `region` VALUES ('3236', '3233', '2', '620721', '肃南裕固族自治县');
INSERT INTO `region` VALUES ('3237', '3233', '2', '620722', '民乐县');
INSERT INTO `region` VALUES ('3238', '3233', '2', '620723', '临泽县');
INSERT INTO `region` VALUES ('3239', '3233', '2', '620724', '高台县');
INSERT INTO `region` VALUES ('3240', '3233', '2', '620725', '山丹县');
INSERT INTO `region` VALUES ('3241', '3194', '1', '620800', '平凉市');
INSERT INTO `region` VALUES ('3242', '3241', '2', '620801', '市辖区');
INSERT INTO `region` VALUES ('3243', '3241', '2', '620802', '崆峒区');
INSERT INTO `region` VALUES ('3244', '3241', '2', '620821', '泾川县');
INSERT INTO `region` VALUES ('3245', '3241', '2', '620822', '灵台县');
INSERT INTO `region` VALUES ('3246', '3241', '2', '620823', '崇信县');
INSERT INTO `region` VALUES ('3247', '3241', '2', '620824', '华亭县');
INSERT INTO `region` VALUES ('3248', '3241', '2', '620825', '庄浪县');
INSERT INTO `region` VALUES ('3249', '3241', '2', '620826', '静宁县');
INSERT INTO `region` VALUES ('3250', '3194', '1', '620900', '酒泉市');
INSERT INTO `region` VALUES ('3251', '3250', '2', '620901', '市辖区');
INSERT INTO `region` VALUES ('3252', '3250', '2', '620902', '肃州区');
INSERT INTO `region` VALUES ('3253', '3250', '2', '620921', '金塔县');
INSERT INTO `region` VALUES ('3254', '3250', '2', '620922', '瓜州县');
INSERT INTO `region` VALUES ('3255', '3250', '2', '620923', '肃北蒙古族自治县');
INSERT INTO `region` VALUES ('3256', '3250', '2', '620924', '阿克塞哈萨克族自治县');
INSERT INTO `region` VALUES ('3257', '3250', '2', '620981', '玉门市');
INSERT INTO `region` VALUES ('3258', '3250', '2', '620982', '敦煌市');
INSERT INTO `region` VALUES ('3259', '3194', '1', '621000', '庆阳市');
INSERT INTO `region` VALUES ('3260', '3259', '2', '621001', '市辖区');
INSERT INTO `region` VALUES ('3261', '3259', '2', '621002', '西峰区');
INSERT INTO `region` VALUES ('3262', '3259', '2', '621021', '庆城县');
INSERT INTO `region` VALUES ('3263', '3259', '2', '621022', '环县');
INSERT INTO `region` VALUES ('3264', '3259', '2', '621023', '华池县');
INSERT INTO `region` VALUES ('3265', '3259', '2', '621024', '合水县');
INSERT INTO `region` VALUES ('3266', '3259', '2', '621025', '正宁县');
INSERT INTO `region` VALUES ('3267', '3259', '2', '621026', '宁县');
INSERT INTO `region` VALUES ('3268', '3259', '2', '621027', '镇原县');
INSERT INTO `region` VALUES ('3269', '3194', '1', '621100', '定西市');
INSERT INTO `region` VALUES ('3270', '3269', '2', '621101', '市辖区');
INSERT INTO `region` VALUES ('3271', '3269', '2', '621102', '安定区');
INSERT INTO `region` VALUES ('3272', '3269', '2', '621121', '通渭县');
INSERT INTO `region` VALUES ('3273', '3269', '2', '621122', '陇西县');
INSERT INTO `region` VALUES ('3274', '3269', '2', '621123', '渭源县');
INSERT INTO `region` VALUES ('3275', '3269', '2', '621124', '临洮县');
INSERT INTO `region` VALUES ('3276', '3269', '2', '621125', '漳县');
INSERT INTO `region` VALUES ('3277', '3269', '2', '621126', '岷县');
INSERT INTO `region` VALUES ('3278', '3194', '1', '621200', '陇南市');
INSERT INTO `region` VALUES ('3279', '3278', '2', '621201', '市辖区');
INSERT INTO `region` VALUES ('3280', '3278', '2', '621202', '武都区');
INSERT INTO `region` VALUES ('3281', '3278', '2', '621221', '成县');
INSERT INTO `region` VALUES ('3282', '3278', '2', '621222', '文县');
INSERT INTO `region` VALUES ('3283', '3278', '2', '621223', '宕昌县');
INSERT INTO `region` VALUES ('3284', '3278', '2', '621224', '康县');
INSERT INTO `region` VALUES ('3285', '3278', '2', '621225', '西和县');
INSERT INTO `region` VALUES ('3286', '3278', '2', '621226', '礼县');
INSERT INTO `region` VALUES ('3287', '3278', '2', '621227', '徽县');
INSERT INTO `region` VALUES ('3288', '3278', '2', '621228', '两当县');
INSERT INTO `region` VALUES ('3289', '3194', '1', '622900', '临夏回族自治州');
INSERT INTO `region` VALUES ('3290', '3289', '2', '622901', '临夏市');
INSERT INTO `region` VALUES ('3291', '3289', '2', '622921', '临夏县');
INSERT INTO `region` VALUES ('3292', '3289', '2', '622922', '康乐县');
INSERT INTO `region` VALUES ('3293', '3289', '2', '622923', '永靖县');
INSERT INTO `region` VALUES ('3294', '3289', '2', '622924', '广河县');
INSERT INTO `region` VALUES ('3295', '3289', '2', '622925', '和政县');
INSERT INTO `region` VALUES ('3296', '3289', '2', '622926', '东乡族自治县');
INSERT INTO `region` VALUES ('3297', '3289', '2', '622927', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `region` VALUES ('3298', '3194', '1', '623000', '甘南藏族自治州');
INSERT INTO `region` VALUES ('3299', '3298', '2', '623001', '合作市');
INSERT INTO `region` VALUES ('3300', '3298', '2', '623021', '临潭县');
INSERT INTO `region` VALUES ('3301', '3298', '2', '623022', '卓尼县');
INSERT INTO `region` VALUES ('3302', '3298', '2', '623023', '舟曲县');
INSERT INTO `region` VALUES ('3303', '3298', '2', '623024', '迭部县');
INSERT INTO `region` VALUES ('3304', '3298', '2', '623025', '玛曲县');
INSERT INTO `region` VALUES ('3305', '3298', '2', '623026', '碌曲县');
INSERT INTO `region` VALUES ('3306', '3298', '2', '623027', '夏河县');
INSERT INTO `region` VALUES ('3307', '0', '0', '630000', '青海省');
INSERT INTO `region` VALUES ('3308', '3307', '1', '630100', '西宁市');
INSERT INTO `region` VALUES ('3309', '3308', '2', '630101', '市辖区');
INSERT INTO `region` VALUES ('3310', '3308', '2', '630102', '城东区');
INSERT INTO `region` VALUES ('3311', '3308', '2', '630103', '城中区');
INSERT INTO `region` VALUES ('3312', '3308', '2', '630104', '城西区');
INSERT INTO `region` VALUES ('3313', '3308', '2', '630105', '城北区');
INSERT INTO `region` VALUES ('3314', '3308', '2', '630121', '大通回族土族自治县');
INSERT INTO `region` VALUES ('3315', '3308', '2', '630122', '湟中县');
INSERT INTO `region` VALUES ('3316', '3308', '2', '630123', '湟源县');
INSERT INTO `region` VALUES ('3317', '3307', '1', '630200', '海东市');
INSERT INTO `region` VALUES ('3318', '3317', '2', '630202', '乐都区');
INSERT INTO `region` VALUES ('3319', '3317', '2', '630221', '平安县');
INSERT INTO `region` VALUES ('3320', '3317', '2', '630222', '民和回族土族自治县');
INSERT INTO `region` VALUES ('3321', '3317', '2', '630223', '互助土族自治县');
INSERT INTO `region` VALUES ('3322', '3317', '2', '630224', '化隆回族自治县');
INSERT INTO `region` VALUES ('3323', '3317', '2', '630225', '循化撒拉族自治县');
INSERT INTO `region` VALUES ('3324', '3307', '1', '632200', '海北藏族自治州');
INSERT INTO `region` VALUES ('3325', '3324', '2', '632221', '门源回族自治县');
INSERT INTO `region` VALUES ('3326', '3324', '2', '632222', '祁连县');
INSERT INTO `region` VALUES ('3327', '3324', '2', '632223', '海晏县');
INSERT INTO `region` VALUES ('3328', '3324', '2', '632224', '刚察县');
INSERT INTO `region` VALUES ('3329', '3307', '1', '632300', '黄南藏族自治州');
INSERT INTO `region` VALUES ('3330', '3329', '2', '632321', '同仁县');
INSERT INTO `region` VALUES ('3331', '3329', '2', '632322', '尖扎县');
INSERT INTO `region` VALUES ('3332', '3329', '2', '632323', '泽库县');
INSERT INTO `region` VALUES ('3333', '3329', '2', '632324', '河南蒙古族自治县');
INSERT INTO `region` VALUES ('3334', '3307', '1', '632500', '海南藏族自治州');
INSERT INTO `region` VALUES ('3335', '3334', '2', '632521', '共和县');
INSERT INTO `region` VALUES ('3336', '3334', '2', '632522', '同德县');
INSERT INTO `region` VALUES ('3337', '3334', '2', '632523', '贵德县');
INSERT INTO `region` VALUES ('3338', '3334', '2', '632524', '兴海县');
INSERT INTO `region` VALUES ('3339', '3334', '2', '632525', '贵南县');
INSERT INTO `region` VALUES ('3340', '3307', '1', '632600', '果洛藏族自治州');
INSERT INTO `region` VALUES ('3341', '3340', '2', '632621', '玛沁县');
INSERT INTO `region` VALUES ('3342', '3340', '2', '632622', '班玛县');
INSERT INTO `region` VALUES ('3343', '3340', '2', '632623', '甘德县');
INSERT INTO `region` VALUES ('3344', '3340', '2', '632624', '达日县');
INSERT INTO `region` VALUES ('3345', '3340', '2', '632625', '久治县');
INSERT INTO `region` VALUES ('3346', '3340', '2', '632626', '玛多县');
INSERT INTO `region` VALUES ('3347', '3307', '1', '632700', '玉树藏族自治州');
INSERT INTO `region` VALUES ('3348', '3347', '2', '632701', '玉树市');
INSERT INTO `region` VALUES ('3349', '3347', '2', '632722', '杂多县');
INSERT INTO `region` VALUES ('3350', '3347', '2', '632723', '称多县');
INSERT INTO `region` VALUES ('3351', '3347', '2', '632724', '治多县');
INSERT INTO `region` VALUES ('3352', '3347', '2', '632725', '囊谦县');
INSERT INTO `region` VALUES ('3353', '3347', '2', '632726', '曲麻莱县');
INSERT INTO `region` VALUES ('3354', '3307', '1', '632800', '海西蒙古族藏族自治州');
INSERT INTO `region` VALUES ('3355', '3354', '2', '632801', '格尔木市');
INSERT INTO `region` VALUES ('3356', '3354', '2', '632802', '德令哈市');
INSERT INTO `region` VALUES ('3357', '3354', '2', '632821', '乌兰县');
INSERT INTO `region` VALUES ('3358', '3354', '2', '632822', '都兰县');
INSERT INTO `region` VALUES ('3359', '3354', '2', '632823', '天峻县');
INSERT INTO `region` VALUES ('3360', '0', '0', '640000', '宁夏回族自治区');
INSERT INTO `region` VALUES ('3361', '3360', '1', '640100', '银川市');
INSERT INTO `region` VALUES ('3362', '3361', '2', '640101', '市辖区');
INSERT INTO `region` VALUES ('3363', '3361', '2', '640104', '兴庆区');
INSERT INTO `region` VALUES ('3364', '3361', '2', '640105', '西夏区');
INSERT INTO `region` VALUES ('3365', '3361', '2', '640106', '金凤区');
INSERT INTO `region` VALUES ('3366', '3361', '2', '640121', '永宁县');
INSERT INTO `region` VALUES ('3367', '3361', '2', '640122', '贺兰县');
INSERT INTO `region` VALUES ('3368', '3361', '2', '640181', '灵武市');
INSERT INTO `region` VALUES ('3369', '3360', '1', '640200', '石嘴山市');
INSERT INTO `region` VALUES ('3370', '3369', '2', '640201', '市辖区');
INSERT INTO `region` VALUES ('3371', '3369', '2', '640202', '大武口区');
INSERT INTO `region` VALUES ('3372', '3369', '2', '640205', '惠农区');
INSERT INTO `region` VALUES ('3373', '3369', '2', '640221', '平罗县');
INSERT INTO `region` VALUES ('3374', '3360', '1', '640300', '吴忠市');
INSERT INTO `region` VALUES ('3375', '3374', '2', '640301', '市辖区');
INSERT INTO `region` VALUES ('3376', '3374', '2', '640302', '利通区');
INSERT INTO `region` VALUES ('3377', '3374', '2', '640303', '红寺堡区');
INSERT INTO `region` VALUES ('3378', '3374', '2', '640323', '盐池县');
INSERT INTO `region` VALUES ('3379', '3374', '2', '640324', '同心县');
INSERT INTO `region` VALUES ('3380', '3374', '2', '640381', '青铜峡市');
INSERT INTO `region` VALUES ('3381', '3360', '1', '640400', '固原市');
INSERT INTO `region` VALUES ('3382', '3381', '2', '640401', '市辖区');
INSERT INTO `region` VALUES ('3383', '3381', '2', '640402', '原州区');
INSERT INTO `region` VALUES ('3384', '3381', '2', '640422', '西吉县');
INSERT INTO `region` VALUES ('3385', '3381', '2', '640423', '隆德县');
INSERT INTO `region` VALUES ('3386', '3381', '2', '640424', '泾源县');
INSERT INTO `region` VALUES ('3387', '3381', '2', '640425', '彭阳县');
INSERT INTO `region` VALUES ('3388', '3360', '1', '640500', '中卫市');
INSERT INTO `region` VALUES ('3389', '3388', '2', '640501', '市辖区');
INSERT INTO `region` VALUES ('3390', '3388', '2', '640502', '沙坡头区');
INSERT INTO `region` VALUES ('3391', '3388', '2', '640521', '中宁县');
INSERT INTO `region` VALUES ('3392', '3388', '2', '640522', '海原县');
INSERT INTO `region` VALUES ('3393', '0', '0', '650000', '新疆维吾尔自治区');
INSERT INTO `region` VALUES ('3394', '3393', '1', '650100', '乌鲁木齐市');
INSERT INTO `region` VALUES ('3395', '3394', '2', '650101', '市辖区');
INSERT INTO `region` VALUES ('3396', '3394', '2', '650102', '天山区');
INSERT INTO `region` VALUES ('3397', '3394', '2', '650103', '沙依巴克区');
INSERT INTO `region` VALUES ('3398', '3394', '2', '650104', '新市区');
INSERT INTO `region` VALUES ('3399', '3394', '2', '650105', '水磨沟区');
INSERT INTO `region` VALUES ('3400', '3394', '2', '650106', '头屯河区');
INSERT INTO `region` VALUES ('3401', '3394', '2', '650107', '达坂城区');
INSERT INTO `region` VALUES ('3402', '3394', '2', '650109', '米东区');
INSERT INTO `region` VALUES ('3403', '3394', '2', '650121', '乌鲁木齐县');
INSERT INTO `region` VALUES ('3404', '3393', '1', '650200', '克拉玛依市');
INSERT INTO `region` VALUES ('3405', '3404', '2', '650201', '市辖区');
INSERT INTO `region` VALUES ('3406', '3404', '2', '650202', '独山子区');
INSERT INTO `region` VALUES ('3407', '3404', '2', '650203', '克拉玛依区');
INSERT INTO `region` VALUES ('3408', '3404', '2', '650204', '白碱滩区');
INSERT INTO `region` VALUES ('3409', '3404', '2', '650205', '乌尔禾区');
INSERT INTO `region` VALUES ('3410', '3393', '1', '652100', '吐鲁番地区');
INSERT INTO `region` VALUES ('3411', '3410', '2', '652101', '吐鲁番市');
INSERT INTO `region` VALUES ('3412', '3410', '2', '652122', '鄯善县');
INSERT INTO `region` VALUES ('3413', '3410', '2', '652123', '托克逊县');
INSERT INTO `region` VALUES ('3414', '3393', '1', '652200', '哈密地区');
INSERT INTO `region` VALUES ('3415', '3414', '2', '652201', '哈密市');
INSERT INTO `region` VALUES ('3416', '3414', '2', '652222', '巴里坤哈萨克自治县');
INSERT INTO `region` VALUES ('3417', '3414', '2', '652223', '伊吾县');
INSERT INTO `region` VALUES ('3418', '3393', '1', '652300', '昌吉回族自治州');
INSERT INTO `region` VALUES ('3419', '3418', '2', '652301', '昌吉市');
INSERT INTO `region` VALUES ('3420', '3418', '2', '652302', '阜康市');
INSERT INTO `region` VALUES ('3421', '3418', '2', '652323', '呼图壁县');
INSERT INTO `region` VALUES ('3422', '3418', '2', '652324', '玛纳斯县');
INSERT INTO `region` VALUES ('3423', '3418', '2', '652325', '奇台县');
INSERT INTO `region` VALUES ('3424', '3418', '2', '652327', '吉木萨尔县');
INSERT INTO `region` VALUES ('3425', '3418', '2', '652328', '木垒哈萨克自治县');
INSERT INTO `region` VALUES ('3426', '3393', '1', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `region` VALUES ('3427', '3426', '2', '652701', '博乐市');
INSERT INTO `region` VALUES ('3428', '3426', '2', '652702', '阿拉山口市');
INSERT INTO `region` VALUES ('3429', '3426', '2', '652722', '精河县');
INSERT INTO `region` VALUES ('3430', '3426', '2', '652723', '温泉县');
INSERT INTO `region` VALUES ('3431', '3393', '1', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `region` VALUES ('3432', '3431', '2', '652801', '库尔勒市');
INSERT INTO `region` VALUES ('3433', '3431', '2', '652822', '轮台县');
INSERT INTO `region` VALUES ('3434', '3431', '2', '652823', '尉犁县');
INSERT INTO `region` VALUES ('3435', '3431', '2', '652824', '若羌县');
INSERT INTO `region` VALUES ('3436', '3431', '2', '652825', '且末县');
INSERT INTO `region` VALUES ('3437', '3431', '2', '652826', '焉耆回族自治县');
INSERT INTO `region` VALUES ('3438', '3431', '2', '652827', '和静县');
INSERT INTO `region` VALUES ('3439', '3431', '2', '652828', '和硕县');
INSERT INTO `region` VALUES ('3440', '3431', '2', '652829', '博湖县');
INSERT INTO `region` VALUES ('3441', '3393', '1', '652900', '阿克苏地区');
INSERT INTO `region` VALUES ('3442', '3441', '2', '652901', '阿克苏市');
INSERT INTO `region` VALUES ('3443', '3441', '2', '652922', '温宿县');
INSERT INTO `region` VALUES ('3444', '3441', '2', '652923', '库车县');
INSERT INTO `region` VALUES ('3445', '3441', '2', '652924', '沙雅县');
INSERT INTO `region` VALUES ('3446', '3441', '2', '652925', '新和县');
INSERT INTO `region` VALUES ('3447', '3441', '2', '652926', '拜城县');
INSERT INTO `region` VALUES ('3448', '3441', '2', '652927', '乌什县');
INSERT INTO `region` VALUES ('3449', '3441', '2', '652928', '阿瓦提县');
INSERT INTO `region` VALUES ('3450', '3441', '2', '652929', '柯坪县');
INSERT INTO `region` VALUES ('3451', '3393', '1', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `region` VALUES ('3452', '3451', '2', '653001', '阿图什市');
INSERT INTO `region` VALUES ('3453', '3451', '2', '653022', '阿克陶县');
INSERT INTO `region` VALUES ('3454', '3451', '2', '653023', '阿合奇县');
INSERT INTO `region` VALUES ('3455', '3451', '2', '653024', '乌恰县');
INSERT INTO `region` VALUES ('3456', '3393', '1', '653100', '喀什地区');
INSERT INTO `region` VALUES ('3457', '3456', '2', '653101', '喀什市');
INSERT INTO `region` VALUES ('3458', '3456', '2', '653121', '疏附县');
INSERT INTO `region` VALUES ('3459', '3456', '2', '653122', '疏勒县');
INSERT INTO `region` VALUES ('3460', '3456', '2', '653123', '英吉沙县');
INSERT INTO `region` VALUES ('3461', '3456', '2', '653124', '泽普县');
INSERT INTO `region` VALUES ('3462', '3456', '2', '653125', '莎车县');
INSERT INTO `region` VALUES ('3463', '3456', '2', '653126', '叶城县');
INSERT INTO `region` VALUES ('3464', '3456', '2', '653127', '麦盖提县');
INSERT INTO `region` VALUES ('3465', '3456', '2', '653128', '岳普湖县');
INSERT INTO `region` VALUES ('3466', '3456', '2', '653129', '伽师县');
INSERT INTO `region` VALUES ('3467', '3456', '2', '653130', '巴楚县');
INSERT INTO `region` VALUES ('3468', '3456', '2', '653131', '塔什库尔干塔吉克自治县');
INSERT INTO `region` VALUES ('3469', '3393', '1', '653200', '和田地区');
INSERT INTO `region` VALUES ('3470', '3469', '2', '653201', '和田市');
INSERT INTO `region` VALUES ('3471', '3469', '2', '653221', '和田县');
INSERT INTO `region` VALUES ('3472', '3469', '2', '653222', '墨玉县');
INSERT INTO `region` VALUES ('3473', '3469', '2', '653223', '皮山县');
INSERT INTO `region` VALUES ('3474', '3469', '2', '653224', '洛浦县');
INSERT INTO `region` VALUES ('3475', '3469', '2', '653225', '策勒县');
INSERT INTO `region` VALUES ('3476', '3469', '2', '653226', '于田县');
INSERT INTO `region` VALUES ('3477', '3469', '2', '653227', '民丰县');
INSERT INTO `region` VALUES ('3478', '3393', '1', '654000', '伊犁哈萨克自治州');
INSERT INTO `region` VALUES ('3479', '3478', '2', '654002', '伊宁市');
INSERT INTO `region` VALUES ('3480', '3478', '2', '654003', '奎屯市');
INSERT INTO `region` VALUES ('3481', '3478', '2', '654021', '伊宁县');
INSERT INTO `region` VALUES ('3482', '3478', '2', '654022', '察布查尔锡伯自治县');
INSERT INTO `region` VALUES ('3483', '3478', '2', '654023', '霍城县');
INSERT INTO `region` VALUES ('3484', '3478', '2', '654024', '巩留县');
INSERT INTO `region` VALUES ('3485', '3478', '2', '654025', '新源县');
INSERT INTO `region` VALUES ('3486', '3478', '2', '654026', '昭苏县');
INSERT INTO `region` VALUES ('3487', '3478', '2', '654027', '特克斯县');
INSERT INTO `region` VALUES ('3488', '3478', '2', '654028', '尼勒克县');
INSERT INTO `region` VALUES ('3489', '3393', '1', '654200', '塔城地区');
INSERT INTO `region` VALUES ('3490', '3489', '2', '654201', '塔城市');
INSERT INTO `region` VALUES ('3491', '3489', '2', '654202', '乌苏市');
INSERT INTO `region` VALUES ('3492', '3489', '2', '654221', '额敏县');
INSERT INTO `region` VALUES ('3493', '3489', '2', '654223', '沙湾县');
INSERT INTO `region` VALUES ('3494', '3489', '2', '654224', '托里县');
INSERT INTO `region` VALUES ('3495', '3489', '2', '654225', '裕民县');
INSERT INTO `region` VALUES ('3496', '3489', '2', '654226', '和布克赛尔蒙古自治县');
INSERT INTO `region` VALUES ('3497', '3393', '1', '654300', '阿勒泰地区');
INSERT INTO `region` VALUES ('3498', '3497', '2', '654301', '阿勒泰市');
INSERT INTO `region` VALUES ('3499', '3497', '2', '654321', '布尔津县');
INSERT INTO `region` VALUES ('3500', '3497', '2', '654322', '富蕴县');
INSERT INTO `region` VALUES ('3501', '3497', '2', '654323', '福海县');
INSERT INTO `region` VALUES ('3502', '3497', '2', '654324', '哈巴河县');
INSERT INTO `region` VALUES ('3503', '3497', '2', '654325', '青河县');
INSERT INTO `region` VALUES ('3504', '3497', '2', '654326', '吉木乃县');
INSERT INTO `region` VALUES ('3505', '3393', '1', '659000', '自治区直辖县级行政区划');
INSERT INTO `region` VALUES ('3506', '3505', '2', '659001', '石河子市');
INSERT INTO `region` VALUES ('3507', '3505', '2', '659002', '阿拉尔市');
INSERT INTO `region` VALUES ('3508', '3505', '2', '659003', '图木舒克市');
INSERT INTO `region` VALUES ('3509', '3505', '2', '659004', '五家渠市');
INSERT INTO `region` VALUES ('3510', '0', '0', '710000', '台湾省');
INSERT INTO `region` VALUES ('3511', '0', '0', '810000', '香港特别行政区');
INSERT INTO `region` VALUES ('3512', '0', '0', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for `rider`
-- ----------------------------
DROP TABLE IF EXISTS `rider`;
CREATE TABLE `rider` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `region` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rider
-- ----------------------------
INSERT INTO `rider` VALUES ('1001', 'test1', '123456', '张三', '18569102524', '长沙市', '广东省广州市白云区广园中路238号', '113.27324', '23.15792');
INSERT INTO `rider` VALUES ('1004', '丝瓜', '123456789', '李思', '18152853671', '广州市', '广东省广州市越秀区府前路1号', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `rid` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `userimg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userimg` (`userimg`),
  KEY `rank` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '103', '李世民', '123456', '女', '18152853671', '/userImg/ebddd415908e48c19c31b71f403115e9.jpeg');
INSERT INTO `user` VALUES ('8', '103', 'test', '123456', '女', '155666666696', '/userImg/defalut2.jpg');
INSERT INTO `user` VALUES ('13', '103', 'lisi3', 'abcdef', '男', '18428348340', '/userImg/7c1b9a5e7f2c4f058932599e26e853b2.jpeg');

-- ----------------------------
-- Table structure for `user_address`
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `addressid` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) NOT NULL,
  `consignee` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `detailedAddress` varchar(255) NOT NULL,
  `userid` int(5) NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`addressid`),
  KEY `1` (`userid`),
  CONSTRAINT `1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('1', '18428348340', '刘林锋', '湖南省 长沙市 岳麓区', '湖南工业职业技术学院5栋', '1', '学校', '1');
INSERT INTO `user_address` VALUES ('5', '18428348340', '刘林锋', '湖南 长沙市 岳麓区', '韶山中路438号湖南工业职业技术学院', '1', '学校', '0');
INSERT INTO `user_address` VALUES ('7', '18152853671', 'lisi', '湖南省 长沙市 岳麓区', '湖南工业职业技术学院5栋', '13', '学校', '1');
INSERT INTO `user_address` VALUES ('8', '18152853671', 'zzt', '湖南省 长沙市 岳麓区', '湖南工业职业技术学院-西门', '13', '', '0');
INSERT INTO `user_address` VALUES ('10', '18152853671', 'lisi', '湖南省 长沙市 岳麓区', '湖南工业职业技术学院-东南门', '1', '家', '0');

-- ----------------------------
-- Table structure for `user_orders`
-- ----------------------------
DROP TABLE IF EXISTS `user_orders`;
CREATE TABLE `user_orders` (
  `orderID` int(255) NOT NULL AUTO_INCREMENT,
  `userID` int(255) NOT NULL,
  `addressID` int(255) NOT NULL,
  `goodsID` int(255) NOT NULL,
  `goodsName` varchar(255) NOT NULL,
  `goodsImg` varchar(255) NOT NULL,
  `price` double(255,2) DEFAULT NULL,
  `price2` double(255,0) NOT NULL,
  `number` int(10) NOT NULL,
  `orderTime` varchar(255) NOT NULL,
  `payment` varchar(30) NOT NULL,
  `region` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `orderNo` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT '',
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=10095 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_orders
-- ----------------------------
INSERT INTO `user_orders` VALUES ('10012', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '51.30', '50', '2', '2022/07/25 08:59:16', '微信支付', '长沙市', '已完成', 'ORDER_20220807162940945', '4200001460202207305053412208');
INSERT INTO `user_orders` VALUES ('10013', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '51.30', '50', '2', '2022/07/25 09:23:04', '微信支付', '长沙市', '已完成', 'ORDER_20220807162940945', '4200001460202207305053412208');
INSERT INTO `user_orders` VALUES ('10021', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '51.30', '50', '2', '2022/08/07 09:48:26', '微信支付', '长沙市', '配送中', 'SQSX_20221018190009787', '4200001571202210189241887267');
INSERT INTO `user_orders` VALUES ('10022', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '51.30', '50', '2', '2022/08/07 09:48:26', '微信支付', '长沙市', '配送中', 'SQSX_20221018190009787', '4200001571202210189241887267');
INSERT INTO `user_orders` VALUES ('10037', '1', '1', '7', '安研科轻透防水防晒防蓝光乳液SPF50+50g', '/images/1654502752053.jpg', '0.01', '248', '1', '2022/9/27 12:00:47', '微信支付', '长沙市', '退款成功', 'SQSX_20221027120048637', '4200001565202210275853298339');
INSERT INTO `user_orders` VALUES ('10038', '1', '1', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '/images/1654502729981.jpg', '0.01', '75', '1', '2022/9/27 12:00:47', '微信支付', '长沙市', '退款成功', 'SQSX_20221027120048637', '4200001565202210275853298339');
INSERT INTO `user_orders` VALUES ('10044', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/9/27 12:14:14', '微信支付', '长沙市', '拒绝退款', 'SQSX_20221027121415314', '4200001569202210273001428288');
INSERT INTO `user_orders` VALUES ('10045', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/9/27 15:31:10', '微信支付', '长沙市', '已完成', 'SQSX_20221027153112686', '4200001639202210275772983648');
INSERT INTO `user_orders` VALUES ('10046', '1', '5', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '/images/1654502729981.jpg', '0.01', '75', '1', '2022/9/27 16:21:15', '微信支付', '长沙市', '已完成', 'SQSX_20221027162117195', '4200001639202210275772983648');
INSERT INTO `user_orders` VALUES ('10047', '1', '5', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/9/27 16:21:15', '微信支付', '长沙市', '已完成', 'SQSX_20221027162117195', '4200001639202210275772983648');
INSERT INTO `user_orders` VALUES ('10048', '1', '5', '3', '吉林松原 黄糯玉米 2kg', '/images/1654500342641.jpg', '0.01', '50', '1', '2022/9/30 21:42:43', '微信支付', '长沙市', '退款中', 'SQSX_20221030214244419', '4200001553202210305723420385');
INSERT INTO `user_orders` VALUES ('10049', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 21:42:43', '微信支付', '长沙市', '退款中', 'SQSX_20221030214244419', '4200001553202210305723420385');
INSERT INTO `user_orders` VALUES ('10051', '1', '5', '3', '吉林松原 黄糯玉米 2kg', '/images/1654500342641.jpg', '0.01', '50', '6', '2022/9/30 22:10:26', '微信支付', '长沙市', '拒绝退款', 'SQSX_20221030221027077', '4200001547202210306675560118');
INSERT INTO `user_orders` VALUES ('10052', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 22:10:26', '微信支付', '长沙市', '拒绝退款', 'SQSX_20221030221027077', '4200001547202210306675560118');
INSERT INTO `user_orders` VALUES ('10053', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 22:11:38', '微信支付', '长沙市', '已取消', 'SQSX_20221030221139402', '  ');
INSERT INTO `user_orders` VALUES ('10054', '1', '5', '3', '吉林松原 黄糯玉米 2kg', '/images/1654500342641.jpg', '0.01', '50', '6', '2022/9/30 22:11:38', '微信支付', '长沙市', '已取消', 'SQSX_20221030221139402', '  ');
INSERT INTO `user_orders` VALUES ('10055', '1', '5', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/9/30 22:46:52', '微信支付', '长沙市', '已取消', 'SQSX_20221030224653341', ' ');
INSERT INTO `user_orders` VALUES ('10056', '1', '5', '4', '山东威海 黄海小船小八爪鱼 1kg', '/images/1654500510384.jpg', '0.01', '120', '1', '2022/9/30 22:46:52', '微信支付', '长沙市', '已取消', 'SQSX_20221030224653341', '');
INSERT INTO `user_orders` VALUES ('10057', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 22:47:03', '微信支付', '长沙市', '已取消', 'SQSX_20221030224703578', '');
INSERT INTO `user_orders` VALUES ('10058', '1', '5', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '/images/1654502729981.jpg', '0.01', '75', '1', '2022/9/30 22:47:03', '微信支付', '长沙市', '已取消', 'SQSX_20221030224703578', '');
INSERT INTO `user_orders` VALUES ('10059', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 22:49:20', '微信支付', '长沙市', '已取消', 'SQSX_20221030224920469', '');
INSERT INTO `user_orders` VALUES ('10060', '1', '5', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '/images/1654502729981.jpg', '0.01', '75', '1', '2022/9/30 22:49:20', '微信支付', '长沙市', '已取消', 'SQSX_20221030224920469', '');
INSERT INTO `user_orders` VALUES ('10061', '1', '5', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '9', '2022/9/30 22:51:31', '微信支付', '长沙市', '已取消', 'SQSX_20221030225131535', '');
INSERT INTO `user_orders` VALUES ('10062', '1', '5', '26', '内蒙古 巴彦淖尔黑毛和牛谷饲 肥牛肉片 1kg（非当日达）', '/images/1656667929508.jpg', '0.01', '169', '1', '2022/9/30 22:51:31', '微信支付', '长沙市', '已取消', 'SQSX_20221030225131535', '');
INSERT INTO `user_orders` VALUES ('10063', '1', '5', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '1', '2022/9/30 22:51:50', '微信支付', '长沙市', '已取消', 'SQSX_20221030225151648', '');
INSERT INTO `user_orders` VALUES ('10064', '1', '5', '3', '吉林松原 黄糯玉米 2kg', '/images/1654500342641.jpg', '0.01', '50', '6', '2022/9/30 22:51:50', '微信支付', '长沙市', '已取消', 'SQSX_20221030225151648', '');
INSERT INTO `user_orders` VALUES ('10065', '1', '5', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '9', '2022/9/30 22:52:03', '微信支付', '长沙市', '拒绝退款', 'SQSX_20221030225203700', '');
INSERT INTO `user_orders` VALUES ('10066', '1', '5', '6', '汇柒鲜 羊蝎子火锅 1.2kg', '/images/1654502729981.jpg', '0.01', '75', '1', '2022/9/30 22:52:03', '微信支付', '长沙市', '未支付', 'SQSX_20221030225203700', '');
INSERT INTO `user_orders` VALUES ('10068', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '51.30', '50', '2', '2022/12/11 07:22:54', '微信支付', '长沙市', '配送中', 'SQSX_20221211153713848', '4200001657202212113902946303');
INSERT INTO `user_orders` VALUES ('10069', '13', '7', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/12/17 13:14:25', '微信支付', '长沙市', '退款中', 'SQSX_20221217131426791', '4200001662202212171788716153');
INSERT INTO `user_orders` VALUES ('10070', '13', '7', '3', '山东 水果玉米 1.0kg', '/images/1654500342641.jpg', '0.01', '50', '1', '2022/12/17 13:14:25', '微信支付', '长沙市', '退款中', 'SQSX_20221217131426791', '4200001662202212171788716153');
INSERT INTO `user_orders` VALUES ('10071', '13', '7', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '3', '2022/12/17 13:18:53', '微信支付', '长沙市', '退款中', 'SQSX_20221217131853808', '4200001667202212173830571206');
INSERT INTO `user_orders` VALUES ('10072', '13', '7', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/12/17 13:22:06', '微信支付', '长沙市', '退款成功', 'SQSX_20221217132207929', '4200001662202212170338913644');
INSERT INTO `user_orders` VALUES ('10073', '13', '7', '3', '山东 水果玉米 1.0kg', '/images/1654500342641.jpg', '0.01', '50', '1', '2022/12/17 13:22:06', '微信支付', '长沙市', '退款成功', 'SQSX_20221217132207929', '4200001662202212170338913644');
INSERT INTO `user_orders` VALUES ('10074', '13', '7', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '3', '2022/12/17 13:22:06', '微信支付', '长沙市', '退款成功', 'SQSX_20221217132207929', '4200001662202212170338913644');
INSERT INTO `user_orders` VALUES ('10075', '13', '7', '3', '山东 水果玉米 1.0kg', '/images/1654500342641.jpg', '0.01', '50', '1', '2022/12/17 13:24:15', '微信支付', '长沙市', '已完成', 'SQSX_20221217132416774', '4200001647202212173940699410');
INSERT INTO `user_orders` VALUES ('10076', '13', '7', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/12/17 13:24:15', '微信支付', '长沙市', '已完成', 'SQSX_20221217132416774', '4200001647202212173940699410');
INSERT INTO `user_orders` VALUES ('10077', '13', '7', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '3', '2022/12/17 13:24:15', '微信支付', '长沙市', '已完成', 'SQSX_20221217132416774', '4200001647202212173940699410');
INSERT INTO `user_orders` VALUES ('10078', '13', '7', '3', '山东 水果玉米 1.0kg', '/images/1654500342641.jpg', '0.01', '50', '1', '2022/12/17 13:27:03', '微信支付', '长沙市', '退款中', 'SQSX_20221217132704105', '4200001663202212178938349782');
INSERT INTO `user_orders` VALUES ('10079', '13', '8', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '1', '2022/12/17 13:58:55', '微信支付', '长沙市', '退款中', 'SQSX_20221217135856954', '4200001671202212178508406542');
INSERT INTO `user_orders` VALUES ('10080', '13', '8', '13', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '/images/1656663760213.jpg', '0.01', '180', '1', '2022/12/17 13:58:55', '微信支付', '长沙市', '退款中', 'SQSX_20221217135856954', '4200001671202212178508406542');
INSERT INTO `user_orders` VALUES ('10081', '13', '8', '13', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '/images/1656663760213.jpg', '0.01', '180', '1', '2022/12/17 15:37:28', '微信支付', '长沙市', '已取消', 'SQSX_20221217153730573', '');
INSERT INTO `user_orders` VALUES ('10082', '13', '8', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '1', '2022/12/17 15:37:28', '微信支付', '长沙市', '已取消', 'SQSX_20221217153730573', '');
INSERT INTO `user_orders` VALUES ('10083', '13', '8', '13', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '/images/1656663760213.jpg', '0.01', '180', '1', '2022/12/19 11:04:04', '微信支付', '长沙市', '已收货', 'SQSX_20221219110405040', '4200001674202212194249264170');
INSERT INTO `user_orders` VALUES ('10084', '13', '8', '13', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '/images/1656663760213.jpg', '0.01', '180', '1', '2022/12/19 19:44:34', '微信支付', '长沙市', '已取消', 'SQSX_20221219194434737', '');
INSERT INTO `user_orders` VALUES ('10085', '13', '8', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '1', '2022/12/19 19:44:49', '微信支付', '长沙市', '已取消', 'SQSX_20221219194448794', '');
INSERT INTO `user_orders` VALUES ('10086', '13', '8', '13', '佳沛 新西兰 阳光绿果原箱 22粒(单果150g+)\r\n', '/images/1656663760213.jpg', '0.01', '180', '1', '2022/12/19 19:44:49', '微信支付', '长沙市', '已取消', 'SQSX_20221219194448794', '');
INSERT INTO `user_orders` VALUES ('10087', '13', '8', '1', '时令水果', '/images/1653898474213.jpg', '0.01', '59', '1', '2022/12/19 19:44:58', '微信支付', '长沙市', '已取消', 'SQSX_20221219194457979', '');
INSERT INTO `user_orders` VALUES ('10088', '13', '9', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/12/19 20:16:21', '微信支付', '长沙市', '支付成功', 'SQSX_20221219201620029', '4200001651202212197201528044');
INSERT INTO `user_orders` VALUES ('10089', '13', '9', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '1', '2022/12/19 20:20:25', '微信支付', '长沙市', '已取消', 'SQSX_20221219202025129', '');
INSERT INTO `user_orders` VALUES ('10090', '13', '9', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '8', '2022/12/19 20:44:12', '微信支付', '长沙市', '已取消', 'SQSX_20221219204411999', '');
INSERT INTO `user_orders` VALUES ('10091', '1', '1', '4', '山东威海 黄海小船小八爪鱼 1kg', '/images/1654500510384.jpg', '0.01', '120', '1', '2022/12/20 10:44:06', '微信支付', '长沙市', '退款中', 'SQSX_20221220104405235', '4200001661202212209399657511');
INSERT INTO `user_orders` VALUES ('10092', '1', '1', '2', '海南三亚 妃子笑荔枝 1.5kg', '/images/1653898503173.jpg', '0.01', '108', '11', '2022/12/20 10:44:06', '微信支付', '长沙市', '退款中', 'SQSX_20221220104405235', '4200001661202212209399657511');
INSERT INTO `user_orders` VALUES ('10093', '1', '1', '1', '云南玉溪 沃柑 2.5kg', '/images/1653898474213.jpg', '0.01', '58', '4', '2022/12/20 10:47:16', '微信支付', '长沙市', '待配送', 'SQSX_20221220104715126', '4200001640202212200095573162');
INSERT INTO `user_orders` VALUES ('10094', '1', '1', '3', '吉林松原 黄糯玉米 2kg', '/images/1654500342641.jpg', '0.01', '50', '9', '2022/12/20 10:47:16', '微信支付', '长沙市', '待配送', 'SQSX_20221220104715126', '4200001640202212200095573162');
