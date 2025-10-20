/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 110300
Source Host           : 127.0.0.1:3306
Source Database       : canacintra2

Target Server Type    : MYSQL
Target Server Version : 110300
File Encoding         : 65001

Date: 2025-06-02 12:36:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for archivo
-- ----------------------------
DROP TABLE IF EXISTS `archivo`;
CREATE TABLE `archivo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `nombre_temporal` varchar(255) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `tamano` int(11) NOT NULL,
  `descripcion_corta` varchar(150) DEFAULT NULL,
  `descripcion_larga` longtext DEFAULT NULL,
  `descargas` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `archivo_fk_user_id_fc89ca57_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  CONSTRAINT `archivo_fk_user_id_fc89ca57_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of archivo
-- ----------------------------
INSERT INTO `archivo` VALUES ('1', 'congreso.jpg', '8989939933.jpg', 'media/\\uploads\\1\\', 'jpg', '0', null, null, '0', '2025-03-24 13:58:34.000000', '2025-03-24 13:58:38.000000', '4');
INSERT INTO `archivo` VALUES ('2', '', '680e20904f96f', 'media/uploads/', '', '0', null, null, '0', '2025-04-27 12:18:24.000000', null, '4');
INSERT INTO `archivo` VALUES ('3', 'qr_actual.png', '680e24ebed090', 'media/uploads/qr_actual.png', 'image/png', '8858', null, null, '0', '2025-04-27 12:36:59.000000', null, '4');
INSERT INTO `archivo` VALUES ('4', 'qr_actual.png', '680e252f45b68', 'media/uploads/qr_actual.png', 'image/png', '8858', null, null, '0', '2025-04-27 12:38:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('5', 'image17.jpg', '680e26864a3de', 'media/uploads/image17.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 12:43:50.000000', null, '4');
INSERT INTO `archivo` VALUES ('6', 'blobid1745758920533.jpg', 'img_680e2ac9d18c7.jpg', 'media/uploads/img_680e2ac9d18c7.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 13:02:01.000000', null, '4');
INSERT INTO `archivo` VALUES ('7', 'blobid1745759182344.jpg', 'img_680e2bd49ea26.jpg', 'media/uploads/img_680e2bd49ea26.jpg', 'image/jpeg', '443203', null, null, '0', '2025-04-27 13:06:28.000000', null, '4');
INSERT INTO `archivo` VALUES ('8', 'image17.jpg', 'img_680e2d21d1992.jpg', 'media/Uploads/img_680e2d21d1992.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 13:12:01.000000', null, '4');
INSERT INTO `archivo` VALUES ('9', 'image18.jpg', 'img_680e2d2e4bce3.jpg', 'media/Uploads/img_680e2d2e4bce3.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 13:12:14.000000', null, '4');
INSERT INTO `archivo` VALUES ('10', 'blobid1745759544666.jpg', 'img_680e2d39970c5.jpg', 'media/uploads/img_680e2d39970c5.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 13:12:25.000000', null, '4');
INSERT INTO `archivo` VALUES ('11', 'image19.jpg', 'img_680e2d8ea56c0.jpg', 'media/Uploads/img_680e2d8ea56c0.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 13:13:50.000000', null, '4');
INSERT INTO `archivo` VALUES ('12', 'image19.jpg', 'img_680e2e1dac11d.jpg', 'media/Uploads/img_680e2e1dac11d.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 13:16:13.000000', null, '4');
INSERT INTO `archivo` VALUES ('13', 'image21.jpg', 'img_680e2e3a39722.jpg', 'media/Uploads/img_680e2e3a39722.jpg', 'image/jpeg', '281938', null, null, '0', '2025-04-27 13:16:42.000000', null, '4');
INSERT INTO `archivo` VALUES ('14', 'image04.jpg', 'img_680e2ee2c28d9.jpg', 'media/Uploads/img_680e2ee2c28d9.jpg', 'image/jpeg', '1021995', null, null, '0', '2025-04-27 13:19:30.000000', null, '4');
INSERT INTO `archivo` VALUES ('15', 'blobid1745760146734.jpg', 'img_680e2fa3b8a32.jpg', 'media/uploads/img_680e2fa3b8a32.jpg', 'image/jpeg', '509634', null, null, '0', '2025-04-27 13:22:43.000000', null, '4');
INSERT INTO `archivo` VALUES ('16', 'image19.jpg', 'img_680e2fe44d1d5.jpg', 'media/Uploads/img_680e2fe44d1d5.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 13:23:48.000000', null, '4');
INSERT INTO `archivo` VALUES ('17', 'image19.jpg', 'img_680e6358367ec.jpg', 'media/Uploads/img_680e6358367ec.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 17:03:20.000000', null, '4');
INSERT INTO `archivo` VALUES ('18', 'blobid1745773424318.jpg', 'img_680e63715ccef.jpg', 'media/uploads/img_680e63715ccef.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 17:03:45.000000', null, '4');
INSERT INTO `archivo` VALUES ('19', 'image19.jpg', 'img_680e63d0f0c01.jpg', 'media/Uploads/img_680e63d0f0c01.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 17:05:20.000000', null, '4');
INSERT INTO `archivo` VALUES ('20', 'blobid1745773535382.jpg', 'img_680e63e09c8fa.jpg', 'media/uploads/img_680e63e09c8fa.jpg', 'image/jpeg', '1021995', null, null, '0', '2025-04-27 17:05:36.000000', null, '4');
INSERT INTO `archivo` VALUES ('21', 'image17.jpg', 'img_680e63ff597bd.jpg', 'media/Uploads/img_680e63ff597bd.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 17:06:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('22', 'blobid1745773584271.jpg', 'img_680e64116f1f2.jpg', 'media/uploads/img_680e64116f1f2.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 17:06:25.000000', null, '4');
INSERT INTO `archivo` VALUES ('23', 'image20.jpg', 'img_680e65080a650.jpg', 'media/Uploads/img_680e65080a650.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 17:10:32.000000', null, '4');
INSERT INTO `archivo` VALUES ('24', 'image17.jpg', 'img_680e8191da9d3.jpg', 'media/Uploads/img_680e8191da9d3.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 19:12:17.000000', null, '4');
INSERT INTO `archivo` VALUES ('25', 'blobid1745781157398.jpg', 'img_680e81a63218d.jpg', 'media/uploads/img_680e81a63218d.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 19:12:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('26', 'image20.jpg', 'img_680e82b198797.jpg', 'media/Uploads/img_680e82b198797.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 19:17:05.000000', null, '4');
INSERT INTO `archivo` VALUES ('27', 'image18.jpg', 'img_680e836fcd102.jpg', 'media/Uploads/img_680e836fcd102.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 19:20:15.000000', null, '4');
INSERT INTO `archivo` VALUES ('28', 'blobid1745781622468.jpg', 'img_680e8376e56a7.jpg', 'media/uploads/img_680e8376e56a7.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 19:20:22.000000', null, '4');
INSERT INTO `archivo` VALUES ('29', 'image20.jpg', 'img_680e83c8598dd.jpg', 'media/Uploads/img_680e83c8598dd.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 19:21:44.000000', null, '4');
INSERT INTO `archivo` VALUES ('30', 'image18.jpg', 'img_680e84652ee25.jpg', 'media/Uploads/img_680e84652ee25.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 19:24:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('31', 'blobid1745781867924.jpg', 'img_680e846cae72f.jpg', 'media/uploads/img_680e846cae72f.jpg', 'image/jpeg', '1224058', null, null, '0', '2025-04-27 19:24:28.000000', null, '4');
INSERT INTO `archivo` VALUES ('32', 'image21.jpg', 'img_680e86950bd77.jpg', 'media/Uploads/img_680e86950bd77.jpg', 'image/jpeg', '281938', null, null, '0', '2025-04-27 19:33:41.000000', null, '4');
INSERT INTO `archivo` VALUES ('33', 'image20.jpg', 'img_680e8b63ef74f.jpg', 'media/Uploads/img_680e8b63ef74f.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 19:54:11.000000', null, '4');
INSERT INTO `archivo` VALUES ('34', 'blobid1745783659935.jpg', 'img_680e8b6d12c72.jpg', 'media/uploads/img_680e8b6d12c72.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 19:54:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('35', 'image17.jpg', 'img_680e8c09e54af.jpg', 'media/Uploads/img_680e8c09e54af.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 19:56:57.000000', null, '4');
INSERT INTO `archivo` VALUES ('36', 'image18.jpg', 'img_680e8c09e8c30.jpg', 'media/Uploads/img_680e8c09e8c30.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 19:56:57.000000', null, '4');
INSERT INTO `archivo` VALUES ('37', 'image19.jpg', 'img_680e8c0a2aa8c.jpg', 'media/Uploads/img_680e8c0a2aa8c.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 19:56:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('38', 'image20.jpg', 'img_680e8c0a2ab3d.jpg', 'media/Uploads/img_680e8c0a2ab3d.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 19:56:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('39', 'image21.jpg', 'img_680e8c0a5d87f.jpg', 'media/Uploads/img_680e8c0a5d87f.jpg', 'image/jpeg', '281938', null, null, '0', '2025-04-27 19:56:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('40', 'image17.jpg', 'img_680e93fa6f4ae.jpg', 'media/Uploads/img_680e93fa6f4ae.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 20:30:50.000000', null, '4');
INSERT INTO `archivo` VALUES ('41', 'bf9c8a270395fd8e.jpg', '', 'media/', '', '0', null, null, '0', '2025-04-27 20:31:02.000000', null, '4');
INSERT INTO `archivo` VALUES ('42', 'image19.jpg', 'img_680e955eb57d0.jpg', 'media/Uploads/img_680e955eb57d0.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 20:36:46.000000', null, '4');
INSERT INTO `archivo` VALUES ('43', 'e768f97f2143fdc1.jpg', '', 'media/', '', '0', null, null, '0', '2025-04-27 20:38:57.000000', null, '4');
INSERT INTO `archivo` VALUES ('44', 'image18.jpg', 'img_680e95e821929.jpg', 'media/Uploads/img_680e95e821929.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 20:39:04.000000', null, '4');
INSERT INTO `archivo` VALUES ('45', 'image20.jpg', 'img_680e9640797be.jpg', 'media/Uploads/img_680e9640797be.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 20:40:32.000000', null, '4');
INSERT INTO `archivo` VALUES ('46', 'd75cbf0ffeec824c.jpg', '', 'media/', '', '0', null, null, '0', '2025-04-27 20:40:40.000000', null, '4');
INSERT INTO `archivo` VALUES ('47', 'image02.jpg', 'img_680e968d53066.jpg', 'media/Uploads/img_680e968d53066.jpg', 'image/jpeg', '1224058', null, null, '0', '2025-04-27 20:41:49.000000', null, '4');
INSERT INTO `archivo` VALUES ('48', '008b01a99eac1bc0.jpg', '', 'media/', '', '0', null, null, '0', '2025-04-27 20:42:02.000000', null, '4');
INSERT INTO `archivo` VALUES ('49', 'image17.jpg', 'img_680e96c6e32bc.jpg', 'media/Uploads/img_680e96c6e32bc.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 20:42:46.000000', null, '4');
INSERT INTO `archivo` VALUES ('50', 'image18.jpg', 'img_680e96c6e5ead.jpg', 'media/Uploads/img_680e96c6e5ead.jpg', 'image/jpeg', '687555', null, null, '0', '2025-04-27 20:42:46.000000', null, '4');
INSERT INTO `archivo` VALUES ('51', 'image19.jpg', 'img_680e96c70f98a.jpg', 'media/Uploads/img_680e96c70f98a.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('52', 'image20.jpg', 'img_680e96c70fa9c.jpg', 'media/Uploads/img_680e96c70fa9c.jpg', 'image/jpeg', '668761', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('53', 'image21.jpg', 'img_680e96c7360d4.jpg', 'media/Uploads/img_680e96c7360d4.jpg', 'image/jpeg', '281938', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('54', 'image02.jpg', 'img_680e96c7383a7.jpg', 'media/Uploads/img_680e96c7383a7.jpg', 'image/jpeg', '1224058', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('55', 'image09.jpg', 'img_680e96c760deb.jpg', 'media/Uploads/img_680e96c760deb.jpg', 'image/jpeg', '551315', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('56', 'image04.jpg', 'img_680e96c75f7bf.jpg', 'media/Uploads/img_680e96c75f7bf.jpg', 'image/jpeg', '1021995', null, null, '0', '2025-04-27 20:42:47.000000', null, '4');
INSERT INTO `archivo` VALUES ('57', 'image19.jpg', 'img_680e97116260b.jpg', 'media/Uploads/img_680e97116260b.jpg', 'image/jpeg', '656720', null, null, '0', '2025-04-27 20:44:01.000000', null, '4');
INSERT INTO `archivo` VALUES ('58', '28adc9ff454bdb5c.jpg', '', 'media/', '', '0', null, null, '0', '2025-04-27 20:44:11.000000', null, '4');
INSERT INTO `archivo` VALUES ('59', 'image17.jpg', 'img_680e9869ea989.jpg', 'media/Uploads/img_680e9869ea989.jpg', 'image/jpeg', '196770', null, null, '0', '2025-04-27 20:49:45.000000', null, '4');
INSERT INTO `archivo` VALUES ('60', '972b15127ba8b365.jpg', 'blobid1745786993025.jpg', 'media/Uploads/972b15127ba8b365.jpg', 'image/jpeg', '1021995', '', '', '0', '2025-04-27 20:49:53.000000', null, '4');
INSERT INTO `archivo` VALUES ('61', 'OIP (1).jpg', 'img_680f300ada098.jpg', 'media/Uploads/img_680f300ada098.jpg', 'image/jpeg', '27295', null, null, '0', '2025-04-28 07:36:42.000000', null, '4');
INSERT INTO `archivo` VALUES ('62', 'OIP (2).jpg', 'img_680f300ad96fe.jpg', 'media/Uploads/img_680f300ad96fe.jpg', 'image/jpeg', '43166', null, null, '0', '2025-04-28 07:36:42.000000', null, '4');
INSERT INTO `archivo` VALUES ('63', '993d9fb40955a955.jpg', 'blobid1745825818234.jpg', 'media/Uploads/993d9fb40955a955.jpg', 'image/jpeg', '346457', '', '', '0', '2025-04-28 07:37:02.000000', null, '4');
INSERT INTO `archivo` VALUES ('64', 'blog_21abr-Innovacion.jpg', 'img_6811195263d80.jpg', 'media/Uploads/img_6811195263d80.jpg', 'image/jpeg', '128018', null, null, '0', '2025-04-29 18:24:18.000000', null, '4');
INSERT INTO `archivo` VALUES ('65', 'Competitividad.jpg', 'img_681119a18885a.jpg', 'media/Uploads/img_681119a18885a.jpg', 'image/jpeg', '114563', null, null, '0', '2025-04-29 18:25:37.000000', null, '4');
INSERT INTO `archivo` VALUES ('66', 'OIP (345).jpg', 'img_6811260451387.jpg', 'media/Uploads/img_6811260451387.jpg', 'image/jpeg', '17983', null, null, '0', '2025-04-29 19:18:28.000000', null, '4');
INSERT INTO `archivo` VALUES ('67', 'OIPqewrthyjuk,l (1).jpg', 'img_68112604541e5.jpg', 'media/Uploads/img_68112604541e5.jpg', 'image/jpeg', '14917', null, null, '0', '2025-04-29 19:18:28.000000', null, '4');
INSERT INTO `archivo` VALUES ('68', 'OIP (1).jpg', 'img_681126045f1e2.jpg', 'media/Uploads/img_681126045f1e2.jpg', 'image/jpeg', '30729', null, null, '0', '2025-04-29 19:18:28.000000', null, '4');
INSERT INTO `archivo` VALUES ('69', 'fbb15c80e6034874.jpg', 'blobid1745954326949.jpg', 'media/Uploads/fbb15c80e6034874.jpg', 'image/jpeg', '14917', '', '', '0', '2025-04-29 19:18:49.000000', null, '4');
INSERT INTO `archivo` VALUES ('70', 'qr_actual (3).png', 'img_6819d239e24f5.png', 'media/Uploads/img_6819d239e24f5.png', 'image/png', '8858', null, null, '0', '2025-05-06 09:11:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('71', 'qr_actual (3).png', 'img_6819e77ba6637.png', 'media/Uploads/img_6819e77ba6637.png', 'image/png', '8858', null, null, '0', '2025-05-06 10:42:03.000000', null, '4');
INSERT INTO `archivo` VALUES ('72', 'megaphone.png', 'img_6819e77ba6604.png', 'media/Uploads/img_6819e77ba6604.png', 'image/png', '584', null, null, '0', '2025-05-06 10:42:03.000000', null, '4');
INSERT INTO `archivo` VALUES ('73', 'OIP (345).jpg', 'img_6819e77bb38ac.jpg', 'media/Uploads/img_6819e77bb38ac.jpg', 'image/jpeg', '17983', null, null, '0', '2025-05-06 10:42:03.000000', null, '4');
INSERT INTO `archivo` VALUES ('74', 'OIPqewrthyjuk,l (1).jpg', 'img_6819e77bb2d47.jpg', 'media/Uploads/img_6819e77bb2d47.jpg', 'image/jpeg', '14917', null, null, '0', '2025-05-06 10:42:03.000000', null, '4');
INSERT INTO `archivo` VALUES ('75', 'e6f11db5738926c4.png', 'blobid1746528134688.png', 'media/Uploads/e6f11db5738926c4.png', 'image/png', '8858', '', '', '0', '2025-05-06 10:42:15.000000', null, '4');
INSERT INTO `archivo` VALUES ('76', 'qr_actual (3).png', 'img_6819e97ac3088.png', 'media/Uploads/img_6819e97ac3088.png', 'image/png', '8858', null, null, '0', '2025-05-06 10:50:34.000000', null, '4');
INSERT INTO `archivo` VALUES ('77', 'OIPqewrthyjuk,l (1).jpg', 'img_6819e97ac31e8.jpg', 'media/Uploads/img_6819e97ac31e8.jpg', 'image/jpeg', '14917', null, null, '0', '2025-05-06 10:50:34.000000', null, '4');
INSERT INTO `archivo` VALUES ('78', 'OIP (345).jpg', 'img_6819e97acb4f0.jpg', 'media/Uploads/img_6819e97acb4f0.jpg', 'image/jpeg', '17983', null, null, '0', '2025-05-06 10:50:34.000000', null, '4');
INSERT INTO `archivo` VALUES ('79', 'megaphone.png', 'img_6819eb6ccdd70.png', 'media/Uploads/img_6819eb6ccdd70.png', 'image/png', '584', null, null, '0', '2025-05-06 10:58:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('80', 'calendar.png', 'img_6819eb6ccd3ed.png', 'media/Uploads/img_6819eb6ccd3ed.png', 'image/png', '296', null, null, '0', '2025-05-06 10:58:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('81', 'qr_actual (3).png', 'img_6819eb6cd6624.png', 'media/Uploads/img_6819eb6cd6624.png', 'image/png', '8858', null, null, '0', '2025-05-06 10:58:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('82', 'OIPqewrthyjuk,l (1).jpg', 'img_6819eb6cd91f1.jpg', 'media/Uploads/img_6819eb6cd91f1.jpg', 'image/jpeg', '14917', null, null, '0', '2025-05-06 10:58:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('83', 'OIP (345).jpg', 'img_6819eb6cdd162.jpg', 'media/Uploads/img_6819eb6cdd162.jpg', 'image/jpeg', '17983', null, null, '0', '2025-05-06 10:58:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('84', 'c9a33becb88eea47.png', 'blobid1746529144702.png', 'media/Uploads/c9a33becb88eea47.png', 'image/png', '584', '', '', '0', '2025-05-06 10:59:05.000000', null, '4');
INSERT INTO `archivo` VALUES ('85', 'megaphone.png', 'img_6819ecb5cfc79.png', 'media/Uploads/img_6819ecb5cfc79.png', 'image/png', '584', null, null, '0', '2025-05-06 11:04:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('86', 'calendar.png', 'img_6819efad33095.png', 'media/Uploads/img_6819efad33095.png', 'image/png', '296', null, null, '0', '2025-05-06 11:17:01.000000', null, '4');
INSERT INTO `archivo` VALUES ('87', 'megaphone.png', 'img_6819efad327ac.png', 'media/Uploads/img_6819efad327ac.png', 'image/png', '584', null, null, '0', '2025-05-06 11:17:01.000000', null, '4');
INSERT INTO `archivo` VALUES ('88', '160528841b4c87d1.png', 'blobid1746530231500.png', 'media/Uploads/160528841b4c87d1.png', 'image/png', '584', '', '', '0', '2025-05-06 11:17:12.000000', null, '4');
INSERT INTO `archivo` VALUES ('89', 'OIPqewrthyjuk,l (1).jpg', 'img_6819f0fb9bea6.jpg', 'media/Uploads/img_6819f0fb9bea6.jpg', 'image/jpeg', '14917', null, null, '0', '2025-05-06 11:22:35.000000', null, '4');
INSERT INTO `archivo` VALUES ('90', 'qr_actual (3).png', 'img_6819f0fb9bdac.png', 'media/Uploads/img_6819f0fb9bdac.png', 'image/png', '8858', null, null, '0', '2025-05-06 11:22:35.000000', null, '4');
INSERT INTO `archivo` VALUES ('91', 'OIP (345).jpg', 'img_6819f0fba2a69.jpg', 'media/Uploads/img_6819f0fba2a69.jpg', 'image/jpeg', '17983', null, null, '0', '2025-05-06 11:22:35.000000', null, '4');
INSERT INTO `archivo` VALUES ('92', 'OIP (1).jpg', 'img_6819f0fd4eff1.jpg', 'media/Uploads/img_6819f0fd4eff1.jpg', 'image/jpeg', '30729', null, null, '0', '2025-05-06 11:22:37.000000', null, '4');
INSERT INTO `archivo` VALUES ('93', 'Competitividad.jpg', 'img_6819f0fe94a21.jpg', 'media/Uploads/img_6819f0fe94a21.jpg', 'image/jpeg', '114563', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('94', 'blog_21abr-Innovacion.jpg', 'img_6819f0fe97004.jpg', 'media/Uploads/img_6819f0fe97004.jpg', 'image/jpeg', '128018', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('95', 'Imagen de WhatsApp 2025-04-28 a las 21.34.03_c6d6e89c.jpg', 'img_6819f0feabea1.jpg', 'media/Uploads/img_6819f0feabea1.jpg', 'image/jpeg', '168878', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('96', 'qr_actual (2).png', 'img_6819f0feabe04.png', 'media/Uploads/img_6819f0feabe04.png', 'image/png', '8858', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('97', 'R.jpg', 'img_6819f0febfccd.jpg', 'media/Uploads/img_6819f0febfccd.jpg', 'image/jpeg', '346457', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('98', 'hjkk.jpg', 'img_6819f0febfe8a.jpg', 'media/Uploads/img_6819f0febfe8a.jpg', 'image/jpeg', '23061', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('99', 'OIP (2).jpg', 'img_6819f0fed58b7.jpg', 'media/Uploads/img_6819f0fed58b7.jpg', 'image/jpeg', '43166', null, null, '0', '2025-05-06 11:22:38.000000', null, '4');
INSERT INTO `archivo` VALUES ('100', '6425b910a43f9ebf.png', 'blobid1746530569043.png', 'media/Uploads/6425b910a43f9ebf.png', 'image/png', '296', '', '', '0', '2025-05-06 11:22:49.000000', null, '4');
INSERT INTO `archivo` VALUES ('101', 'megaphone.png', 'img_6819f282865a5.png', 'media/Uploads/img_6819f282865a5.png', 'image/png', '584', null, null, '0', '2025-05-06 11:29:06.000000', null, '4');
INSERT INTO `archivo` VALUES ('102', 'calendar.png', 'img_6819f28285906.png', 'media/Uploads/img_6819f28285906.png', 'image/png', '296', null, null, '0', '2025-05-06 11:29:06.000000', null, '4');
INSERT INTO `archivo` VALUES ('103', '3033a8655f4f89d3.png', 'blobid1746530954938.png', 'media/Uploads/3033a8655f4f89d3.png', 'image/png', '584', '', '', '0', '2025-05-06 11:29:15.000000', null, '4');
INSERT INTO `archivo` VALUES ('104', 'megaphone.png', 'img_6819f2cd6f535.png', 'media/Uploads/img_6819f2cd6f535.png', 'image/png', '584', null, null, '0', '2025-05-06 11:30:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('105', 'qr_actual (3).png', 'img_6819f2cd6fcf3.png', 'media/Uploads/img_6819f2cd6fcf3.png', 'image/png', '8858', null, null, '0', '2025-05-06 11:30:21.000000', null, '4');
INSERT INTO `archivo` VALUES ('106', '9918e4ddda4e0ebf.png', 'blobid1746531029430.png', 'media/Uploads/9918e4ddda4e0ebf.png', 'image/png', '8858', '', '', '0', '2025-05-06 11:30:30.000000', null, '4');
INSERT INTO `archivo` VALUES ('107', 'hjkk.jpg', 'img_6819f48ad8f1b.jpg', 'media/Uploads/img_6819f48ad8f1b.jpg', 'image/jpeg', '23061', null, null, '0', '2025-05-06 11:37:46.000000', null, '4');
INSERT INTO `archivo` VALUES ('108', '36264d2af98704a9.jpg', 'blobid1746531484303.jpg', 'media/Uploads/36264d2af98704a9.jpg', 'image/jpeg', '14917', '', '', '0', '2025-05-06 11:38:04.000000', null, '4');
INSERT INTO `archivo` VALUES ('109', 'megaphone.png', 'img_6819f5dc894e8.png', 'media/Uploads/img_6819f5dc894e8.png', 'image/png', '584', null, null, '0', '2025-05-06 11:43:24.000000', null, '4');
INSERT INTO `archivo` VALUES ('110', 'calendar.png', 'img_6819f5dc89482.png', 'media/Uploads/img_6819f5dc89482.png', 'image/png', '296', null, null, '0', '2025-05-06 11:43:24.000000', null, '4');
INSERT INTO `archivo` VALUES ('111', 'a9904de8eb3dd9ea.png', 'blobid1746531813556.png', 'media/Uploads/a9904de8eb3dd9ea.png', 'image/png', '584', '', '', '0', '2025-05-06 11:43:34.000000', null, '4');
INSERT INTO `archivo` VALUES ('112', 'calendar.png', 'img_681a657494210.png', 'media/Uploads/img_681a657494210.png', 'image/png', '296', null, null, '0', '2025-05-06 19:39:32.000000', null, '4');
INSERT INTO `archivo` VALUES ('113', '8220235f940fcf7d.png', 'blobid1746560397536.png', 'media/Uploads/8220235f940fcf7d.png', 'image/png', '584', '', '', '0', '2025-05-06 19:39:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('114', '560880e6f33dd3a9.png', 'blobid1746560406376.png', 'media/Uploads/560880e6f33dd3a9.png', 'image/png', '584', '', '', '0', '2025-05-06 19:40:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('115', 'qr_actual (3).png', 'img_681a65b0c9e8a.png', 'media/Uploads/img_681a65b0c9e8a.png', 'image/png', '8858', null, null, '0', '2025-05-06 19:40:32.000000', null, '4');
INSERT INTO `archivo` VALUES ('116', 'calendar.png', 'img_681a678359b37.png', 'media/Uploads/img_681a678359b37.png', 'image/png', '296', null, null, '0', '2025-05-06 19:48:19.000000', null, '4');
INSERT INTO `archivo` VALUES ('117', 'megaphone.png', 'img_681a67835a3ad.png', 'media/Uploads/img_681a67835a3ad.png', 'image/png', '584', null, null, '0', '2025-05-06 19:48:19.000000', null, '4');
INSERT INTO `archivo` VALUES ('118', 'qr_actual (3).png', 'img_681a678361c9c.png', 'media/Uploads/img_681a678361c9c.png', 'image/png', '8858', null, null, '0', '2025-05-06 19:48:19.000000', null, '4');
INSERT INTO `archivo` VALUES ('119', '70d733f9e3893225.png', 'blobid1746560910125.png', 'media/Uploads/70d733f9e3893225.png', 'image/png', '296', '', '', '0', '2025-05-06 19:48:30.000000', null, '4');
INSERT INTO `archivo` VALUES ('120', 'megaphone.png', 'img_681a67ab2da8c.png', 'media/Uploads/img_681a67ab2da8c.png', 'image/png', '584', null, null, '0', '2025-05-06 19:48:59.000000', null, '4');
INSERT INTO `archivo` VALUES ('121', 'calendar.png', 'img_681a67ab2a05b.png', 'media/Uploads/img_681a67ab2a05b.png', 'image/png', '296', null, null, '0', '2025-05-06 19:48:59.000000', null, '4');
INSERT INTO `archivo` VALUES ('122', 'qr_actual (3).png', 'img_681a67ab3411f.png', 'media/Uploads/img_681a67ab3411f.png', 'image/png', '8858', null, null, '0', '2025-05-06 19:48:59.000000', null, '4');
INSERT INTO `archivo` VALUES ('123', 'megaphone.png', 'img_681a68228555e.png', 'media/Uploads/img_681a68228555e.png', 'image/png', '584', null, null, '0', '2025-05-06 19:50:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('124', 'calendar.png', 'img_681a682284d11.png', 'media/Uploads/img_681a682284d11.png', 'image/png', '296', null, null, '0', '2025-05-06 19:50:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('125', 'qr_actual (3).png', 'img_681a6822908d9.png', 'media/Uploads/img_681a6822908d9.png', 'image/png', '8858', null, null, '0', '2025-05-06 19:50:58.000000', null, '4');
INSERT INTO `archivo` VALUES ('126', 'f84be9b238a5764b.png', 'blobid1746561067674.png', 'media/Uploads/f84be9b238a5764b.png', 'image/png', '584', '', '', '0', '2025-05-06 19:51:08.000000', null, '4');
INSERT INTO `archivo` VALUES ('127', 'megaphone.png', 'img_681a6890c75bb.png', 'media/Uploads/img_681a6890c75bb.png', 'image/png', '584', null, null, '0', '2025-05-06 19:52:48.000000', null, '4');
INSERT INTO `archivo` VALUES ('128', '9de5fb6b1defb06d.png', 'blobid1746561202748.png', 'media/Uploads/9de5fb6b1defb06d.png', 'image/png', '296', '', '', '0', '2025-05-06 19:53:24.000000', null, '4');
INSERT INTO `archivo` VALUES ('129', 'calendar.png', 'img_681a6c41c5eb2.png', 'media/Uploads/img_681a6c41c5eb2.png', 'image/png', '296', null, null, '0', '2025-05-06 20:08:33.000000', null, '4');
INSERT INTO `archivo` VALUES ('130', 'megaphone.png', 'img_681a6c5120d08.png', 'media/Uploads/img_681a6c5120d08.png', 'image/png', '584', null, null, '0', '2025-05-06 20:08:49.000000', null, '4');
INSERT INTO `archivo` VALUES ('131', 'calendar.png', 'img_681a6c511fe86.png', 'media/Uploads/img_681a6c511fe86.png', 'image/png', '296', null, null, '0', '2025-05-06 20:08:49.000000', null, '4');
INSERT INTO `archivo` VALUES ('132', '721cd674d46eea9b.png', 'blobid1746562140296.png', 'media/Uploads/721cd674d46eea9b.png', 'image/png', '584', '', '', '0', '2025-05-06 20:09:02.000000', null, '4');
INSERT INTO `archivo` VALUES ('133', 'calendar.png', 'img_681aecd3a8e8a.png', 'media/Uploads/img_681aecd3a8e8a.png', 'image/png', '296', null, null, '0', '2025-05-07 05:17:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('134', 'megaphone.png', 'img_681aecd3a9270.png', 'media/Uploads/img_681aecd3a9270.png', 'image/png', '584', null, null, '0', '2025-05-07 05:17:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('135', 'qr_actual (3).png', 'img_681aecd3b6645.png', 'media/Uploads/img_681aecd3b6645.png', 'image/png', '8858', null, null, '0', '2025-05-07 05:17:07.000000', null, '4');
INSERT INTO `archivo` VALUES ('136', 'blobid1746595036149.png', 'img_681aecdcef78d.png', 'media/Uploads/img_681aecdcef78d.png', 'image/png', '296', null, null, '0', '2025-05-07 05:17:16.000000', null, '4');
INSERT INTO `archivo` VALUES ('137', 'calendar.png', 'img_681af40b44cfd.png', 'media/Uploads/img_681af40b44cfd.png', 'image/png', '296', null, null, '0', '2025-05-07 05:47:55.000000', null, '4');
INSERT INTO `archivo` VALUES ('138', 'megaphone.png', 'img_681af40b4876c.png', 'media/Uploads/img_681af40b4876c.png', 'image/png', '584', null, null, '0', '2025-05-07 05:47:55.000000', null, '4');
INSERT INTO `archivo` VALUES ('139', 'qr_actual (3).png', 'img_681af40b587e7.png', 'media/Uploads/img_681af40b587e7.png', 'image/png', '8858', null, null, '0', '2025-05-07 05:47:55.000000', null, '4');
INSERT INTO `archivo` VALUES ('140', 'blobid1746596901748.png', 'img_681af426a3fc0.png', 'media/Uploads/img_681af426a3fc0.png', 'image/png', '296', null, null, '0', '2025-05-07 05:48:22.000000', null, '4');
INSERT INTO `archivo` VALUES ('141', 'calendar.png', 'img_681bb9f8e715a.png', 'media/Uploads/img_681bb9f8e715a.png', 'image/png', '296', null, null, '0', '2025-05-07 19:52:24.000000', null, '4');
INSERT INTO `archivo` VALUES ('142', 'a42d2c91a0b10b3f.png', 'blobid1746647551764.png', 'media/Uploads/a42d2c91a0b10b3f.png', 'image/png', '296', '', '', '0', '2025-05-07 19:52:32.000000', null, '4');
INSERT INTO `archivo` VALUES ('143', 'calendar.png', 'img_681bbb401c60a.png', 'media/Uploads/img_681bbb401c60a.png', 'image/png', '296', null, null, '0', '2025-05-07 19:57:52.000000', null, '4');
INSERT INTO `archivo` VALUES ('144', 'calendar.png', 'img_681bbba93466d.png', 'media/Uploads/img_681bbba93466d.png', 'image/png', '296', null, null, '0', '2025-05-07 19:59:37.000000', null, '4');
INSERT INTO `archivo` VALUES ('145', 'ilustracion-universo-cosmico-abstracto_4096x2280_xtrafondos.com.jpg', 'img_681d0fbc88e5e.jpg', 'media/Uploads/img_681d0fbc88e5e.jpg', 'image/jpeg', '1545191', null, null, '0', '2025-05-08 20:10:36.000000', null, '4');
INSERT INTO `archivo` VALUES ('146', 'darth-vader-minimalista_3840x2160_xtrafondos.com.jpg', 'img_681d0fbc88e54.jpg', 'media/Uploads/img_681d0fbc88e54.jpg', 'image/jpeg', '557237', null, null, '0', '2025-05-08 20:10:36.000000', null, '4');
INSERT INTO `archivo` VALUES ('147', 'calendar.png', 'img_681d0fbc9cad9.png', 'media/Uploads/img_681d0fbc9cad9.png', 'image/png', '296', null, null, '0', '2025-05-08 20:10:36.000000', null, '4');
INSERT INTO `archivo` VALUES ('148', 'megaphone.png', 'img_681d0fbc9d9b2.png', 'media/Uploads/img_681d0fbc9d9b2.png', 'image/png', '584', null, null, '0', '2025-05-08 20:10:36.000000', null, '4');
INSERT INTO `archivo` VALUES ('149', 'qr_caja_1 (1).png', 'b7a0b664-7ab5-4847-8ffe-4bd24fdb4bc2.png', 'media/templates/images/b7a0b664-7ab5-4847-8ffe-4bd24fdb4bc2.png', 'image/png', '9040', null, null, '0', '2025-05-26 15:38:56.746195', '2025-05-26 15:38:56.746195', '4');
INSERT INTO `archivo` VALUES ('150', 'qr_caja_1 (2).png', 'b961ac9f-7fb3-4467-a563-a11d19bb0154.png', 'media/templates/images/b961ac9f-7fb3-4467-a563-a11d19bb0154.png', 'image/png', '9040', null, null, '0', '2025-05-26 15:40:29.016210', '2025-05-26 15:40:29.016210', '4');
INSERT INTO `archivo` VALUES ('151', 'qr_caja_1 (2).png', '856fe835-2e69-46f0-940c-b00a426cfab8.png', 'media/templates/images/856fe835-2e69-46f0-940c-b00a426cfab8.png', 'image/png', '9040', null, null, '0', '2025-05-26 15:40:53.073514', '2025-05-26 15:40:53.073514', '4');
INSERT INTO `archivo` VALUES ('152', 'qr_caja_1 (2).png', 'd75e8941-0f73-4161-95bd-5523c473e35b.png', 'media/templates/images/d75e8941-0f73-4161-95bd-5523c473e35b.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:07:53.981247', '2025-05-26 16:07:53.981247', '4');
INSERT INTO `archivo` VALUES ('153', 'qr_caja_1 (2).png', 'd195ee76-efd9-4717-80c9-7db1f37a40f8.png', 'media/templates/images/d195ee76-efd9-4717-80c9-7db1f37a40f8.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:23:25.482746', '2025-05-26 16:23:25.482746', '4');
INSERT INTO `archivo` VALUES ('154', 'qr_caja_1 (1).png', '50f5f79b-ca8b-40fd-a8fd-4b510ce896b2.png', 'media/templates/images/50f5f79b-ca8b-40fd-a8fd-4b510ce896b2.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:23:25.492762', '2025-05-26 16:23:25.492762', '4');
INSERT INTO `archivo` VALUES ('155', 'qr_caja_1.png', 'ace583a0-8505-469f-9640-87a6f22ca970.png', 'media/templates/images/ace583a0-8505-469f-9640-87a6f22ca970.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:23:25.525077', '2025-05-26 16:23:25.525077', '4');
INSERT INTO `archivo` VALUES ('156', 'qr_caja_1 (2).png', '92fed7df-9242-47ba-b1d1-67b72a461db9.png', 'media/templates/images/92fed7df-9242-47ba-b1d1-67b72a461db9.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:42:58.978672', '2025-05-26 16:42:58.978672', '4');
INSERT INTO `archivo` VALUES ('157', 'qr_caja_1 (2).png', '02a97db2-c30f-4c56-9b4a-98071d76d0c3.png', 'media/templates/images/02a97db2-c30f-4c56-9b4a-98071d76d0c3.png', 'image/png', '9040', null, null, '0', '2025-05-26 16:43:08.648319', '2025-05-26 16:43:08.648319', '4');
INSERT INTO `archivo` VALUES ('158', 'qr_caja_1 (2).png', 'efc3372e-3e67-4dad-9b0f-ae17512ac308.png', 'media/templates/images/efc3372e-3e67-4dad-9b0f-ae17512ac308.png', 'image/png', '9040', null, null, '0', '2025-05-26 17:46:06.908170', '2025-05-26 17:46:06.908170', '4');
INSERT INTO `archivo` VALUES ('159', 'qr_caja_1 (1).png', '6b867e87-e753-4dfe-914f-546ef9c61fee.png', 'media/templates/images/6b867e87-e753-4dfe-914f-546ef9c61fee.png', 'image/png', '9040', null, null, '0', '2025-05-26 18:01:17.827014', '2025-05-26 18:01:17.827014', '4');
INSERT INTO `archivo` VALUES ('160', 'cq5dam.thumbnail.cropped.1500.844.jpeg', 'ded0aa5b-b9c9-416b-b91d-8ec8a45c8dfb.jpeg', 'media/templates/images/ded0aa5b-b9c9-416b-b91d-8ec8a45c8dfb.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:03:43.443232', '2025-05-27 00:03:43.444249', '4');
INSERT INTO `archivo` VALUES ('161', 'cq5dam.thumbnail.cropped.1500.844.png', '691f8f8c-b2c4-4fff-9642-b0c1f714b9d1.png', 'media/templates/images/691f8f8c-b2c4-4fff-9642-b0c1f714b9d1.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:03:43.448230', '2025-05-27 00:03:43.448230', '4');
INSERT INTO `archivo` VALUES ('162', '_104238766_gettyimages-566455379.jpg', '0b0f3941-b3ec-4001-9905-3fc53b1ac384.jpg', 'media/templates/images/0b0f3941-b3ec-4001-9905-3fc53b1ac384.jpg', 'image/jpeg', '189379', null, null, '0', '2025-05-27 00:03:43.461231', '2025-05-27 00:03:43.461231', '4');
INSERT INTO `archivo` VALUES ('163', 'cq5dam.thumbnail.cropped.1500.844.jpeg', 'e6220ba3-031e-444c-8d83-6f2a10678bb3.jpeg', 'media/templates/images/e6220ba3-031e-444c-8d83-6f2a10678bb3.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:05:09.480089', '2025-05-27 00:05:09.480089', '4');
INSERT INTO `archivo` VALUES ('164', 'cq5dam.thumbnail.cropped.1500.844.png', '4205c701-d32e-4529-93df-d8bc1683811f.png', 'media/templates/images/4205c701-d32e-4529-93df-d8bc1683811f.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:05:09.481088', '2025-05-27 00:05:09.481088', '4');
INSERT INTO `archivo` VALUES ('165', '_104238766_gettyimages-566455379.jpg', '3e72cc99-96ea-4621-994c-6d50ae119847.jpg', 'media/templates/images/3e72cc99-96ea-4621-994c-6d50ae119847.jpg', 'image/jpeg', '189379', null, null, '0', '2025-05-27 00:05:09.517139', '2025-05-27 00:05:09.517139', '4');
INSERT INTO `archivo` VALUES ('166', 'cq5dam.thumbnail.cropped.1500.844.png', '2b8fc66e-1122-48da-ad96-35059514d527.png', 'media/templates/images/2b8fc66e-1122-48da-ad96-35059514d527.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:08:38.945099', '2025-05-27 00:08:38.945099', '4');
INSERT INTO `archivo` VALUES ('167', 'cq5dam.thumbnail.cropped.1500.844.png', 'b3047319-bc49-490d-8bbf-3d65ca41f822.png', 'media/templates/images/b3047319-bc49-490d-8bbf-3d65ca41f822.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:08:43.748798', '2025-05-27 00:08:43.748798', '4');
INSERT INTO `archivo` VALUES ('168', 'cq5dam.thumbnail.cropped.1500.844.png', 'd04e42f0-f0b5-4e8b-9e75-2fdcb8cb3a2d.png', 'media/templates/images/d04e42f0-f0b5-4e8b-9e75-2fdcb8cb3a2d.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:09:29.176239', '2025-05-27 00:09:29.176239', '4');
INSERT INTO `archivo` VALUES ('169', 'cq5dam.thumbnail.cropped.1500.844.png', 'e0fafe8f-d0b6-4f9e-b706-0fe85820f316.png', 'media/templates/images/e0fafe8f-d0b6-4f9e-b706-0fe85820f316.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:09:42.481044', '2025-05-27 00:09:42.481044', '4');
INSERT INTO `archivo` VALUES ('170', 'cq5dam.thumbnail.cropped.1500.844.jpeg', 'e3c0b1cf-cf06-404a-972a-2a081de894de.jpeg', 'media/templates/images/e3c0b1cf-cf06-404a-972a-2a081de894de.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:09:49.792979', '2025-05-27 00:09:49.792979', '4');
INSERT INTO `archivo` VALUES ('171', 'xcq5dam.thumbnail.cropped.1500.844.png', '1ad767d4-ae34-4db7-aa24-8bbde5e7be37.png', 'media/templates/images/1ad767d4-ae34-4db7-aa24-8bbde5e7be37.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:09:49.796981', '2025-05-27 00:09:49.796981', '4');
INSERT INTO `archivo` VALUES ('172', '_104238766_gettyimages-566455379.jpg', 'd57dd236-9fb2-40ba-8a11-bda8a3fbac4d.jpg', 'media/templates/images/d57dd236-9fb2-40ba-8a11-bda8a3fbac4d.jpg', 'image/jpeg', '189379', null, null, '0', '2025-05-27 00:09:49.812980', '2025-05-27 00:09:49.812980', '4');
INSERT INTO `archivo` VALUES ('173', 'cq5dam.thumbnail.cropped.1500.844.jpeg', '748b8868-6b7b-45a3-8c84-9a31bb209da4.jpeg', 'media/templates/images/748b8868-6b7b-45a3-8c84-9a31bb209da4.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:32:35.714818', '2025-05-27 00:32:35.714818', '4');
INSERT INTO `archivo` VALUES ('174', 'cq5dam.thumbnail.cropped.1500.844.png', '88da3352-eae1-4b07-8670-155bf1abc854.png', 'media/templates/images/88da3352-eae1-4b07-8670-155bf1abc854.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:32:35.718823', '2025-05-27 00:32:35.718823', '4');
INSERT INTO `archivo` VALUES ('175', 'cq5dam.thumbnail.cropped.1500.844.jpeg', '7544f3be-9ecd-4cb8-af8b-8f0a4e1f205b.jpeg', 'media/templates/images/7544f3be-9ecd-4cb8-af8b-8f0a4e1f205b.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:32:52.212050', '2025-05-27 00:32:52.212050', '4');
INSERT INTO `archivo` VALUES ('176', 'cq5dam.thumbnail.cropped.1500.844.png', '9b7a110c-aa48-444b-a127-2f7810ba3e0c.png', 'media/templates/images/9b7a110c-aa48-444b-a127-2f7810ba3e0c.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:32:52.215049', '2025-05-27 00:32:52.215049', '4');
INSERT INTO `archivo` VALUES ('177', 'cq5dam.thumbnail.cropped.1500.844.png', 'dad123c6-71c2-4ca1-bfd8-2f283ed3e041.png', 'media/templates/images/dad123c6-71c2-4ca1-bfd8-2f283ed3e041.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:34:07.655188', '2025-05-27 00:34:07.655188', '4');
INSERT INTO `archivo` VALUES ('178', 'cq5dam.thumbnail.cropped.1500.844.png', 'c6c24cd0-f3fd-4327-ad32-0019bf6b3730.png', 'media/templates/images/c6c24cd0-f3fd-4327-ad32-0019bf6b3730.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:42:05.666249', '2025-05-27 00:42:05.666249', '4');
INSERT INTO `archivo` VALUES ('179', 'cq5dam.thumbnail.cropped.1500.844.jpeg', '26dd858e-1767-478f-a3ee-96875d8b2db1.jpeg', 'media/templates/images/26dd858e-1767-478f-a3ee-96875d8b2db1.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-27 00:42:15.122356', '2025-05-27 00:42:15.122356', '4');
INSERT INTO `archivo` VALUES ('180', 'cq5dam.thumbnail.cropped.1500.844.png', 'ed7748d8-bc37-46c4-98b7-284a896a4136.png', 'media/templates/images/ed7748d8-bc37-46c4-98b7-284a896a4136.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:42:15.126356', '2025-05-27 00:42:15.126356', '4');
INSERT INTO `archivo` VALUES ('181', 'cq5dam.thumbnail.cropped.1500.844.png', '45d80953-0547-4c12-91e0-3ae89b119765.png', 'media/templates/images/45d80953-0547-4c12-91e0-3ae89b119765.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:44:31.450090', '2025-05-27 00:44:31.450090', '4');
INSERT INTO `archivo` VALUES ('182', 'cq5dam.thumbnail.cropped.1500.844.png', '43adcfd1-359b-4279-bede-70e06f9cbdd2.png', 'media/templates/images/43adcfd1-359b-4279-bede-70e06f9cbdd2.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:45:55.773710', '2025-05-27 00:45:55.773710', '4');
INSERT INTO `archivo` VALUES ('183', 'cq5dam.thumbnail.cropped.1500.844.png', '9e19faeb-db76-4570-9cb1-f88bd65e97eb.png', 'media/templates/images/9e19faeb-db76-4570-9cb1-f88bd65e97eb.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:46:36.142843', '2025-05-27 00:46:36.142843', '4');
INSERT INTO `archivo` VALUES ('184', 'cq5dam.thumbnail.cropped.1500.844.png', 'c22621d3-5a43-4e7e-a655-2c57cb65f160.png', 'media/templates/images/c22621d3-5a43-4e7e-a655-2c57cb65f160.png', 'image/png', '1009625', null, null, '0', '2025-05-27 00:47:16.902504', '2025-05-27 00:47:16.902504', '4');
INSERT INTO `archivo` VALUES ('185', 'cq5dam.thumbnail.cropped.1500.844.png', '8c9c4636-3359-4246-a211-08386ec76e8c.png', 'media/templates/images/8c9c4636-3359-4246-a211-08386ec76e8c.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:00:45.631339', '2025-05-27 01:00:45.631339', '4');
INSERT INTO `archivo` VALUES ('186', 'cq5dam.thumbnail.cropped.1500.844.png', 'b990e074-2ce0-4fd1-a530-0b64921ceb19.png', 'media/templates/images/b990e074-2ce0-4fd1-a530-0b64921ceb19.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:01:44.089207', '2025-05-27 01:01:44.089207', '4');
INSERT INTO `archivo` VALUES ('187', 'cq5dam.thumbnail.cropped.1500.844.png', 'b0c87f3d-44e8-4be9-bb37-51a361757b8f.png', 'media/templates/images/b0c87f3d-44e8-4be9-bb37-51a361757b8f.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:04:41.623229', '2025-05-27 01:04:41.623229', '4');
INSERT INTO `archivo` VALUES ('188', 'cq5dam.thumbnail.cropped.1500.844.png', '4f60ed40-0725-4b43-ad34-646d7efd56e9.png', 'media/templates/images/4f60ed40-0725-4b43-ad34-646d7efd56e9.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:16:30.677400', '2025-05-27 01:16:30.677400', '4');
INSERT INTO `archivo` VALUES ('189', 'cq5dam.thumbnail.cropped.1500.844.png', '4a957752-dd0f-438e-82cb-dab2e1ef8a5b.png', 'media/templates/images/4a957752-dd0f-438e-82cb-dab2e1ef8a5b.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:18:13.746333', '2025-05-27 01:18:13.746333', '4');
INSERT INTO `archivo` VALUES ('190', 'cq5dam.thumbnail.cropped.1500.844.png', 'c4b7ba94-237f-4b6b-be1a-bd49e638a2e7.png', 'media/templates/images/c4b7ba94-237f-4b6b-be1a-bd49e638a2e7.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:20:29.510559', '2025-05-27 01:20:29.510559', '4');
INSERT INTO `archivo` VALUES ('191', 'cq5dam.thumbnail.cropped.1500.844.png', 'b5948ca0-e569-4b39-a897-5fb2b47444ea.png', 'media/templates/images/b5948ca0-e569-4b39-a897-5fb2b47444ea.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:23:01.182303', '2025-05-27 01:23:01.182303', '4');
INSERT INTO `archivo` VALUES ('192', 'cq5dam.thumbnail.cropped.1500.844.png', 'a56c069e-f3b7-46a8-b1cc-3c8f64cc1f52.png', 'media/templates/images/a56c069e-f3b7-46a8-b1cc-3c8f64cc1f52.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:24:48.702577', '2025-05-27 01:24:48.702577', '4');
INSERT INTO `archivo` VALUES ('193', 'cq5dam.thumbnail.cropped.1500.844.png', '60b14f3d-2006-4906-b541-b97539d57de8.png', 'media/templates/images/60b14f3d-2006-4906-b541-b97539d57de8.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:27:01.622538', '2025-05-27 01:27:01.622538', '4');
INSERT INTO `archivo` VALUES ('194', 'cq5dam.thumbnail.cropped.1500.844.png', '69f2c809-8d0e-48ec-8740-337d70e85bb8.png', 'media/templates/images/69f2c809-8d0e-48ec-8740-337d70e85bb8.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:32:14.462230', '2025-05-27 01:32:14.462230', '4');
INSERT INTO `archivo` VALUES ('195', 'cq5dam.thumbnail.cropped.1500.844.png', '3a47c272-c4de-46e1-a6f7-568b1a294205.png', 'media/templates/images/3a47c272-c4de-46e1-a6f7-568b1a294205.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:36:27.298872', '2025-05-27 01:36:27.298872', '4');
INSERT INTO `archivo` VALUES ('196', 'cq5dam.thumbnail.cropped.1500.844.png', 'd4c379f5-a3ce-4057-8119-9a052a738ce7.png', 'media/templates/images/d4c379f5-a3ce-4057-8119-9a052a738ce7.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:39:24.786613', '2025-05-27 01:39:24.786613', '4');
INSERT INTO `archivo` VALUES ('197', 'cq5dam.thumbnail.cropped.1500.844.png', '2dc4c418-3555-44f8-8b66-97202c463809.png', 'media/templates/images/2dc4c418-3555-44f8-8b66-97202c463809.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:42:52.358635', '2025-05-27 01:42:52.358635', '4');
INSERT INTO `archivo` VALUES ('198', 'cq5dam.thumbnail.cropped.1500.844.png', 'f6b10813-a497-4ef1-b83d-dc5e8847e602.png', 'media/templates/images/f6b10813-a497-4ef1-b83d-dc5e8847e602.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:43:53.207622', '2025-05-27 01:43:53.207622', '4');
INSERT INTO `archivo` VALUES ('199', 'cq5dam.thumbnail.cropped.1500.844.png', 'e3506811-7b09-40f0-a780-23ccd27d5d4e.png', 'media/templates/images/e3506811-7b09-40f0-a780-23ccd27d5d4e.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:46:10.294120', '2025-05-27 01:46:10.294120', '4');
INSERT INTO `archivo` VALUES ('200', 'cq5dam.thumbnail.cropped.1500.844.png', '486f25aa-6e4d-47da-a735-5259ec4f63bd.png', 'media/templates/images/486f25aa-6e4d-47da-a735-5259ec4f63bd.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:49:41.077631', '2025-05-27 01:49:41.077631', '4');
INSERT INTO `archivo` VALUES ('201', 'cq5dam.thumbnail.cropped.1500.844.png', 'ea775673-af80-4fe9-9606-d56c91df00f2.png', 'media/templates/images/ea775673-af80-4fe9-9606-d56c91df00f2.png', 'image/png', '1009625', null, null, '0', '2025-05-27 01:52:34.223467', '2025-05-27 01:52:34.223467', '4');
INSERT INTO `archivo` VALUES ('202', 'cq5dam.thumbnail.cropped.1500.844.png', 'fc166eba-29ed-426a-98de-80d8761903af.png', 'media/templates/images/fc166eba-29ed-426a-98de-80d8761903af.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:02:20.411959', '2025-05-28 00:02:20.411959', '4');
INSERT INTO `archivo` VALUES ('203', 'cq5dam.thumbnail.cropped.1500.844.png', '989e1c42-7933-440a-8d70-1256a066aa35.png', 'media/media/templates/images/989e1c42-7933-440a-8d70-1256a066aa35.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:12:06.721712', '2025-05-28 00:12:06.721712', '4');
INSERT INTO `archivo` VALUES ('204', 'cq5dam.thumbnail.cropped.1500.844.png', '4be0ee03-166e-43a8-af3e-a3fb595dd867.png', 'media/templates/images/4be0ee03-166e-43a8-af3e-a3fb595dd867.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:15:29.739848', '2025-05-28 00:15:29.739848', '4');
INSERT INTO `archivo` VALUES ('205', 'cq5dam.thumbnail.cropped.1500.844.png', '5583425e-1820-4f92-8c50-535f9240037f.png', 'media/templates/images/5583425e-1820-4f92-8c50-535f9240037f.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:22:05.648401', '2025-05-28 00:22:05.648401', '4');
INSERT INTO `archivo` VALUES ('206', 'cq5dam.thumbnail.cropped.1500.844.png', '13eab11e-a3ed-4b53-b6c9-71b337c30b6d.png', 'media/templates/images/13eab11e-a3ed-4b53-b6c9-71b337c30b6d.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:38:09.366973', '2025-05-28 00:38:09.366973', '4');
INSERT INTO `archivo` VALUES ('207', 'cq5dam.thumbnail.cropped.1500.844.png', 'd0853a33-c2b5-4585-b86b-030084b9ee24.png', 'media/templates/images/d0853a33-c2b5-4585-b86b-030084b9ee24.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:42:48.359625', '2025-05-28 00:42:48.359625', '4');
INSERT INTO `archivo` VALUES ('208', 'cq5dam.thumbnail.cropped.1500.844.png', 'badf01f9-44c6-4c5d-8a69-fafb7554bd34.png', 'media/templates/images/badf01f9-44c6-4c5d-8a69-fafb7554bd34.png', 'image/png', '1009625', null, null, '0', '2025-05-28 00:51:38.157901', '2025-05-28 00:51:38.157901', '4');
INSERT INTO `archivo` VALUES ('209', 'cq5dam.thumbnail.cropped.1500.844.png', 'c967125a-d9ea-4b42-ad35-6766363b3d79.png', 'media/templates/images/c967125a-d9ea-4b42-ad35-6766363b3d79.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:10:54.830569', '2025-05-28 01:10:54.830569', '4');
INSERT INTO `archivo` VALUES ('210', 'cq5dam.thumbnail.cropped.1500.844.png', '741207bc-4356-481a-b7f8-32633be2c946.png', 'media/templates/images/741207bc-4356-481a-b7f8-32633be2c946.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:13:53.501408', '2025-05-28 01:13:53.501408', '4');
INSERT INTO `archivo` VALUES ('211', 'cq5dam.thumbnail.cropped.1500.844.png', '7cae025e-118a-49aa-9970-d178b0105bd1.png', 'media/templates/images/7cae025e-118a-49aa-9970-d178b0105bd1.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:17:10.009459', '2025-05-28 01:17:10.009459', '4');
INSERT INTO `archivo` VALUES ('212', 'cq5dam.thumbnail.cropped.1500.844.png', '58f7ee7d-5ec1-4a97-baa1-ea159c1ddbdd.png', 'media/templates/images/58f7ee7d-5ec1-4a97-baa1-ea159c1ddbdd.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:19:28.422620', '2025-05-28 01:19:28.422620', '4');
INSERT INTO `archivo` VALUES ('213', 'cq5dam.thumbnail.cropped.1500.844.png', 'badf79a9-9650-48a8-8d77-933af514f911.png', 'media/templates/images/badf79a9-9650-48a8-8d77-933af514f911.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:21:08.498892', '2025-05-28 01:21:08.498892', '4');
INSERT INTO `archivo` VALUES ('214', 'cq5dam.thumbnail.cropped.1500.844.png', '1dae7bda-d73c-4b6d-899c-97af9d35739a.png', 'media/templates/images/1dae7bda-d73c-4b6d-899c-97af9d35739a.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:32:34.503386', '2025-05-28 01:32:34.503386', '4');
INSERT INTO `archivo` VALUES ('215', 'cq5dam.thumbnail.cropped.1500.844.png', '8f0ab306-bcd0-4812-9739-921ef9fdd853.png', 'media/templates/images/8f0ab306-bcd0-4812-9739-921ef9fdd853.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:33:30.162101', '2025-05-28 01:33:30.162101', '4');
INSERT INTO `archivo` VALUES ('216', 'cq5dam.thumbnail.cropped.1500.844.png', '6cfd4240-067a-4afa-a4ae-aedddb32e79e.png', 'media/templates/images/6cfd4240-067a-4afa-a4ae-aedddb32e79e.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:38:49.594432', '2025-05-28 01:38:49.594432', '4');
INSERT INTO `archivo` VALUES ('217', 'cq5dam.thumbnail.cropped.1500.844.jpeg', 'fa26cb51-b5bd-41ff-8942-48017234c2e8.jpeg', 'media/templates/images/fa26cb51-b5bd-41ff-8942-48017234c2e8.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-28 01:38:55.609680', '2025-05-28 01:38:55.609680', '4');
INSERT INTO `archivo` VALUES ('218', 'cq5dam.thumbnail.cropped.1500.844.png', 'fecc2643-bdea-41f4-b824-c3cd77753cd2.png', 'media/templates/images/fecc2643-bdea-41f4-b824-c3cd77753cd2.png', 'image/png', '1009625', null, null, '0', '2025-05-28 01:38:55.614562', '2025-05-28 01:38:55.614562', '4');
INSERT INTO `archivo` VALUES ('219', '_104238766_gettyimages-566455379.jpg', '3660f573-96c6-42b9-ae14-7cd727c8c2db.jpg', 'media/templates/images/3660f573-96c6-42b9-ae14-7cd727c8c2db.jpg', 'image/jpeg', '189379', null, null, '0', '2025-05-28 01:38:55.648376', '2025-05-28 01:38:55.648376', '4');
INSERT INTO `archivo` VALUES ('220', 'cq5dam.thumbnail.cropped.1500.844.png', '032334ca-e319-4096-803e-3830690eb90d.png', 'media/templates/images/032334ca-e319-4096-803e-3830690eb90d.png', 'image/png', '1009625', null, null, '0', '2025-05-28 23:11:49.954508', '2025-05-28 23:11:49.954508', '4');
INSERT INTO `archivo` VALUES ('221', 'cq5dam.thumbnail.cropped.1500.844.jpeg', 'd1bab614-c60f-432f-9fc5-0ce5876a758a.jpeg', 'media/templates/images/d1bab614-c60f-432f-9fc5-0ce5876a758a.jpeg', 'image/jpeg', '126431', null, null, '0', '2025-05-28 23:11:56.099994', '2025-05-28 23:11:56.099994', '4');
INSERT INTO `archivo` VALUES ('222', 'cq5dam.thumbnail.cropped.1500.844.png', 'b9a5274d-118a-4aa4-aa97-92a7ea4ba444.png', 'media/templates/images/b9a5274d-118a-4aa4-aa97-92a7ea4ba444.png', 'image/png', '1009625', null, null, '0', '2025-05-28 23:11:56.111992', '2025-05-28 23:11:56.111992', '4');
INSERT INTO `archivo` VALUES ('223', '_104238766_gettyimages-566455379.jpg', '53fe4acb-46aa-40d2-ac93-0cf4e60e9707.jpg', 'media/templates/images/53fe4acb-46aa-40d2-ac93-0cf4e60e9707.jpg', 'image/jpeg', '189379', null, null, '0', '2025-05-28 23:11:56.131008', '2025-05-28 23:11:56.131008', '4');
INSERT INTO `archivo` VALUES ('224', 'bloqueo-1024x666.jpg', '77aeece9-8bc4-4360-a6e5-0d71de2a5757.jpg', 'media/templates/images/77aeece9-8bc4-4360-a6e5-0d71de2a5757.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 03:12:43.465895', '2025-05-29 03:12:43.465895', '4');
INSERT INTO `archivo` VALUES ('225', '489851960_1222343996120282_3508042440285263210_n.jpg', '49de4fc3-7dbd-4db6-84e8-f08ba19be77e.jpg', 'media/templates/images/49de4fc3-7dbd-4db6-84e8-f08ba19be77e.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 03:14:01.736068', '2025-05-29 03:14:01.736068', '4');
INSERT INTO `archivo` VALUES ('226', '494269155_668535585813452_8964929240592415412_n.jpg', '6a0d08b0-73ec-426c-9822-af5e740cb082.jpg', 'media/templates/images/6a0d08b0-73ec-426c-9822-af5e740cb082.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 03:14:01.744579', '2025-05-29 03:14:01.744579', '4');
INSERT INTO `archivo` VALUES ('227', '499578400_999662355709304_8502270856964985660_n.jpg', 'e7120416-afa6-443b-9d40-c957cdc9f03a.jpg', 'media/templates/images/e7120416-afa6-443b-9d40-c957cdc9f03a.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 03:14:01.768581', '2025-05-29 03:14:01.768581', '4');
INSERT INTO `archivo` VALUES ('228', 'bloqueo-1024x666.jpg', '205e51ef-45fe-4857-8c9c-6db7e311f745.jpg', 'media/templates/images/205e51ef-45fe-4857-8c9c-6db7e311f745.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 03:52:05.267746', '2025-05-29 03:52:05.267746', '4');
INSERT INTO `archivo` VALUES ('229', '489851960_1222343996120282_3508042440285263210_n.jpg', '919fc543-ce1a-4ea9-b01a-0e71a5426713.jpg', 'media/templates/images/919fc543-ce1a-4ea9-b01a-0e71a5426713.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 03:52:10.053512', '2025-05-29 03:52:10.053512', '4');
INSERT INTO `archivo` VALUES ('230', '494269155_668535585813452_8964929240592415412_n.jpg', '59436e18-4655-4dfd-aaf8-1b4e21cddb08.jpg', 'media/templates/images/59436e18-4655-4dfd-aaf8-1b4e21cddb08.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 03:52:10.063563', '2025-05-29 03:52:10.063563', '4');
INSERT INTO `archivo` VALUES ('231', '499578400_999662355709304_8502270856964985660_n.jpg', '2f2c8e49-fb05-414f-a36d-36bda5d3bf71.jpg', 'media/templates/images/2f2c8e49-fb05-414f-a36d-36bda5d3bf71.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 03:52:10.077861', '2025-05-29 03:52:10.077861', '4');
INSERT INTO `archivo` VALUES ('232', 'bloqueo-1024x666.jpg', '84bc73ca-dfad-45c3-84f6-4e0173428507.jpg', 'media/templates/images/84bc73ca-dfad-45c3-84f6-4e0173428507.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 03:53:31.586808', '2025-05-29 03:53:31.586808', '4');
INSERT INTO `archivo` VALUES ('233', '489851960_1222343996120282_3508042440285263210_n.jpg', 'ac71c94e-3e11-4559-8287-9a206a957410.jpg', 'media/templates/images/ac71c94e-3e11-4559-8287-9a206a957410.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 03:53:37.388379', '2025-05-29 03:53:37.388379', '4');
INSERT INTO `archivo` VALUES ('234', '494269155_668535585813452_8964929240592415412_n.jpg', 'b0e4e2db-c09a-4e3e-b3fd-d0432d909566.jpg', 'media/templates/images/b0e4e2db-c09a-4e3e-b3fd-d0432d909566.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 03:53:37.405081', '2025-05-29 03:53:37.405081', '4');
INSERT INTO `archivo` VALUES ('235', '499578400_999662355709304_8502270856964985660_n.jpg', 'fc817564-9d86-4603-be54-0cafd08139e0.jpg', 'media/templates/images/fc817564-9d86-4603-be54-0cafd08139e0.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 03:53:37.412706', '2025-05-29 03:53:37.412706', '4');
INSERT INTO `archivo` VALUES ('236', 'bloqueo-1024x666.jpg', 'fc32ad3c-6afe-4a88-aeb3-76a12ccc9829.jpg', 'media/templates/images/fc32ad3c-6afe-4a88-aeb3-76a12ccc9829.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 04:02:13.494194', '2025-05-29 04:02:13.494194', '4');
INSERT INTO `archivo` VALUES ('237', '489851960_1222343996120282_3508042440285263210_n.jpg', 'db629626-9fed-44c2-b750-c45898fc6528.jpg', 'media/templates/images/db629626-9fed-44c2-b750-c45898fc6528.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 04:02:17.915192', '2025-05-29 04:02:17.915192', '4');
INSERT INTO `archivo` VALUES ('238', '494269155_668535585813452_8964929240592415412_n.jpg', '05b9f61e-fef9-4ee7-b65c-223e3e0f035b.jpg', 'media/templates/images/05b9f61e-fef9-4ee7-b65c-223e3e0f035b.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 04:02:17.923216', '2025-05-29 04:02:17.923216', '4');
INSERT INTO `archivo` VALUES ('239', '499578400_999662355709304_8502270856964985660_n.jpg', 'fa935495-4234-4dd1-9299-2ccb761e4a28.jpg', 'media/templates/images/fa935495-4234-4dd1-9299-2ccb761e4a28.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 04:02:17.937215', '2025-05-29 04:02:17.937215', '4');
INSERT INTO `archivo` VALUES ('240', 'cq5dam.thumbnail.cropped.1500.844.png', 'c1bfe896-1b33-449e-9bb2-d4c792d836a7.png', 'media/templates/images/c1bfe896-1b33-449e-9bb2-d4c792d836a7.png', 'image/png', '1009625', null, null, '0', '2025-05-29 04:05:12.234223', '2025-05-29 04:05:12.234223', '4');
INSERT INTO `archivo` VALUES ('241', 'Diagrama en blanco (3).png', '23156b71-8e66-4e78-9b69-894e4880a30d.png', 'media/templates/images/23156b71-8e66-4e78-9b69-894e4880a30d.png', 'image/png', '219663', null, null, '0', '2025-05-29 04:05:23.799088', '2025-05-29 04:05:23.799088', '4');
INSERT INTO `archivo` VALUES ('242', 'Diagrama en blanco (2).png', '727ad0e6-bfff-4d26-bb56-42baf6575fce.png', 'media/templates/images/727ad0e6-bfff-4d26-bb56-42baf6575fce.png', 'image/png', '775380', null, null, '0', '2025-05-29 04:05:23.800083', '2025-05-29 04:05:23.800083', '4');
INSERT INTO `archivo` VALUES ('243', 'IA.png', 'b07043e0-c73e-4888-9c30-5d3a7d4ecba5.png', 'media/templates/images/b07043e0-c73e-4888-9c30-5d3a7d4ecba5.png', 'image/png', '457765', null, null, '0', '2025-05-29 04:05:23.971603', '2025-05-29 04:05:23.971603', '4');
INSERT INTO `archivo` VALUES ('244', 'bloqueo-1024x666.jpg', '52be554f-ad9f-4ecd-a0ef-0898c4656d10.jpg', 'media/templates/images/52be554f-ad9f-4ecd-a0ef-0898c4656d10.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 04:10:52.861537', '2025-05-29 04:10:52.861537', '4');
INSERT INTO `archivo` VALUES ('245', '489851960_1222343996120282_3508042440285263210_n.jpg', 'b94ba23b-5fa0-48b2-9fcc-37a8e4a8fbff.jpg', 'media/templates/images/b94ba23b-5fa0-48b2-9fcc-37a8e4a8fbff.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 04:10:57.580383', '2025-05-29 04:10:57.580383', '4');
INSERT INTO `archivo` VALUES ('246', '499578400_999662355709304_8502270856964985660_n.jpg', '4417d900-e65e-4ba8-88ba-9a98d1e8c945.jpg', 'media/templates/images/4417d900-e65e-4ba8-88ba-9a98d1e8c945.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 04:10:57.588576', '2025-05-29 04:10:57.588576', '4');
INSERT INTO `archivo` VALUES ('247', 'bloqueo-1024x666.jpg', 'fa0618c0-30bb-4768-9c68-1c402d37f439.jpg', 'media/templates/images/fa0618c0-30bb-4768-9c68-1c402d37f439.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 04:28:39.206642', '2025-05-29 04:28:39.206642', '4');
INSERT INTO `archivo` VALUES ('248', '489851960_1222343996120282_3508042440285263210_n.jpg', '7deffd09-aee2-4807-8598-8c09c3c58daf.jpg', 'media/templates/images/7deffd09-aee2-4807-8598-8c09c3c58daf.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 04:28:44.526912', '2025-05-29 04:28:44.526912', '4');
INSERT INTO `archivo` VALUES ('249', '499578400_999662355709304_8502270856964985660_n.jpg', 'f1e9d0d2-d262-41f6-84f6-1d1a90553f0f.jpg', 'media/templates/images/f1e9d0d2-d262-41f6-84f6-1d1a90553f0f.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 04:28:44.558465', '2025-05-29 04:28:44.558465', '4');
INSERT INTO `archivo` VALUES ('250', '494269155_668535585813452_8964929240592415412_n.jpg', '1e44c764-1205-49a5-8cb0-c836dcebaf5b.jpg', 'media/templates/images/1e44c764-1205-49a5-8cb0-c836dcebaf5b.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 04:28:44.559472', '2025-05-29 04:28:44.559472', '4');
INSERT INTO `archivo` VALUES ('251', 'bloqueo-1024x666.jpg', 'e3a9b9f6-8e43-4200-89a6-fa68d2abfadf.jpg', 'media/templates/images/e3a9b9f6-8e43-4200-89a6-fa68d2abfadf.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 04:37:24.973888', '2025-05-29 04:37:24.973888', '4');
INSERT INTO `archivo` VALUES ('252', '489851960_1222343996120282_3508042440285263210_n.jpg', 'ee97faf5-31be-43fc-8b94-d2bafa161621.jpg', 'media/templates/images/ee97faf5-31be-43fc-8b94-d2bafa161621.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 04:37:29.691655', '2025-05-29 04:37:29.691655', '4');
INSERT INTO `archivo` VALUES ('253', '494269155_668535585813452_8964929240592415412_n.jpg', 'eb11b2e5-cc83-44bc-8b70-57b90124faf2.jpg', 'media/templates/images/eb11b2e5-cc83-44bc-8b70-57b90124faf2.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 04:37:29.707580', '2025-05-29 04:37:29.707580', '4');
INSERT INTO `archivo` VALUES ('254', 'bloqueo-1024x666.jpg', 'c1632bef-4e1c-4797-8d18-17e5a4f1551f.jpg', 'media/templates/images/c1632bef-4e1c-4797-8d18-17e5a4f1551f.jpg', 'image/jpeg', '97215', null, null, '0', '2025-05-29 04:41:19.664207', '2025-05-29 04:41:19.664207', '4');
INSERT INTO `archivo` VALUES ('255', '489851960_1222343996120282_3508042440285263210_n.jpg', '6ac93e07-86d3-4b53-9239-1f48f4bf52a8.jpg', 'media/media/templates/images/6ac93e07-86d3-4b53-9239-1f48f4bf52a8.jpg', 'image/jpeg', '33921', null, null, '0', '2025-05-29 04:41:24.202379', '2025-05-29 04:41:24.202379', '4');
INSERT INTO `archivo` VALUES ('256', '494269155_668535585813452_8964929240592415412_n.jpg', 'bced716c-c4db-42d0-a453-83cf87162549.jpg', 'media/media/templates/images/bced716c-c4db-42d0-a453-83cf87162549.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-05-29 04:41:24.208372', '2025-05-29 04:41:24.208372', '4');
INSERT INTO `archivo` VALUES ('257', '499578400_999662355709304_8502270856964985660_n.jpg', 'bda43f55-c890-4e2e-9217-ea02b1ae2944.jpg', 'media/media/templates/images/bda43f55-c890-4e2e-9217-ea02b1ae2944.jpg', 'image/jpeg', '188812', null, null, '0', '2025-05-29 04:41:24.227388', '2025-05-29 04:41:24.227388', '4');
INSERT INTO `archivo` VALUES ('258', 'Imagen de WhatsApp 2025-05-30 a las 09.45.00_ff8a68b9.png', '9e260427-79c7-4d10-bff9-cb5127c01040.png', 'media/templates/images/9e260427-79c7-4d10-bff9-cb5127c01040.png', 'image/png', '76018', null, null, '0', '2025-06-02 02:13:11.269958', '2025-06-02 02:13:11.269958', '4');
INSERT INTO `archivo` VALUES ('259', 'mapa-ejemplo.jpg', '24e17802-85ad-4a47-8df0-705cfe0b1daf.jpg', 'media/media/templates/images/24e17802-85ad-4a47-8df0-705cfe0b1daf.jpg', 'image/jpeg', '33952', null, null, '0', '2025-06-02 02:13:17.113531', '2025-06-02 02:13:17.113531', '4');
INSERT INTO `archivo` VALUES ('260', 'avatar.png', '9a10b546-706c-4e24-902e-8f23761a67f9.png', 'media/media/templates/images/9a10b546-706c-4e24-902e-8f23761a67f9.png', 'image/png', '76018', null, null, '0', '2025-06-02 02:13:17.114530', '2025-06-02 02:13:17.114530', '4');
INSERT INTO `archivo` VALUES ('261', 'mapa-ejemplo.jpg', 'e5b78c54-ea81-4556-9ef5-46b6c878cd77.jpg', 'templates/images/e5b78c54-ea81-4556-9ef5-46b6c878cd77.jpg', 'image/jpeg', '33952', null, null, '0', '2025-06-02 02:24:36.277898', '2025-06-02 02:24:36.277898', '4');
INSERT INTO `archivo` VALUES ('262', 'Imagen de WhatsApp 2025-05-30 a las 09.45.15_8bab8593.jpg', 'd09e27a7-9511-4189-8746-b6e4a166a6f9.jpg', 'templates/images/d09e27a7-9511-4189-8746-b6e4a166a6f9.jpg', 'image/jpeg', '42398', null, null, '0', '2025-06-02 02:24:41.504630', '2025-06-02 02:24:41.504630', '4');
INSERT INTO `archivo` VALUES ('263', 'Imagen de WhatsApp 2025-05-30 a las 09.45.00_ff8a68b9.jpg', '68b4b3a3-d7f6-4795-9a11-d6987e581e00.jpg', 'templates/images/68b4b3a3-d7f6-4795-9a11-d6987e581e00.jpg', 'image/jpeg', '18809', null, null, '0', '2025-06-02 02:24:41.505630', '2025-06-02 02:24:41.505630', '4');
INSERT INTO `archivo` VALUES ('264', 'bloqueo-1024x666.jpg', 'e1fc93da-947d-420d-8f87-2d214d5b6b07.jpg', 'templates/images/e1fc93da-947d-420d-8f87-2d214d5b6b07.jpg', 'image/jpeg', '97215', null, null, '0', '2025-06-02 03:44:12.241061', '2025-06-02 03:44:12.241061', '4');
INSERT INTO `archivo` VALUES ('265', '499578400_999662355709304_8502270856964985660_n.jpg', '08ee218c-122f-4424-8dd8-9ff1cba36d2e.jpg', 'templates/images/08ee218c-122f-4424-8dd8-9ff1cba36d2e.jpg', 'image/jpeg', '188812', null, null, '0', '2025-06-02 03:44:16.730601', '2025-06-02 03:44:16.730601', '4');
INSERT INTO `archivo` VALUES ('266', '489851960_1222343996120282_3508042440285263210_n.jpg', 'bffd1209-2df9-4764-a752-00de1975dfa9.jpg', 'templates/images/bffd1209-2df9-4764-a752-00de1975dfa9.jpg', 'image/jpeg', '33921', null, null, '0', '2025-06-02 03:44:16.742600', '2025-06-02 03:44:16.742600', '4');
INSERT INTO `archivo` VALUES ('267', '494269155_668535585813452_8964929240592415412_n.jpg', '37138295-c5b7-43ef-972f-1fc8f645f13e.jpg', 'templates/images/37138295-c5b7-43ef-972f-1fc8f645f13e.jpg', 'image/jpeg', '1461922', null, null, '0', '2025-06-02 03:44:16.748603', '2025-06-02 03:44:16.748603', '4');
INSERT INTO `archivo` VALUES ('268', 'Norma-Pina.jpg', '9d2b5b95-09f1-4f6f-993c-043e81d11d05.jpg', 'templates/images/9d2b5b95-09f1-4f6f-993c-043e81d11d05.jpg', 'image/jpeg', '63339', null, null, '0', '2025-06-02 04:59:58.682503', '2025-06-02 04:59:58.682503', '4');
INSERT INTO `archivo` VALUES ('269', 'Norma-Pina-1024x640.jpeg', 'e5cc79a3-d623-46d3-8163-3834fa63f20a.jpeg', 'templates/images/e5cc79a3-d623-46d3-8163-3834fa63f20a.jpeg', 'image/jpeg', '75291', null, null, '0', '2025-06-02 05:00:47.321006', '2025-06-02 05:00:47.321006', '4');
INSERT INTO `archivo` VALUES ('270', '2e3d59cc7f21a0eac04c5efe2dd0c721.png', 'd49ae2a6-4119-48ce-b0f8-ab4234343f94.png', 'templates/images/d49ae2a6-4119-48ce-b0f8-ab4234343f94.png', 'image/png', '1020120', null, null, '0', '2025-06-02 05:00:47.326007', '2025-06-02 05:00:47.326007', '4');
INSERT INTO `archivo` VALUES ('271', 'voto.jpg', 'eca65d53-266d-4e54-b7a5-47121afbcf9c.jpg', 'templates/images/eca65d53-266d-4e54-b7a5-47121afbcf9c.jpg', 'image/jpeg', '40301', null, null, '0', '2025-06-02 05:16:20.055633', '2025-06-02 05:16:20.055633', '4');
INSERT INTO `archivo` VALUES ('272', 'KZBTO52KVZB6PEGZBCZX6EKXUM.avif', 'ae0c769e-9307-4822-af4d-10a4e7685ff3.avif', 'templates/images/ae0c769e-9307-4822-af4d-10a4e7685ff3.avif', 'image/avif', '5038', null, null, '0', '2025-06-02 05:17:03.890139', '2025-06-02 05:17:03.890139', '4');
INSERT INTO `archivo` VALUES ('273', 'shutterstock_764908303.jpg', '173162db-a53d-46b2-ac6f-443b81511659.jpg', 'templates/images/173162db-a53d-46b2-ac6f-443b81511659.jpg', 'image/jpeg', '476703', null, null, '0', '2025-06-02 05:17:03.890139', '2025-06-02 05:17:03.890139', '4');
INSERT INTO `archivo` VALUES ('274', 'ELECCION-JUDICIAL-1024x683.jpg', 'fcc7e569-1824-4e36-a86d-76ab4ddc60f1.jpg', 'templates/images/fcc7e569-1824-4e36-a86d-76ab4ddc60f1.jpg', 'image/jpeg', '115757', null, null, '0', '2025-06-02 18:29:13.807777', '2025-06-02 18:29:13.807777', '4');
INSERT INTO `archivo` VALUES ('275', 'images (1).jpg', '7eb6001a-7c9d-4b86-a998-14c7b5d4d865.jpg', 'templates/images/7eb6001a-7c9d-4b86-a998-14c7b5d4d865.jpg', 'image/jpeg', '8657', null, null, '0', '2025-06-02 18:29:19.997807', '2025-06-02 18:29:19.997807', '4');
INSERT INTO `archivo` VALUES ('276', 'images.jpg', 'a72d0408-2e33-4a1d-9ca7-6ccc95efd6ca.jpg', 'templates/images/a72d0408-2e33-4a1d-9ca7-6ccc95efd6ca.jpg', 'image/jpeg', '10987', null, null, '0', '2025-06-02 18:29:19.999867', '2025-06-02 18:29:19.999867', '4');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add categoria', '7', 'add_categoria');
INSERT INTO `auth_permission` VALUES ('26', 'Can change categoria', '7', 'change_categoria');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete categoria', '7', 'delete_categoria');
INSERT INTO `auth_permission` VALUES ('28', 'Can view categoria', '7', 'view_categoria');
INSERT INTO `auth_permission` VALUES ('29', 'Can add rol', '8', 'add_rol');
INSERT INTO `auth_permission` VALUES ('30', 'Can change rol', '8', 'change_rol');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete rol', '8', 'delete_rol');
INSERT INTO `auth_permission` VALUES ('32', 'Can view rol', '8', 'view_rol');
INSERT INTO `auth_permission` VALUES ('33', 'Can add archivo', '9', 'add_archivo');
INSERT INTO `auth_permission` VALUES ('34', 'Can change archivo', '9', 'change_archivo');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete archivo', '9', 'delete_archivo');
INSERT INTO `auth_permission` VALUES ('36', 'Can view archivo', '9', 'view_archivo');
INSERT INTO `auth_permission` VALUES ('37', 'Can add estatu', '10', 'add_estatu');
INSERT INTO `auth_permission` VALUES ('38', 'Can change estatu', '10', 'change_estatu');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete estatu', '10', 'delete_estatu');
INSERT INTO `auth_permission` VALUES ('40', 'Can view estatu', '10', 'view_estatu');
INSERT INTO `auth_permission` VALUES ('41', 'Can add publicacion', '11', 'add_publicacion');
INSERT INTO `auth_permission` VALUES ('42', 'Can change publicacion', '11', 'change_publicacion');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete publicacion', '11', 'delete_publicacion');
INSERT INTO `auth_permission` VALUES ('44', 'Can view publicacion', '11', 'view_publicacion');
INSERT INTO `auth_permission` VALUES ('45', 'Can add comentario', '12', 'add_comentario');
INSERT INTO `auth_permission` VALUES ('46', 'Can change comentario', '12', 'change_comentario');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete comentario', '12', 'delete_comentario');
INSERT INTO `auth_permission` VALUES ('48', 'Can view comentario', '12', 'view_comentario');
INSERT INTO `auth_permission` VALUES ('49', 'Can add permiso', '13', 'add_permiso');
INSERT INTO `auth_permission` VALUES ('50', 'Can change permiso', '13', 'change_permiso');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete permiso', '13', 'delete_permiso');
INSERT INTO `auth_permission` VALUES ('52', 'Can view permiso', '13', 'view_permiso');
INSERT INTO `auth_permission` VALUES ('53', 'Can add publicacion archivo', '14', 'add_publicacionarchivo');
INSERT INTO `auth_permission` VALUES ('54', 'Can change publicacion archivo', '14', 'change_publicacionarchivo');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete publicacion archivo', '14', 'delete_publicacionarchivo');
INSERT INTO `auth_permission` VALUES ('56', 'Can view publicacion archivo', '14', 'view_publicacionarchivo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('3', 'pbkdf2_sha256$720000$ybVOEAxo9auokLt6M802an$T/pj4BgLeZDYy8sJYv1IGYSu6gLp4VF/FSJr8esKn5g=', null, '1', 'superadmin', '', '', 'superadmin@gmail.com', '1', '1', '2025-05-26 19:09:57.945599');
INSERT INTO `auth_user` VALUES ('4', 'pbkdf2_sha256$720000$RWoHEhJVMunNPBskDAfcYT$bfixDDZSJH1cs4UWZSLPgbPFif6wYt5Ai/d9CP2Ee54=', '2025-06-02 05:17:23.842176', '1', 'adminsuper', '', '', 'adminsuper@gmail.com', '1', '1', '2025-05-26 19:12:14.815022');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$720000$a3R3UXJx6YcBKC9WMqY3Qc$rjLThnQQYiAgGOzIJtk8pN/vnyH2wYnQobyJGRVEaWE=', '2025-06-02 18:15:15.621516', '0', 'herman', '', '', '', '0', '1', '2025-06-02 05:35:29.280584');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$720000$sRx7dZZRpZ0WeCbJcY1Sfj$gU9vsFibIKoZDT17H+a3ajVaH4IfpKpC8mgUL/VjZyk=', '2025-06-02 18:27:38.971537', '0', 'zea', '', '', '', '0', '1', '2025-06-02 18:27:29.128263');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created` datetime(6) NOT NULL,
  `fk_user_id` int(11) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `categoria_fk_user_id_4ced16d2_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  CONSTRAINT `categoria_fk_user_id_4ced16d2_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'Educación', '2025-03-24 13:47:30.000000', '4', '2025-05-29 03:02:08.024933');
INSERT INTO `categoria` VALUES ('2', 'Salud', '2025-03-24 13:48:51.000000', '4', '2025-05-29 03:01:58.708804');
INSERT INTO `categoria` VALUES ('3', 'Tecnología', '2025-03-24 13:49:18.000000', '4', '2025-05-29 03:01:47.283154');
INSERT INTO `categoria` VALUES ('4', 'Economía', '2025-05-27 00:03:12.859616', '4', '2025-05-29 03:01:37.337579');
INSERT INTO `categoria` VALUES ('5', 'Política', '2025-05-29 03:00:36.674498', '4', '2025-05-29 03:00:36.674498');
INSERT INTO `categoria` VALUES ('6', 'Cultura', '2025-05-29 03:02:18.292772', '4', '2025-05-29 03:02:18.292772');
INSERT INTO `categoria` VALUES ('7', 'Deportes', '2025-05-29 03:02:26.393144', '4', '2025-05-29 03:02:26.393144');
INSERT INTO `categoria` VALUES ('8', 'Entretenimiento', '2025-05-29 03:02:33.328596', '4', '2025-05-29 03:02:33.328596');
INSERT INTO `categoria` VALUES ('9', 'Ciencia', '2025-05-29 03:02:40.632402', '4', '2025-05-29 03:02:40.632402');
INSERT INTO `categoria` VALUES ('10', 'Seguridad', '2025-05-29 03:02:53.483737', '4', '2025-05-29 03:02:53.483737');
INSERT INTO `categoria` VALUES ('11', 'Medio Ambiente', '2025-05-29 03:03:01.634710', '4', '2025-05-29 03:03:01.634710');
INSERT INTO `categoria` VALUES ('12', 'Eventos', '2025-05-29 03:03:12.021731', '4', '2025-05-29 03:03:12.021731');
INSERT INTO `categoria` VALUES ('13', 'Opinión', '2025-05-29 03:03:19.204374', '4', '2025-05-29 03:03:19.204374');
INSERT INTO `categoria` VALUES ('14', 'Turismo', '2025-05-29 03:03:30.356023', '4', '2025-05-29 03:03:30.357022');
INSERT INTO `categoria` VALUES ('15', 'Estilo de Vida', '2025-05-29 03:03:38.692028', '4', '2025-05-29 03:03:38.692028');
INSERT INTO `categoria` VALUES ('16', 'Religión y Sociedad', '2025-05-29 03:03:49.561567', '4', '2025-05-29 03:03:49.561567');
INSERT INTO `categoria` VALUES ('17', 'sdfs', '2025-06-02 03:38:27.729707', '4', '2025-06-02 03:38:27.729707');

-- ----------------------------
-- Table structure for comentario
-- ----------------------------
DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contenido` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_estatu_id` bigint(20) NOT NULL,
  `fk_publicacion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `comentario_fk_user_id_e87e9f35_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  KEY `comentario_fk_estatu_id_168fe319_fk_estatu_id` (`fk_estatu_id`) USING BTREE,
  KEY `comentario_fk_publicacion_id_297fa97b_fk_publicacion_id` (`fk_publicacion_id`) USING BTREE,
  CONSTRAINT `comentario_fk_estatu_id_168fe319_fk_estatu_id` FOREIGN KEY (`fk_estatu_id`) REFERENCES `estatu` (`id`),
  CONSTRAINT `comentario_fk_publicacion_id_297fa97b_fk_publicacion_id` FOREIGN KEY (`fk_publicacion_id`) REFERENCES `publicacion` (`id`),
  CONSTRAINT `comentario_fk_user_id_e87e9f35_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comentario
-- ----------------------------
INSERT INTO `comentario` VALUES ('1', 'hola', '2025-05-29 01:26:38.215776', '2025-06-02 04:54:51.343437', '4', '4', '19');
INSERT INTO `comentario` VALUES ('2', 'hola', '2025-05-29 01:26:59.252097', '2025-06-02 04:54:51.793154', '4', '4', '19');
INSERT INTO `comentario` VALUES ('3', 'Hola', '2025-05-29 01:27:10.999343', '2025-06-02 04:54:52.257817', '4', '4', '19');
INSERT INTO `comentario` VALUES ('4', 'hola', '2025-05-29 04:24:58.825430', '2025-05-29 04:24:58.825430', '4', '2', '19');
INSERT INTO `comentario` VALUES ('5', 'sdfs', '2025-06-02 03:38:21.733109', '2025-06-02 03:38:21.733109', '4', '1', '1');
INSERT INTO `comentario` VALUES ('6', 'Hola', '2025-06-02 03:45:21.199161', '2025-06-02 04:54:53.254434', '4', '4', '30');
INSERT INTO `comentario` VALUES ('7', 'Que mala ministra', '2025-06-02 05:07:48.278437', '2025-06-02 05:07:59.641965', '4', '2', '31');
INSERT INTO `comentario` VALUES ('8', 'Hola yo no fui a votar', '2025-06-02 05:36:01.633162', '2025-06-02 05:36:19.155549', '5', '2', '32');
INSERT INTO `comentario` VALUES ('9', 'Hola', '2025-06-02 18:27:46.844201', '2025-06-02 18:28:08.024117', '6', '2', '32');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('4', '2025-05-26 07:31:08.591916', '1', 'CAPTURA', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('5', '2025-05-26 07:31:21.533209', '2', 'PUBLICADA', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('6', '2025-05-26 07:31:40.010972', '3', 'ARCHIVADA', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('7', '2025-05-26 07:31:55.701984', '4', 'RECHAZADA', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('8', '2025-05-26 07:32:11.657074', '5', 'RECHAZADA', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('9', '2025-05-26 07:32:23.076270', '6', 'REVISION', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('10', '2025-05-26 07:33:01.343169', '1', 'ADMIN', '1', '[{\"added\": {}}]', '8', '4');
INSERT INTO `django_admin_log` VALUES ('11', '2025-05-26 07:33:06.466908', '2', 'OPERADOR', '1', '[{\"added\": {}}]', '8', '4');
INSERT INTO `django_admin_log` VALUES ('12', '2025-05-26 07:33:12.262536', '3', 'EDITOR', '1', '[{\"added\": {}}]', '8', '4');
INSERT INTO `django_admin_log` VALUES ('13', '2025-05-26 07:33:16.543706', '4', 'LECTOR', '1', '[{\"added\": {}}]', '8', '4');
INSERT INTO `django_admin_log` VALUES ('14', '2025-05-26 16:38:34.781454', '1', 'sdfdv', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('15', '2025-05-26 16:43:20.613773', '1', 'sdfdv', '2', '[]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('16', '2025-05-26 17:46:37.594692', '2', 'hiivrtbhnjm', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('17', '2025-05-26 18:01:40.305831', '3', 'hhhh', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('18', '2025-05-27 00:03:12.862127', '4', 'Ejemplo', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('19', '2025-05-27 00:05:34.659940', '4', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('20', '2025-05-28 01:02:23.588999', '5', 'Descargar python', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('21', '2025-05-28 01:11:06.244769', '6', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('22', '2025-05-28 01:21:28.483638', '9', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('23', '2025-05-28 01:21:50.555841', '10', 'asd', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('24', '2025-05-28 01:23:38.743807', '11', 'as', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('25', '2025-05-28 01:25:10.611963', '12', 'as', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('26', '2025-05-28 01:27:00.767787', '13', 'as', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('27', '2025-05-28 01:30:09.233891', '14', 'wqwe', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('28', '2025-05-28 01:31:15.529301', '15', 'qwe', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('29', '2025-05-28 01:32:39.280111', '16', 'asd', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('30', '2025-05-28 01:33:36.639885', '17', 'asd', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('31', '2025-05-28 01:42:47.376744', '18', 'asd', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('32', '2025-05-28 06:31:11.294158', '3', 'CONVOCATORIAS', '2', '[{\"changed\": {\"fields\": [\"Fk user\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('33', '2025-05-28 06:31:39.492921', '2', 'Empleos', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('34', '2025-05-28 06:31:53.690597', '1', 'Comunicación', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('35', '2025-05-28 06:32:05.247566', '3', 'Convocatorias', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('36', '2025-05-28 23:12:07.147152', '19', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('37', '2025-05-29 03:00:36.675507', '5', 'Política', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('38', '2025-05-29 03:01:37.337579', '4', 'Economía', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('39', '2025-05-29 03:01:47.284154', '3', 'Tecnología', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('40', '2025-05-29 03:01:58.709803', '2', 'Salud', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('41', '2025-05-29 03:02:08.025953', '1', 'Educación', '2', '[{\"changed\": {\"fields\": [\"Nombre\"]}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('42', '2025-05-29 03:02:18.292772', '6', 'Cultura', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('43', '2025-05-29 03:02:26.393144', '7', 'Deportes', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('44', '2025-05-29 03:02:33.328596', '8', 'Entretenimiento', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('45', '2025-05-29 03:02:40.632990', '9', 'Ciencia', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('46', '2025-05-29 03:02:53.484746', '10', 'Seguridad', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('47', '2025-05-29 03:03:01.634710', '11', 'Medio Ambiente', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('48', '2025-05-29 03:03:12.022731', '12', 'Eventos', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('49', '2025-05-29 03:03:19.205370', '13', 'Opinión', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('50', '2025-05-29 03:03:30.357022', '14', 'Turismo', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('51', '2025-05-29 03:03:38.693039', '15', 'Estilo de Vida', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('52', '2025-05-29 03:03:49.562577', '16', 'Religión y Sociedad', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('53', '2025-05-29 03:14:28.802293', '20', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('54', '2025-05-29 03:52:13.704751', '20', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', '2', '[]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('55', '2025-05-29 03:54:43.267543', '21', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('56', '2025-05-29 04:02:52.566230', '22', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('57', '2025-05-29 04:05:26.040177', '23', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('58', '2025-05-29 04:11:02.385154', '24', 'adsasd', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('59', '2025-05-29 04:28:52.150710', '25', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('60', '2025-05-29 04:37:42.477450', '26', 'as', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('61', '2025-05-29 04:41:27.920285', '27', 'asda', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('62', '2025-06-02 02:13:21.738238', '28', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('63', '2025-06-02 02:24:47.666449', '29', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('64', '2025-06-02 03:38:00.776470', '1', 'Escribir (Rol: OPERADOR)', '1', '[{\"added\": {}}]', '13', '4');
INSERT INTO `django_admin_log` VALUES ('65', '2025-06-02 03:38:10.594178', '7', 'Ejemplo', '1', '[{\"added\": {}}]', '10', '4');
INSERT INTO `django_admin_log` VALUES ('66', '2025-06-02 03:38:21.734112', '5', 'Comentario en sdfdv por adminsuper', '1', '[{\"added\": {}}]', '12', '4');
INSERT INTO `django_admin_log` VALUES ('67', '2025-06-02 03:38:27.730942', '17', 'sdfs', '1', '[{\"added\": {}}]', '7', '4');
INSERT INTO `django_admin_log` VALUES ('68', '2025-06-02 03:38:34.971421', '5', 'qweqwe', '1', '[{\"added\": {}}]', '8', '4');
INSERT INTO `django_admin_log` VALUES ('69', '2025-06-02 03:44:19.377400', '30', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('70', '2025-06-02 05:00:48.820208', '31', '¿A dónde va la MINISTRA ..?', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('71', '2025-06-02 05:17:06.358812', '32', '¡Tramposos!', '1', '[{\"added\": {}}]', '11', '4');
INSERT INTO `django_admin_log` VALUES ('72', '2025-06-02 18:29:27.966841', '33', 'Operativo especial de la SSPC asegura cierre tranquilo de casillas en Tabasco', '1', '[{\"added\": {}}]', '11', '4');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'core', 'archivo');
INSERT INTO `django_content_type` VALUES ('7', 'core', 'categoria');
INSERT INTO `django_content_type` VALUES ('12', 'core', 'comentario');
INSERT INTO `django_content_type` VALUES ('10', 'core', 'estatu');
INSERT INTO `django_content_type` VALUES ('13', 'core', 'permiso');
INSERT INTO `django_content_type` VALUES ('11', 'core', 'publicacion');
INSERT INTO `django_content_type` VALUES ('14', 'core', 'publicacionarchivo');
INSERT INTO `django_content_type` VALUES ('8', 'core', 'rol');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2025-05-20 19:41:55.595475');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2025-05-20 19:41:56.176275');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2025-05-20 19:41:56.324418');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2025-05-20 19:41:56.349415');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2025-05-20 19:41:56.359412');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2025-05-20 19:41:56.504260');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2025-05-20 19:41:56.598706');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2025-05-20 19:41:56.656722');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2025-05-20 19:41:56.694706');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2025-05-20 19:41:56.780315');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2025-05-20 19:41:56.784319');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2025-05-20 19:41:56.800311');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2025-05-20 19:41:56.904317');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2025-05-20 19:41:56.988320');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0010_alter_group_name_max_length', '2025-05-20 19:41:57.026696');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0011_update_proxy_permissions', '2025-05-20 19:41:57.042800');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0012_alter_user_first_name_max_length', '2025-05-20 19:41:57.141892');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2025-05-20 19:41:57.184905');
INSERT INTO `django_migrations` VALUES ('19', 'core', '0001_initial', '2025-05-21 18:26:50.162046');
INSERT INTO `django_migrations` VALUES ('20', 'core', '0002_rol_rename_createdat_categoria_created_and_more', '2025-05-21 18:29:08.274197');
INSERT INTO `django_migrations` VALUES ('21', 'core', '0003_alter_publicacion_vistas', '2025-05-24 16:32:56.235959');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5qjzjhgshi1oqunwatt89nqfdu2zxe0f', '.eJxVjEsKwyAUAO_iukg0z0-67D5nEH1Pa9qiEJNV6d2DkEW6nRnmy5zft-z2Fle3ELszzW5XFjy-Y-mCXr48K8datnUJvCf8tI3PleLncbZ_g-xb7ltNJHFQwhojg0WVgAxqmEYgjaAGTROgTKMQyYJNiIQSMEISZMBL9jsA2AE34g:1uM9so:bhNeRM7bY0GsV5kEB4oEPijhqnfAIt1lBSwgGijq_M4', '2025-06-16 18:27:38.973544');
INSERT INTO `django_session` VALUES ('7llygeavywoyy4cx2l992z7rdufvnzax', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uJiLd:X5SuuUAaORvr7veg-arSCtwIgbxBmCHS6HdawRS8NE4', '2025-06-10 00:39:17.238230');
INSERT INTO `django_session` VALUES ('ajh5yqouz386ixg6wfk410m8q5shfytz', '.eJxVjMEOwiAQRP-FsyF0C9T16N1vIAu7SNXQpLQn47_bJj3oZQ7z3sxbBVqXEtYmcxhZXVSnTr9dpPSUugN-UL1POk11mceod0UftOnbxPK6Hu7fQaFWtjWAt773nU8GkiAbpMSIFi2IUM4Uh96wARmcRc8ug1CSLTJKJndWny_d-Tie:1uIqqD:GpRO2MXqd9CXL9QGxtZvGf69KShmQMONgmaLrJ_lpC0', '2025-06-07 15:31:17.255662');
INSERT INTO `django_session` VALUES ('azck4jatclmje10giz9ri8p2s9o4ebuu', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uKOes:vlNwr47Nn3oXZlOFFekKR392ZovJ-vY0euRY7UlZ6iY', '2025-06-11 21:49:58.027908');
INSERT INTO `django_session` VALUES ('daftiizpnpt286ichz65h978avw7zw9l', '.eJxVjMEOwiAQRP-FsyF0C9T16N1vIAu7SNXQpLQn47_bJj3oZQ7z3sxbBVqXEtYmcxhZXVSnTr9dpPSUugN-UL1POk11mceod0UftOnbxPK6Hu7fQaFWtjWAt773nU8GkiAbpMSIFi2IUM4Uh96wARmcRc8ug1CSLTJKJndWny_d-Tie:1uJUTN:23vQ9sxE8lXbqnXL8hHZ9NpuD635Lob-R98OGEyOTmA', '2025-06-09 09:50:21.339238');
INSERT INTO `django_session` VALUES ('e0pwa04mmufitfwx5brpd8wuv3xsn86n', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uKAIH:hABpoOLZW7D2ZyBFYv-LWlhRtO4qQieSOIqgLvy0DuY', '2025-06-11 06:29:41.102709');
INSERT INTO `django_session` VALUES ('ezqcd3s4kbl29v46e1gciavtlmir7wgr', '.eJxVjMEOwiAQRP-FsyF0C9T16N1vIAu7SNXQpLQn47_bJj3oZQ7z3sxbBVqXEtYmcxhZXVSnTr9dpPSUugN-UL1POk11mceod0UftOnbxPK6Hu7fQaFWtjWAt773nU8GkiAbpMSIFi2IUM4Uh96wARmcRc8ug1CSLTJKJndWny_d-Tie:1uJUPD:p4XNeljazxnc9K8BhsxiKEz89cRbq5l5FFVl3Qm3FPM', '2025-06-09 09:46:03.863632');
INSERT INTO `django_session` VALUES ('fdpj4pzyitl9i2n87li5ytqjrz6h9gn6', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uK4Ea:0RlB0k1sk_iK0HwQ6MiPWeK0TGfwo2qHorDKc9Muf0c', '2025-06-11 00:01:28.444313');
INSERT INTO `django_session` VALUES ('lvx9zy1ffxs3giq7v6paddwfq1tns8n8', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uLxFJ:7vHdhevqgDmtRsVIJQMd7rWMKy5BYVC0jPQBiG2YPEU', '2025-06-16 04:58:01.673769');
INSERT INTO `django_session` VALUES ('nim36blwq7zyxx2acg0br8mzyd5d5144', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uJdFl:pIVefP_SswVt5epHTP04Dvz2Leh90btsoULDukvJWn0', '2025-06-09 19:12:53.533035');
INSERT INTO `django_session` VALUES ('uza01jwdx0qri0zq7yaa5mp1pkeinvqd', '.eJxVjMsOwiAQRf-FtSFA6VBcuvcbyDAzSNXQpI-V8d-1SRe6veec-1IJt7WmbZE5jazOyqvT75aRHtJ2wHdst0nT1NZ5zHpX9EEXfZ1YnpfD_TuouNRvnaMTQ8DBMRcoPXAkMX0QACQP2HkpncWIQzQ-2kJsAjL1FgbjwIF6fwAAfzgO:1uK50s:FJnoCuA1reo7dqU-yfenCZ11NJNkxE1N-M105l4_Bo0', '2025-06-11 00:51:22.648003');
INSERT INTO `django_session` VALUES ('wymjyv249el233a072omfyhcq5ikkyir', '.eJxVjMEOwiAQRP-FsyF0C9T16N1vIAu7SNXQpLQn47_bJj3oZQ7z3sxbBVqXEtYmcxhZXVSnTr9dpPSUugN-UL1POk11mceod0UftOnbxPK6Hu7fQaFWtjWAt773nU8GkiAbpMSIFi2IUM4Uh96wARmcRc8ug1CSLTJKJndWny_d-Tie:1uJWUC:Y3Z-fLTBue3_AQpS2eEv3anE71yI_PFTH9DDzdCh-3U', '2025-06-09 11:59:20.141451');

-- ----------------------------
-- Table structure for estatu
-- ----------------------------
DROP TABLE IF EXISTS `estatu`;
CREATE TABLE `estatu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `estatu_fk_user_id_d0a04c10_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  CONSTRAINT `estatu_fk_user_id_d0a04c10_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of estatu
-- ----------------------------
INSERT INTO `estatu` VALUES ('1', 'CAPTURA', '2025-05-26 07:31:08.589077', '2025-05-26 07:31:08.589077', '4');
INSERT INTO `estatu` VALUES ('2', 'PUBLICADA', '2025-05-26 07:31:21.530405', '2025-05-26 07:31:21.530405', '4');
INSERT INTO `estatu` VALUES ('3', 'ARCHIVADA', '2025-05-26 07:31:40.009972', '2025-05-26 07:31:40.009972', '4');
INSERT INTO `estatu` VALUES ('4', 'RECHAZADA', '2025-05-26 07:31:55.700985', '2025-05-26 07:31:55.700985', '4');
INSERT INTO `estatu` VALUES ('5', 'RECHAZADA', '2025-05-26 07:32:11.655070', '2025-05-26 07:32:11.655070', '4');
INSERT INTO `estatu` VALUES ('6', 'REVISION', '2025-05-26 07:32:23.075271', '2025-05-26 07:32:23.075271', '4');
INSERT INTO `estatu` VALUES ('7', 'Ejemplo', '2025-06-02 03:38:10.594178', '2025-06-02 03:38:10.594178', '4');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": {\n    \"csrfmiddlewaretoken\": [\n      \"OdWhjixNyLM92AQlUXkwkyfBodlad7TzY3BjtWUzQ8FHH5HQzKfaFlwVEKj3tTd1\"\n    ],\n    \"titulo\": [\n      \"Descargar python\"\n    ],\n    \"resumen\": [\n      \"La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operaci\\u00f3n para rastrear a los autores del ataque de Pahalgam, en Cachemira.\"\n    ],\n    \"fk_categoria\": [\n      \"1\"\n    ],\n    \"contenido\": [\n      \"<p>asda</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_PRAGMA\": \"no-cache\",\n    \"HTTP_CACHE_CONTROL\": \"no-cache\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('2', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": {\n    \"csrfmiddlewaretoken\": [\n      \"1lqu2P1EFk6CFH5mjtua5MzazJJ25nmabb5wctoqXHZakcWRYgpOqzQuPgHVl9GC\"\n    ],\n    \"titulo\": [\n      \"C\\u00f3mo se comparan los ej\\u00e9rcitos, los misiles y los sistemas de defensa de India y Pakist\\u00e1n en medio de la escalada entre las dos potencias nucleares\"\n    ],\n    \"resumen\": [\n      \"La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operaci\\u00f3n para rastrear a los autores del ataque de Pahalgam, en Cachemira.\"\n    ],\n    \"fk_categoria\": [\n      \"1\"\n    ],\n    \"contenido\": [\n      \"<p>asd</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('3', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": {},\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('4', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": {},\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('5', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": {},\n  \"POST2\": {\n    \"csrfmiddlewaretoken\": [\n      \"Kyj0v4MWuQt6SDU2acB5urq9wErTqzQCUoY2FI9IMdmEx8LxPZwJPeHtMbpMGla4\"\n    ],\n    \"titulo\": [\n      \"as\"\n    ],\n    \"resumen\": [\n      \"AS\"\n    ],\n    \"fk_categoria\": [\n      \"2\"\n    ],\n    \"contenido\": [\n      \"<p>ASD</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('6', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": \"\",\n  \"POST2\": {\n    \"csrfmiddlewaretoken\": [\n      \"5mi9BxQ5lrRakumUlzEwmD4FqRI3xleufcXbLbdRDOKIZZdp0mzaHqlZGoGWN7yW\"\n    ],\n    \"titulo\": [\n      \"wqwe\"\n    ],\n    \"resumen\": [\n      \"qwe\"\n    ],\n    \"fk_categoria\": [\n      \"2\"\n    ],\n    \"contenido\": [\n      \"<p>qew</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('7', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": \"\",\n  \"POST2\": {\n    \"csrfmiddlewaretoken\": [\n      \"JbuxW21y9ZZLn8AbYeUfS41uU573W27TT19z6GokrmSj2DrGD1PTdRiOaC5WcOrl\"\n    ],\n    \"titulo\": [\n      \"qwe\"\n    ],\n    \"resumen\": [\n      \"qwe\"\n    ],\n    \"fk_categoria\": [\n      \"1\"\n    ],\n    \"contenido\": [\n      \"<p>asdasd</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('8', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": \"214\",\n  \"POST2\": {\n    \"csrfmiddlewaretoken\": [\n      \"cAb1CMzkc0zdnXmvJpliEQapu9S3uc12mqQ3MqW6unsL2sd0ocgWZDrJKGQWKYlu\"\n    ],\n    \"titulo\": [\n      \"asd\"\n    ],\n    \"resumen\": [\n      \"asd\"\n    ],\n    \"fk_categoria\": [\n      \"2\"\n    ],\n    \"contenido\": [\n      \"<p>asd</p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"214\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');
INSERT INTO `log` VALUES ('9', '{\n  \"path\": \"/admin/core/publicacion/add/\",\n  \"method\": \"POST\",\n  \"user\": \"adminsuper\",\n  \"POST\": \"215\",\n  \"POST2\": {\n    \"csrfmiddlewaretoken\": [\n      \"Ka6xQrZxXlw1ZwqbeYqWSo5SxqGTRMnVU0Lz05mjfIpzE1hGTLlAdbmcNXEM7yHn\"\n    ],\n    \"titulo\": [\n      \"asd\"\n    ],\n    \"resumen\": [\n      \"asd\"\n    ],\n    \"fk_categoria\": [\n      \"2\"\n    ],\n    \"contenido\": [\n      \"<p>asdasd<strong>asd</strong></p>\"\n    ],\n    \"_save\": [\n      \"Save\"\n    ],\n    \"fk_foto_portada\": [\n      \"215\"\n    ]\n  },\n  \"GET\": {},\n  \"FILES\": {},\n  \"META\": {\n    \"HTTP_HOST\": \"127.0.0.1:8000\",\n    \"HTTP_CONNECTION\": \"keep-alive\",\n    \"HTTP_CACHE_CONTROL\": \"max-age=0\",\n    \"HTTP_SEC_CH_UA\": \"\\\"Chromium\\\";v=\\\"136\\\", \\\"Google Chrome\\\";v=\\\"136\\\", \\\"Not.A/Brand\\\";v=\\\"99\\\"\",\n    \"HTTP_SEC_CH_UA_MOBILE\": \"?0\",\n    \"HTTP_SEC_CH_UA_PLATFORM\": \"\\\"Windows\\\"\",\n    \"HTTP_ORIGIN\": \"http://127.0.0.1:8000\",\n    \"HTTP_UPGRADE_INSECURE_REQUESTS\": \"1\",\n    \"HTTP_USER_AGENT\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36\",\n    \"HTTP_ACCEPT\": \"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7\",\n    \"HTTP_SEC_FETCH_SITE\": \"same-origin\",\n    \"HTTP_SEC_FETCH_MODE\": \"navigate\",\n    \"HTTP_SEC_FETCH_USER\": \"?1\",\n    \"HTTP_SEC_FETCH_DEST\": \"document\",\n    \"HTTP_REFERER\": \"http://127.0.0.1:8000/admin/core/publicacion/add/\",\n    \"HTTP_ACCEPT_ENCODING\": \"gzip, deflate, br, zstd\",\n    \"HTTP_ACCEPT_LANGUAGE\": \"es-ES,es;q=0.9,en;q=0.8\",\n    \"HTTP_COOKIE\": \"csrftoken=k0PckOxWsx3IPF1FPX5OvXruqH83qWuC; sessionid=uza01jwdx0qri0zq7yaa5mp1pkeinvqd\"\n  }\n}');

-- ----------------------------
-- Table structure for permiso
-- ----------------------------
DROP TABLE IF EXISTS `permiso`;
CREATE TABLE `permiso` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permiso` varchar(255) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `fk_rol_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `permiso_fk_rol_id_40568b28_fk_rol_id` (`fk_rol_id`) USING BTREE,
  CONSTRAINT `permiso_fk_rol_id_40568b28_fk_rol_id` FOREIGN KEY (`fk_rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permiso
-- ----------------------------
INSERT INTO `permiso` VALUES ('1', 'Escribir', '2025-06-02 03:38:00.775470', '2025-06-02 03:38:00.775470', '2');

-- ----------------------------
-- Table structure for publicacion
-- ----------------------------
DROP TABLE IF EXISTS `publicacion`;
CREATE TABLE `publicacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `resumen` varchar(255) DEFAULT NULL,
  `contenido` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `vistas` int(11) DEFAULT NULL,
  `fk_categoria_id` bigint(20) NOT NULL,
  `fk_estatu_id` bigint(20) NOT NULL,
  `fk_foto_portada_id` bigint(20) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `publicacion_fk_categoria_id_bf205ee8_fk_categoria_id` (`fk_categoria_id`) USING BTREE,
  KEY `publicacion_fk_estatu_id_a04bb771_fk_estatu_id` (`fk_estatu_id`) USING BTREE,
  KEY `publicacion_fk_foto_portada_id_f69c4069_fk_archivo_id` (`fk_foto_portada_id`) USING BTREE,
  KEY `publicacion_fk_user_id_ca7b6afc_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  CONSTRAINT `publicacion_fk_categoria_id_bf205ee8_fk_categoria_id` FOREIGN KEY (`fk_categoria_id`) REFERENCES `categoria` (`id`),
  CONSTRAINT `publicacion_fk_estatu_id_a04bb771_fk_estatu_id` FOREIGN KEY (`fk_estatu_id`) REFERENCES `estatu` (`id`),
  CONSTRAINT `publicacion_fk_foto_portada_id_f69c4069_fk_archivo_id` FOREIGN KEY (`fk_foto_portada_id`) REFERENCES `archivo` (`id`),
  CONSTRAINT `publicacion_fk_user_id_ca7b6afc_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of publicacion
-- ----------------------------
INSERT INTO `publicacion` VALUES ('1', 'sdfdv', 'df vb', '<p>jhhhhhhhhhhhhhhhhh</p>', '2025-05-26 16:38:34.705276', '2025-06-02 04:53:53.896826', '0', '1', '4', '149', '4');
INSERT INTO `publicacion` VALUES ('2', 'hiivrtbhnjm', 'df vb', '<p>gggggggggggggg</p>', '2025-05-26 17:46:37.538976', '2025-06-02 04:53:56.014568', '0', '1', '4', '149', '4');
INSERT INTO `publicacion` VALUES ('3', 'hhhh', 'hhhh', '<p>hhhhhhhhhhhhh</p>', '2025-05-26 18:01:40.138948', '2025-06-02 04:53:56.887631', '0', '3', '4', '154', '4');
INSERT INTO `publicacion` VALUES ('4', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>sas</p>', '2025-05-27 00:05:34.651939', '2025-06-02 04:54:00.262391', '0', '1', '4', '160', '4');
INSERT INTO `publicacion` VALUES ('5', 'Descargar python', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>asda</p>', '2025-05-28 01:02:23.586998', '2025-06-02 04:53:58.207110', '1', '1', '4', '200', '4');
INSERT INTO `publicacion` VALUES ('6', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>asd</p>', '2025-05-28 01:11:06.243248', '2025-06-02 04:54:01.251578', '1', '1', '4', '200', '4');
INSERT INTO `publicacion` VALUES ('9', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>asd</p>', '2025-05-28 01:21:28.482201', '2025-06-02 04:54:02.123278', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('10', 'asd', 'asd', '<p>asd</p>', '2025-05-28 01:21:50.554602', '2025-06-02 04:54:03.942981', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('11', 'as', 'AS', '<p>A</p>', '2025-05-28 01:23:38.741810', '2025-06-02 04:54:04.477689', '1', '1', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('12', 'as', 'AS', '<p>sAA</p>', '2025-05-28 01:25:10.610966', '2025-06-02 04:54:04.736301', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('13', 'as', 'AS', '<p>ASD</p>', '2025-05-28 01:27:00.766779', '2025-06-02 04:54:04.936763', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('14', 'wqwe', 'qwe', '<p>qew</p>', '2025-05-28 01:30:09.231850', '2025-06-02 04:54:05.662513', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('15', 'qwe', 'qwe', '<p>asdasd</p>', '2025-05-28 01:31:15.527301', '2025-06-02 04:54:06.120766', '1', '1', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('16', 'asd', 'asd', '<p>asd</p>', '2025-05-28 01:32:39.278115', '2025-06-02 04:54:06.485209', '1', '2', '4', '201', '4');
INSERT INTO `publicacion` VALUES ('17', 'asd', 'asd', '<p>asdasd<strong>asd</strong></p>', '2025-05-28 01:33:36.638606', '2025-06-02 04:54:06.844830', '1', '2', '4', '215', '4');
INSERT INTO `publicacion` VALUES ('18', 'asd', 'asd', '<p>asd<strong>asd</strong></p>', '2025-05-28 01:42:47.369684', '2025-06-02 04:54:07.215828', '1', '2', '4', '216', '4');
INSERT INTO `publicacion` VALUES ('19', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>akjdajsds</p>', '2025-05-28 23:12:07.137009', '2025-06-02 04:54:09.981524', '1', '1', '4', '220', '4');
INSERT INTO `publicacion` VALUES ('20', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', 'Esta tarde de miércoles está cerrada la vía a la altura del corredor Ocuiltzapotlán.', '<p><span style=\"font-family: impact, sans-serif;\">Los bloqueos de ciudadanos por falta de energ&iacute;a el&eacute;ctrica siguen sin dar tregua, debido a que siguen las deficiencias de la ya paraestatal Comisi&oacute;n Federal de Electricidad.</span></p>\r\n<p><span style=\"font-family: impact, sans-serif;\">Ahora este mi&eacute;rcoles habitantes del fraccionamiento Colinas de Santo Domingo, quien decidieron bloquear la vialidad en el km 15.9 de la carretera Villahermosa-Frontera.</span></p>\r\n<p><span style=\"font-family: impact, sans-serif;\"><span class=\"css-1jxf684 r-bcqeeo r-1ttztb7 r-qvutc0 r-poiln3\">Se ha formado una larga fila de veh&iacute;culos por el bloqueo de la importante v&iacute;a carretera.</span></span></p>\r\n<p><span style=\"font-family: impact, sans-serif;\">Los habitantes de Colinas de Santo Domingo, Las Rosas y Ocuiltzapotl&aacute;n indican que no desbloquear&aacute;n hasta no tener respuesta de la empresa ya que desde ayer en la tarde no tienen luz el&eacute;ctrica.</span></p>\r\n<p><span style=\"font-family: impact, sans-serif;\">Informaci&oacute;n en proceso&hellip;</span></p>', '2025-05-29 03:14:28.794293', '2025-06-02 04:54:08.294499', '1', '13', '4', '224', '4');
INSERT INTO `publicacion` VALUES ('21', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', 'Esta tarde de miércoles está cerrada la vía a la altura del corredor Ocuiltzapotlán.', '<p><span style=\"font-family: \'courier new\', courier, monospace;\">Los bloqueos de ciudadanos por falta de energ&iacute;a el&eacute;ctrica siguen sin dar tregua, debido a que siguen las deficiencias de la ya paraestatal Comisi&oacute;n Federal de Electricidad.</span></p>\r\n<p><span style=\"font-family: \'courier new\', courier, monospace;\">Ahora este mi&eacute;rcoles habitantes del fraccionamiento Colinas de Santo Domingo, quien decidieron bloquear la vialidad en el km 15.9 de la carretera Villahermosa-Frontera.</span></p>\r\n<p><span class=\"css-1jxf684 r-bcqeeo r-1ttztb7 r-qvutc0 r-poiln3\" style=\"font-family: \'courier new\', courier, monospace;\">Se ha formado una larga fila de veh&iacute;culos por el bloqueo de la importante v&iacute;a carretera.</span></p>\r\n<p><span style=\"font-family: \'courier new\', courier, monospace;\">Los habitantes de Colinas de Santo Domingo, Las Rosas y Ocuiltzapotl&aacute;n indican que no desbloquear&aacute;n hasta no tener respuesta de la empresa ya que desde ayer en la tarde no tienen luz el&eacute;ctrica.</span></p>\r\n<p><span style=\"font-family: \'courier new\', courier, monospace;\">Informaci&oacute;n en proceso&hellip;</span></p>', '2025-05-29 03:54:43.259327', '2025-06-02 04:54:09.158445', '1', '13', '4', '232', '4');
INSERT INTO `publicacion` VALUES ('22', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>Los bloqueos de ciudadanos por falta de energ&iacute;a el&eacute;ctrica siguen sin dar tregua, debido a que siguen las deficiencias de la ya paraestatal Comisi&oacute;n Federal de Electricidad.</p>\r\n<p>Ahora este mi&eacute;rcoles habitantes del fraccionamiento Colinas de Santo Domingo, quien decidieron bloquear la vialidad en el km 15.9 de la carretera Villahermosa-Frontera.</p>\r\n<p><span class=\"css-1jxf684 r-bcqeeo r-1ttztb7 r-qvutc0 r-poiln3\">Se ha formado una larga fila de veh&iacute;culos por el bloqueo de la importante v&iacute;a carretera.</span></p>\r\n<p>Los habitantes de Colinas de Santo Domingo, Las Rosas y Ocuiltzapotl&aacute;n indican que no desbloquear&aacute;n hasta no tener respuesta de la empresa ya que desde ayer en la tarde no tienen luz el&eacute;ctrica.</p>', '2025-05-29 04:02:52.557131', '2025-06-02 04:54:10.466699', '1', '13', '4', '236', '4');
INSERT INTO `publicacion` VALUES ('23', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>Los bloqueos de ciudadanos por falta de energ&iacute;a el&eacute;ctrica siguen sin dar tregua, debido a que siguen las deficiencias de la ya paraestatal Comisi&oacute;n Federal de Electricidad.</p>\r\n<p>Ahora este mi&eacute;rcoles habitantes del fraccionamiento Colinas de Santo Domingo, quien decidieron bloquear la vialidad en el km 15.9 de la carretera Villahermosa-Frontera.</p>\r\n<p><span class=\"css-1jxf684 r-bcqeeo r-1ttztb7 r-qvutc0 r-poiln3\">Se ha formado una larga fila de veh&iacute;culos por el bloqueo de la importante v&iacute;a carretera.</span></p>\r\n<p>Los habitantes de Colinas de Santo Domingo, Las Rosas y Ocuiltzapotl&aacute;n indican que no desbloquear&aacute;n hasta no tener respuesta de la empresa ya que desde ayer en la tarde no tienen luz el&eacute;ctrica.</p>', '2025-05-29 04:05:26.034166', '2025-06-02 04:54:10.901826', '1', '1', '4', '240', '4');
INSERT INTO `publicacion` VALUES ('24', 'adsasd', 'asdad', '<p>xSDASD</p>', '2025-05-29 04:11:02.385154', '2025-06-02 04:54:32.895434', '1', '1', '4', '244', '4');
INSERT INTO `publicacion` VALUES ('25', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<p>holasdasdassd</p>', '2025-05-29 04:28:52.142710', '2025-06-02 04:54:11.780480', '1', '1', '4', '247', '4');
INSERT INTO `publicacion` VALUES ('26', 'as', 'asd', '<p>asda</p>', '2025-05-29 04:37:42.473121', '2025-06-02 04:54:33.649609', '1', '1', '4', '251', '4');
INSERT INTO `publicacion` VALUES ('27', 'asda', 'asda', '<p>zzxc</p>', '2025-05-29 04:41:27.914283', '2025-06-02 04:54:34.137730', '1', '2', '4', '254', '4');
INSERT INTO `publicacion` VALUES ('28', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2025-06-02 02:13:21.733170', '2025-06-02 04:54:12.418337', '1', '1', '4', '258', '4');
INSERT INTO `publicacion` VALUES ('29', 'Cómo se comparan los ejércitos, los misiles y los sistemas de defensa de India y Pakistán en medio de la escalada entre las dos potencias nucleares', 'La Fuerza de Seguridad Fronteriza de India ha lanzado una gran operación para rastrear a los autores del ataque de Pahalgam, en Cachemira.', '<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2025-06-02 02:24:47.662446', '2025-06-02 04:54:12.821892', '1', '1', '4', '261', '4');
INSERT INTO `publicacion` VALUES ('30', 'No dan tregua bloqueos contra CFE: cierran la Villahermosa-Frontera', 'Esta tarde de miércoles está cerrada la vía a la altura del corredor Ocuiltzapotlán.', '<div class=\"mvp-post-soc-wrap left relative\">Los bloqueos de ciudadanos por falta de energ&iacute;a el&eacute;ctrica siguen sin dar tregua, debido a que siguen las deficiencias de la ya paraestatal Comisi&oacute;n Federal de Electricidad.</div>\r\n<div class=\"mvp-post-soc-in\">\r\n<div id=\"mvp-content-body\" class=\"left relative\">\r\n<div id=\"mvp-content-body-top\" class=\"left relative\">\r\n<div id=\"mvp-content-main\" class=\"left relative especial-th\">\r\n<p>Ahora este mi&eacute;rcoles habitantes del fraccionamiento Colinas de Santo Domingo, quien decidieron bloquear la vialidad en el km 15.9 de la carretera Villahermosa-Frontera.</p>\r\n<p><span class=\"css-1jxf684 r-bcqeeo r-1ttztb7 r-qvutc0 r-poiln3\">Se ha formado una larga fila de veh&iacute;culos por el bloqueo de la importante v&iacute;a carretera.</span></p>\r\n<p>Los habitantes de Colinas de Santo Domingo, Las Rosas y Ocuiltzapotl&aacute;n indican que no desbloquear&aacute;n hasta no tener respuesta de la empresa ya que desde ayer en la tarde no tienen luz el&eacute;ctrica.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2025-06-02 03:44:19.372548', '2025-06-02 03:44:19.372548', '1', '13', '2', '264', '4');
INSERT INTO `publicacion` VALUES ('31', '¿A dónde va la MINISTRA ..?', 'La ministra que desafió a la 4T e hizo todo cuanto le ordenaron los que la IMPUSIERON en la presidencia de la SCJN, Norma Lucia Piña Hernández, pasará a la historia por su RADICALISMO, su ARROGANCIA, arraigado pensamiento CONSERVADOR', '<div class=\"mvp-post-soc-wrap left relative\">EL DESTINO DE NORMA PI&Ntilde;A HERN&Aacute;NDEZ (64 A&Ntilde;OS), PRESIDENTA DE LA CORTE, ES INCIERTO. DE HECHO A NADIE PARECE IMPORTARLE, CON TODO Y SER LA MUJER M&Aacute;S CUESTIONADA POR LA 4T, POR NO DECIR QUE, LA M&Aacute;S ODIADA POR LA MAYOR&Iacute;A DEL PUEBLO DE M&Eacute;XICO, AUNQUE ESO S&Iacute;, AMADA POR LA OPOSICI&Oacute;N: LOS NEOLIBERALES, LOS FIFIS. LOS NARCOS, LOS HAMPONES DE CUELLO BLANCO Y HASTA LOS DE CAMISA PERCUDIDA. EN FIN, DA LO MISMO SI LA SE&Ntilde;ORA CARA DURA SE VA DE &ldquo;VACACIONES&rdquo; A ESPA&Ntilde;A (SANTUARIO DE CORRUPTOS), EN DONDE BIEN PUEDE INVERTIR SU &ldquo;GUARDADITO&rdquo; EN LA &ldquo;BOLSA DORADA&rdquo; (VISA DORADA) O SE VA SU CASA A &ldquo;TENDER LA CAMA&rdquo; CON SU MARIDO ENRIQUE VEGA MART&Iacute;NEZ, QUIEN ES SECRETARIO GENERAL DEL SINDICATO NACIONAL DE TRABAJADORES DE SAMBORNS HERMANOS, Y POR TANTO, LIGADO A LOS INTERESES DE EL HOMBRE M&Aacute;S RICO DE M&Eacute;XICO, CARLOS SLIM. POR CIERTO, ESTA EMPRESA DEL GRUPO CARSO NUNCA HA TENIDO UNA HUELGA DE SUS M&Aacute;S DE 2 MIL 300 EMPLEADOS REGISTRADOS ANTE LA SECRETAR&Iacute;A DEL TRABAJO.</div>\r\n<div class=\"mvp-post-soc-in\">\r\n<div id=\"mvp-content-body\" class=\"left relative\">\r\n<div id=\"mvp-content-body-top\" class=\"left relative\">\r\n<div id=\"mvp-content-main\" class=\"left relative especial-th\">\r\n<p>SALVADOR GARC&Iacute;A SOTO SE PREGUNTABA ALGUNA VEZ SI CON TODO ESTO, LA SCJN PASAR&Iacute;A A SER, COMO TODO M&Eacute;XICO, TERRITORIO TELCEL (?) EMPERO , HAY UN DATO QUE INQUIETA Y MUCHO, POR LO QUE LA SE&Ntilde;ORA PI&Ntilde;A BUSCA BLINDARSE -ELLA Y SU BANDA- YA QUE A HORAS DE LA ELECCI&Oacute;N DE JUZGADORES, LA SE&Ntilde;ORA NORMA PI&Ntilde;A SE HAYA DADO A LA TAREA DE NOTIFICAR A LA UNIDAD GENERAL DE INVESTIGACIONES DE RESPONSABILIDADES ADMINISTRATIVAS QUE TODOS ELLOS (LOS DEL &ldquo;C&Aacute;RTEL DE LA TOGA&rdquo;) NO SON SUJETOS DE RESPONSABILIDAD ES Y QUE SOLO PUEDEN SER SUJETOS DE JUICIO POL&Iacute;TICO COMO LO MANDATA EL ART&Iacute;CULO 34 DE LA CONSTITUCI&Oacute;N. ESTO ES, QUE TODOS LOS INTEGRANTES DEL M&Aacute;XIMO TRIBUNAL QUE ELLA DIRIGE, EST&Aacute;N EXENTOS DE ACUSACIONES Y QUE ESE ORGANISMO DEBER&Aacute; ARCHIVAR TODAS LAS QUEJAS RECIBIDAS CONTRA ESTOS DURANTE EL PERIODO DE SU ENCARGO&hellip;AS&Iacute; O MAS CLARO &iquest; A QU&Eacute; LE TEME?&hellip;</p>\r\n<p>Lo realmente IMPORTANTE es SALIR HOY A VOTAR. En el caso de candidatas a ministra yo voy a votar en primer lugar por YAZM&Iacute;N ESQUIVEL, es la N&Uacute;MERO OCHO.</p>\r\n<p>Coincido con mi amigo JORGE ARMANDO ROCHA en que ser&aacute; una extraordinaria presidenta de la SUPREMA CORTE de JUSTICIA de la NACI&Oacute;N, aunque a decir verdad, ha estado sometida a fuego amigo y enemigo&rdquo;. Hay que decir qus dentro de la 4T hay quienes han lanzado una campa&ntilde;a de desprestigio, pero ella ha aguantado. Y por otro lado, en el caso de los conservadores, pues hicieron todo lo posible para que no fuera presidenta de la Corte e impusieron a NORMA PI&Ntilde;A, pero YAZM&Iacute;N es consecuente, congruente, honesta, una mujer que no traiciona. Y bueno, pues es el n&uacute;mero 8. Yo voy a votar por ella como mi primera opci&oacute;n. Igual que otros colegas tengo otras cartas, pero en el caso del TRIBUNAL DISCIPLINARIO , mi primera opci&oacute;n es EVA VER&Oacute;NICA DE GIBBS-ZARATE , es la n&uacute;mero 2 en la BOLETA VERDE en menta. Meparece que es una mujer consecuente que, adem&aacute;s, ha escalado dentro del PODER JUDICIAL de las pocas que ha podido abrirse paso en funci&oacute;n de su m&eacute;rito.</p>\r\n<p>Y adem&aacute;s es una mujer que viene de abajo, oaxaque&ntilde;a, ha hecho campa&ntilde;a a ras de suelo, ha escuchado a la gente, una mujer tambi&eacute;n ejemplar&rdquo;. &ldquo;No tengo duda que va a revisar con imparcialidad los asuntos que concernen a temas pol&eacute;micos, a decisiones de jueces y juezas que se est&eacute;n extralimitando, y no tengo duda que har&aacute; las sanciones correspondientes. Hay que destacar que hoy es integrante del CONSEJO DE LA JUDICATURA y ha tenido ya puntos de vista muy encontrados con la actual presidenta, NORMA PI&Ntilde;A. He dicho&hellip;</p>\r\n<p>&Aacute;NIMAS&hellip;</p>\r\n<p>&ldquo;As&iacute; como millones de mexicanos, la PRESIDENTA votar&aacute; a las nueve de la ma&ntilde;ana este domingo. Le preguntaron, oiga, y usted sabe si va a votar el expresidente ANDR&Eacute;S MANUEL L&Oacute;PEZ OBRADOR? A lo que la doctora SHEINBAUM dijo : &ldquo;Pues no lo s&eacute;, porque no tengo comunicaci&oacute;n directa. S&eacute; que est&aacute; bien. S&eacute; que est&aacute; contento&rdquo;</p>\r\n<p>&ldquo;Lo s&eacute; por los hijos del expresidente y por alguna persona que de pronto va a verlo y me dice est&aacute; bien. Pero bueno, tambi&eacute;n destaca que no tiene una comunicaci&oacute;n cotidiana porque algunos, sobre todo desde la derecha, sostienen que tiene el TEL&Eacute;FONO ROJO y desde Palenque dice que s&iacute; y que no, y le da &oacute;rdenes a la presidenta. Ella dice CONTUNDENTE: Est&aacute;n absolutamente EXTRAVIADOS&hellip;</p>\r\n<p>HUACHICOL EN TABASCO&hellip;</p>\r\n<p>Las investigaciones de FGR sobre el negocio de COMBUSTIBLE por la v&iacute;a del HUACHICOL involucra tanto a FUNCIONARIOS DE PEMEX como a ALCALDES. El tema del huachicoleo de combustible est&aacute; m&aacute;s complicado de lo que se pudiera imaginar. Al menos as&iacute; lo revelan datos del Observatorio Ciudadano del Instituto para la Gesti&oacute;n, Administraci&oacute;n y Vinculaci&oacute;n Municipal, ya que reporta que en el primer tri-mestre del a&ntilde;o, 52 tomas clandestinas en sus ductos. El indicador, se ha dicho, da cuenta de que cada 38 horas apareci&oacute; una zona de huachicol. &iquest;En qu&eacute; municipios se han encontrado estas tomas? 25 e n C&Aacute;RDENAS , 17 e n HUIMANGUILLO y 7 e n CUNDUACAN. Llama la atenci&oacute;n el dato, porque apenas la v&iacute;spera se anunci&oacute; el aseguramiento de 3 millones 123 m il 200 litros de hidrocarburo de procedenciail&iacute;cita e n u n predio ubicado en el municipio de Centro. Derivado de acciones de inteligencia, el gabinete de seguri-dad federal pudo dar este golpe que, n o s recuerdan, no es el primero&hellip; Las cifras parecen infladas, por lo que alguien tiene que salir a aclarar.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2025-06-02 05:00:48.814208', '2025-06-02 05:07:11.197915', '1', '5', '2', '268', '4');
INSERT INTO `publicacion` VALUES ('32', '¡Tramposos!', 'El periodo de veda electoral es un pilar fundamental de nuestra democracia. Y ha sido concebido para que la ciudadanía pueda meditar y emitir su sufragio libre y secreto sin coacciones de última hora.', '<p>El periodo de veda electoral es un pilar fundamental de nuestra democracia. Y ha sido concebido para que la ciudadan&iacute;a pueda meditar y emitir su sufragio libre y secreto sin coacciones de &uacute;ltima hora.</p>\r\n<p>Lamentablemente, siempre hay gente que est&aacute; dispuesta a destruirlo todo. &ldquo;Expertos en demoliciones&rdquo;, les llamaba el escritor Leon Bloy. Y ayer, sin que nadie lo pidiera, sali&oacute; un grupo de &ldquo;iluminados&rdquo; a ofrecernos sus listas y sus recomendaciones. Dizque para darnos su &ldquo;mejor&rdquo; opini&oacute;n sobre la elecci&oacute;n de ma&ntilde;ana.</p>\r\n<p>&iquest;Bajo qu&eacute; argumento? &iexcl;Ninguno! Simple y llanamente: Vote por este juez, y por este magistrado, y por este ministro porque yo lo estudi&eacute; bien y me cae bien y es buena persona. As&iacute; de burdas sus &ldquo;recomendaciones&rdquo;. Algo me llam&oacute; la atenci&oacute;n: La mayor&iacute;a de estos grandes recomendadores son aparatosos intelectuales de la izquierda (boutique) que adolecen de una mirada achacosa y reum&aacute;tica.</p>\r\n<p>Y la verdad me result&oacute; bastante enfadoso ver que, a escasas horas de la hist&oacute;rica jornada c&iacute;vica, hab&iacute;a en las redes sociales un desangelado desfile de tullidos intelectuales. Pero, m&aacute;s all&aacute; de lo rid&iacute;culo y grotesco de este numerito, lo cierto es que estas acciones no persiguen un fin informativo.</p>\r\n<p>Se trata de una t&aacute;ctica premeditada y perversa para influir en los votantes. Y es que, aprovechando el desastre que son las boletas electorales, estos ma&ntilde;osos individuos decidieron aprovechar el momento para divulgar sus &ldquo;gu&iacute;as&rdquo; y &ldquo;sugerencias&rdquo;. Me queda claro que su objetivo es orientar las votaciones hacia los candidatos que son afines a ellos.</p>\r\n<p>Y ante esta situaci&oacute;n, la responsabilidad recae en cada uno de nosotros. Ma&ntilde;ana viviremos un proceso democr&aacute;tico sin precedentes, y nuestra participaci&oacute;n debe ser informada y consciente.</p>\r\n<p>Y, justo por eso, no podemos permitir que estos personajes, ampar&aacute;ndose en la libertad de expresi&oacute;n, nos impongan a sus candidatos preferidos y distorsionen la esencia de nuestra democracia para satisfacer sus propios intereses.</p>', '2025-06-02 05:17:06.355308', '2025-06-02 05:17:45.147381', '1', '13', '2', '271', '4');
INSERT INTO `publicacion` VALUES ('33', 'Operativo especial de la SSPC asegura cierre tranquilo de casillas en Tabasco', 'Al cierre de la jornada , se reportó un desarrollo pacífico sin incidentes que comprometieran la seguridad de las personas o el normal desarrollo del proceso electoral.', '<div class=\"mvp-post-soc-wrap left relative\"><a title=\"Tweet This Post\" href=\"https://www.tabascohoy.com/operativo-especial-de-la-sspc-asegura-cierre-tranquilo-de-casillas-en-tabasco/\">&nbsp;</a><a title=\"Enviar por whatsapp\" href=\"https://api.whatsapp.com/send?text=Operativo%20especial%20de%20la%20SSPC%20asegura%20cierre%20tranquilo%20de%20casillas%20en%20Tabasco%C2%A0https://www.tabascohoy.com/operativo-especial-de-la-sspc-asegura-cierre-tranquilo-de-casillas-en-tabasco/\" target=\"_blank\" rel=\"noopener\">&nbsp;</a><a href=\"https://www.tabascohoy.com/operativo-especial-de-la-sspc-asegura-cierre-tranquilo-de-casillas-en-tabasco/#respond\">&nbsp;</a></div>\r\n<div class=\"mvp-post-soc-in\">\r\n<div id=\"mvp-content-body\" class=\"left relative\">\r\n<div id=\"mvp-content-body-top\" class=\"left relative\">\r\n<div class=\"contenedor-conteo-visitas\">&nbsp;</div>\r\n<div id=\"mvp-content-main\" class=\"left relative especial-th\">\r\n<p data-start=\"167\" data-end=\"426\">En el marco de la jornada electoral de este domingo, la Secretar&iacute;a de Seguridad y Protecci&oacute;n Ciudadana (SSPC) implement&oacute; un operativo especial para garantizar la seguridad durante el cierre de las casillas y el traslado de los paquetes electorales en Tabasco.</p>\r\n<p data-start=\"428\" data-end=\"773\">Elementos de la SSPC se desplegaron estrat&eacute;gicamente en puntos clave para mantener el orden y la tranquilidad en esta fase cr&iacute;tica del proceso electoral. Este esfuerzo fue reforzado con la colaboraci&oacute;n de fuerzas federales, como el Ej&eacute;rcito Mexicano y la Guardia Nacional, quienes realizaron patrullajes preventivos en diversas zonas del estado.</p>\r\n<p data-start=\"775\" data-end=\"1018\">La SSPC trabaj&oacute; en estrecha coordinaci&oacute;n con el Instituto Electoral y de Participaci&oacute;n Ciudadana de Tabasco (IEPCT) y el Instituto Nacional Electoral (INE) para asegurar que la jornada concluyera en un ambiente de paz y respeto a la legalidad.</p>\r\n<p data-start=\"1020\" data-end=\"1187\">Al cierre de la jornada, se report&oacute; un desarrollo pac&iacute;fico sin incidentes que comprometieran la seguridad de las personas o el normal desarrollo del proceso electoral.</p>\r\n<p data-start=\"1189\" data-end=\"1424\">Con estas acciones, la SSPC reafirma su compromiso con la protecci&oacute;n de los ciudadanos y con el fortalecimiento de la democracia en Tabasco, garantizando que cada etapa del proceso electoral se lleve a cabo de manera segura y ordenada.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2025-06-02 18:29:27.961831', '2025-06-02 18:29:37.982303', '1', '10', '2', '274', '4');

-- ----------------------------
-- Table structure for publicacion_archivo
-- ----------------------------
DROP TABLE IF EXISTS `publicacion_archivo`;
CREATE TABLE `publicacion_archivo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  `fk_archivo_id` bigint(20) NOT NULL,
  `fk_publicacion_id` bigint(20) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `publicacion_archivo_fk_publicacion_id_fk_arc_67aa9bbf_uniq` (`fk_publicacion_id`,`fk_archivo_id`) USING BTREE,
  KEY `publicacion_archivo_fk_archivo_id_a12f17e0_fk_archivo_id` (`fk_archivo_id`) USING BTREE,
  KEY `publicacion_archivo_fk_user_id_9ae60dec_fk_auth_user_id` (`fk_user_id`) USING BTREE,
  CONSTRAINT `publicacion_archivo_fk_archivo_id_a12f17e0_fk_archivo_id` FOREIGN KEY (`fk_archivo_id`) REFERENCES `archivo` (`id`),
  CONSTRAINT `publicacion_archivo_fk_publicacion_id_d997bbe5_fk_publicacion_id` FOREIGN KEY (`fk_publicacion_id`) REFERENCES `publicacion` (`id`),
  CONSTRAINT `publicacion_archivo_fk_user_id_9ae60dec_fk_auth_user_id` FOREIGN KEY (`fk_user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of publicacion_archivo
-- ----------------------------
INSERT INTO `publicacion_archivo` VALUES ('1', '2025-05-26 16:38:34.742003', '2025-05-26 16:38:34.742003', '149', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('2', '2025-05-26 16:38:34.749015', '2025-05-26 16:38:34.749015', '150', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('3', '2025-05-26 16:38:34.755573', '2025-05-26 16:38:34.755573', '151', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('4', '2025-05-26 16:38:34.762094', '2025-05-26 16:38:34.762094', '152', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('5', '2025-05-26 16:38:34.767084', '2025-05-26 16:38:34.767084', '153', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('6', '2025-05-26 16:38:34.773820', '2025-05-26 16:38:34.773820', '154', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('7', '2025-05-26 16:38:34.778722', '2025-05-26 16:38:34.778722', '155', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('8', '2025-05-26 16:43:20.607221', '2025-05-26 16:43:20.607221', '156', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('9', '2025-05-26 16:43:20.611749', '2025-05-26 16:43:20.611749', '157', '1', '4');
INSERT INTO `publicacion_archivo` VALUES ('10', '2025-05-26 17:46:37.550525', '2025-05-26 17:46:37.550525', '149', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('11', '2025-05-26 17:46:37.556080', '2025-05-26 17:46:37.556080', '150', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('12', '2025-05-26 17:46:37.560087', '2025-05-26 17:46:37.560087', '151', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('13', '2025-05-26 17:46:37.565607', '2025-05-26 17:46:37.565607', '152', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('14', '2025-05-26 17:46:37.570710', '2025-05-26 17:46:37.570710', '153', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('15', '2025-05-26 17:46:37.574352', '2025-05-26 17:46:37.574352', '154', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('16', '2025-05-26 17:46:37.579289', '2025-05-26 17:46:37.579289', '155', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('17', '2025-05-26 17:46:37.583981', '2025-05-26 17:46:37.583981', '156', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('18', '2025-05-26 17:46:37.588085', '2025-05-26 17:46:37.588085', '157', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('19', '2025-05-26 17:46:37.592676', '2025-05-26 17:46:37.592676', '158', '2', '4');
INSERT INTO `publicacion_archivo` VALUES ('20', '2025-05-26 18:01:40.165737', '2025-05-26 18:01:40.165737', '149', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('21', '2025-05-26 18:01:40.185242', '2025-05-26 18:01:40.185242', '150', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('22', '2025-05-26 18:01:40.204637', '2025-05-26 18:01:40.204637', '151', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('23', '2025-05-26 18:01:40.222979', '2025-05-26 18:01:40.222979', '152', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('24', '2025-05-26 18:01:40.242880', '2025-05-26 18:01:40.242880', '153', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('25', '2025-05-26 18:01:40.254496', '2025-05-26 18:01:40.254496', '154', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('26', '2025-05-26 18:01:40.264843', '2025-05-26 18:01:40.264843', '155', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('27', '2025-05-26 18:01:40.274751', '2025-05-26 18:01:40.274751', '156', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('28', '2025-05-26 18:01:40.284313', '2025-05-26 18:01:40.284313', '157', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('29', '2025-05-26 18:01:40.294401', '2025-05-26 18:01:40.294401', '158', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('30', '2025-05-26 18:01:40.302784', '2025-05-26 18:01:40.302784', '159', '3', '4');
INSERT INTO `publicacion_archivo` VALUES ('31', '2025-05-27 00:05:34.653940', '2025-05-27 00:05:34.653940', '160', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('32', '2025-05-27 00:05:34.655940', '2025-05-27 00:05:34.655940', '161', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('33', '2025-05-27 00:05:34.656939', '2025-05-27 00:05:34.656939', '162', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('34', '2025-05-27 00:05:34.657939', '2025-05-27 00:05:34.657939', '163', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('35', '2025-05-27 00:05:34.657939', '2025-05-27 00:05:34.657939', '164', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('36', '2025-05-27 00:05:34.658939', '2025-05-27 00:05:34.658939', '165', '4', '4');
INSERT INTO `publicacion_archivo` VALUES ('37', '2025-05-28 01:42:47.372675', '2025-05-28 01:42:47.372675', '217', '18', '4');
INSERT INTO `publicacion_archivo` VALUES ('38', '2025-05-28 01:42:47.373675', '2025-05-28 01:42:47.373675', '218', '18', '4');
INSERT INTO `publicacion_archivo` VALUES ('39', '2025-05-28 01:42:47.375744', '2025-05-28 01:42:47.375744', '219', '18', '4');
INSERT INTO `publicacion_archivo` VALUES ('40', '2025-05-28 23:12:07.142007', '2025-05-28 23:12:07.142007', '221', '19', '4');
INSERT INTO `publicacion_archivo` VALUES ('41', '2025-05-28 23:12:07.145017', '2025-05-28 23:12:07.145017', '222', '19', '4');
INSERT INTO `publicacion_archivo` VALUES ('42', '2025-05-28 23:12:07.146009', '2025-05-28 23:12:07.146009', '223', '19', '4');
INSERT INTO `publicacion_archivo` VALUES ('43', '2025-05-29 03:14:28.797291', '2025-05-29 03:14:28.798291', '225', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('44', '2025-05-29 03:14:28.800293', '2025-05-29 03:14:28.800293', '226', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('45', '2025-05-29 03:14:28.802293', '2025-05-29 03:14:28.802293', '227', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('46', '2025-05-29 03:52:13.696484', '2025-05-29 03:52:13.696484', '229', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('47', '2025-05-29 03:52:13.704751', '2025-05-29 03:52:13.704751', '230', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('48', '2025-05-29 03:52:13.704751', '2025-05-29 03:52:13.704751', '231', '20', '4');
INSERT INTO `publicacion_archivo` VALUES ('49', '2025-05-29 03:54:43.267543', '2025-05-29 03:54:43.267543', '233', '21', '4');
INSERT INTO `publicacion_archivo` VALUES ('50', '2025-05-29 03:54:43.267543', '2025-05-29 03:54:43.267543', '234', '21', '4');
INSERT INTO `publicacion_archivo` VALUES ('51', '2025-05-29 03:54:43.267543', '2025-05-29 03:54:43.267543', '235', '21', '4');
INSERT INTO `publicacion_archivo` VALUES ('52', '2025-05-29 04:02:52.558125', '2025-05-29 04:02:52.559136', '237', '22', '4');
INSERT INTO `publicacion_archivo` VALUES ('53', '2025-05-29 04:02:52.560120', '2025-05-29 04:02:52.560120', '238', '22', '4');
INSERT INTO `publicacion_archivo` VALUES ('54', '2025-05-29 04:02:52.562131', '2025-05-29 04:02:52.562131', '239', '22', '4');
INSERT INTO `publicacion_archivo` VALUES ('55', '2025-05-29 04:05:26.036177', '2025-05-29 04:05:26.036177', '241', '23', '4');
INSERT INTO `publicacion_archivo` VALUES ('56', '2025-05-29 04:05:26.038181', '2025-05-29 04:05:26.038181', '242', '23', '4');
INSERT INTO `publicacion_archivo` VALUES ('57', '2025-05-29 04:05:26.039179', '2025-05-29 04:05:26.039179', '243', '23', '4');
INSERT INTO `publicacion_archivo` VALUES ('58', '2025-05-29 04:11:02.385154', '2025-05-29 04:11:02.385154', '246', '24', '4');
INSERT INTO `publicacion_archivo` VALUES ('59', '2025-05-29 04:11:02.385154', '2025-05-29 04:11:02.385154', '245', '24', '4');
INSERT INTO `publicacion_archivo` VALUES ('60', '2025-05-29 04:28:52.145701', '2025-05-29 04:28:52.145701', '248', '25', '4');
INSERT INTO `publicacion_archivo` VALUES ('61', '2025-05-29 04:28:52.148710', '2025-05-29 04:28:52.148710', '250', '25', '4');
INSERT INTO `publicacion_archivo` VALUES ('62', '2025-05-29 04:28:52.150710', '2025-05-29 04:28:52.150710', '249', '25', '4');
INSERT INTO `publicacion_archivo` VALUES ('63', '2025-05-29 04:37:42.475127', '2025-05-29 04:37:42.475127', '252', '26', '4');
INSERT INTO `publicacion_archivo` VALUES ('64', '2025-05-29 04:37:42.477450', '2025-05-29 04:37:42.477450', '253', '26', '4');
INSERT INTO `publicacion_archivo` VALUES ('65', '2025-05-29 04:41:27.916292', '2025-05-29 04:41:27.916292', '255', '27', '4');
INSERT INTO `publicacion_archivo` VALUES ('66', '2025-05-29 04:41:27.918292', '2025-05-29 04:41:27.918292', '256', '27', '4');
INSERT INTO `publicacion_archivo` VALUES ('67', '2025-05-29 04:41:27.920285', '2025-05-29 04:41:27.920285', '257', '27', '4');
INSERT INTO `publicacion_archivo` VALUES ('68', '2025-06-02 02:13:21.735174', '2025-06-02 02:13:21.735174', '259', '28', '4');
INSERT INTO `publicacion_archivo` VALUES ('69', '2025-06-02 02:13:21.737172', '2025-06-02 02:13:21.737172', '260', '28', '4');
INSERT INTO `publicacion_archivo` VALUES ('70', '2025-06-02 02:24:47.664449', '2025-06-02 02:24:47.664449', '262', '29', '4');
INSERT INTO `publicacion_archivo` VALUES ('71', '2025-06-02 02:24:47.666449', '2025-06-02 02:24:47.666449', '263', '29', '4');
INSERT INTO `publicacion_archivo` VALUES ('72', '2025-06-02 03:44:19.374550', '2025-06-02 03:44:19.374550', '265', '30', '4');
INSERT INTO `publicacion_archivo` VALUES ('73', '2025-06-02 03:44:19.376307', '2025-06-02 03:44:19.376307', '266', '30', '4');
INSERT INTO `publicacion_archivo` VALUES ('74', '2025-06-02 03:44:19.377400', '2025-06-02 03:44:19.377400', '267', '30', '4');
INSERT INTO `publicacion_archivo` VALUES ('75', '2025-06-02 05:00:48.819209', '2025-06-02 05:00:48.819209', '269', '31', '4');
INSERT INTO `publicacion_archivo` VALUES ('76', '2025-06-02 05:00:48.820208', '2025-06-02 05:00:48.820208', '270', '31', '4');
INSERT INTO `publicacion_archivo` VALUES ('77', '2025-06-02 05:17:06.357306', '2025-06-02 05:17:06.357306', '272', '32', '4');
INSERT INTO `publicacion_archivo` VALUES ('78', '2025-06-02 05:17:06.357306', '2025-06-02 05:17:06.358812', '273', '32', '4');
INSERT INTO `publicacion_archivo` VALUES ('79', '2025-06-02 18:29:27.964849', '2025-06-02 18:29:27.964849', '275', '33', '4');
INSERT INTO `publicacion_archivo` VALUES ('80', '2025-06-02 18:29:27.966841', '2025-06-02 18:29:27.966841', '276', '33', '4');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO `rol` VALUES ('1', 'ADMIN', '2025-05-26 07:33:01.336151', '2025-05-26 07:33:01.336151');
INSERT INTO `rol` VALUES ('2', 'OPERADOR', '2025-05-26 07:33:06.464906', '2025-05-26 07:33:06.464906');
INSERT INTO `rol` VALUES ('3', 'EDITOR', '2025-05-26 07:33:12.261570', '2025-05-26 07:33:12.261570');
INSERT INTO `rol` VALUES ('4', 'LECTOR', '2025-05-26 07:33:16.542706', '2025-05-26 07:33:16.542706');
INSERT INTO `rol` VALUES ('5', 'qweqwe', '2025-06-02 03:38:34.971421', '2025-06-02 03:38:34.971421');
