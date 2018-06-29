/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : db_gudangbarang

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 29/06/2018 17:10:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `ID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `XID_KATEGORI` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `XID_PENGGUNA` int(11) NOT NULL,
  `NAMA_BARANG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MERK_BARANG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HARGA_BARANG` int(11) NOT NULL,
  `STOK_BARANG` int(11) NOT NULL,
  `IMAGE_BARANG` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_BARANG`) USING BTREE,
  INDEX `FK_ID_KATEGORI`(`XID_KATEGORI`) USING BTREE,
  INDEX `FK_XID_PENGGUNA`(`XID_PENGGUNA`) USING BTREE,
  CONSTRAINT `FK_ID_KATEGORI` FOREIGN KEY (`XID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_XID_PENGGUNA` FOREIGN KEY (`XID_PENGGUNA`) REFERENCES `pengguna` (`ID_PENGGUNA`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES ('BRG0001', 'K00001', 1, 'INTEL CORE i789', 'INTEL', 7000000, 2, 'http://www.venuscomputers.pk/wp-content/uploads/2014/09/Core%E2%84%A2-i7-4790K-300x300.jpg');
INSERT INTO `barang` VALUES ('BRG0002', 'K00002', 1, 'NVIDIA GTX 1080', 'NVIDIA', 8000000, 2, 'https://www.beritateknologi.com/wp-content/uploads/2017/04/38394_large_geforcegtx1080ti-01.png');
INSERT INTO `barang` VALUES ('BRG0003', 'K00003', 1, 'Asus 8X External Slim', 'ASUS', 300000, 3, 'https://brain-images-ssl.cdn.dixons.com/2/0/21856102/u_21856102.jpg');
INSERT INTO `barang` VALUES ('BRG0004', 'K00004', 1, 'Corsair Vengeance LPX', 'CORSAIR', 1000000, 7, 'https://images-na.ssl-images-amazon.com/images/I/51D9ofTCYcL._SL500_AC_SS350_.jpg');
INSERT INTO `barang` VALUES ('BRG0005', 'K00005', 1, 'ASUS ROG STRIX B250H', 'ASUS', 2000000, 13, 'https://www.asus.com/media/global/products/UuXdqeEwqKCze4pL/P_setting_000_1_90_end_500.png');
INSERT INTO `barang` VALUES ('BRG0006', 'K00006', 1, 'COOLER MASTER MWE 450', 'COOLER MASTER', 400000, 8, 'https://blossomzones.com/wp-content/uploads/2018/01/MWE-450.jpg');
INSERT INTO `barang` VALUES ('BRG0007', 'K00007', 1, 'SEAGATE FIRECUDA 2.5', 'SEAGATE', 1000000, 5, 'https://images-na.ssl-images-amazon.com/images/I/915bJk4f6DL._SL1500_.jpg');
INSERT INTO `barang` VALUES ('BRG0008', 'K00001', 1, 'AMD Ryzen 7 2700X', 'AMD', 5000000, 3, 'https://cdn.wccftech.com/wp-content/uploads/2018/01/AMD-Ryzen-2.jpg');
INSERT INTO `barang` VALUES ('BRG0009', 'K00001', 1, 'AMD Ryzen Threadripper 1950X', 'AMD', 20000000, 2, 'http://www.legitreviews.com/wp-content/uploads/2017/08/threadripper-install-board-9.jpg');
INSERT INTO `barang` VALUES ('BRG0010', 'K00001', 1, 'INTEL Core i9-7960X', 'INTEL', 25000000, 1, 'https://www.bhphotovideo.com/images/images2500x2500/intel_bx80673i97960x_core_i9_7960x_x_series_2_8_1361951.jpg');
INSERT INTO `barang` VALUES ('BRG0011', 'K00002', 1, 'Radeon RX Vega 64', 'AMD', 25000000, 1, 'https://s2.bukalapak.com/img/2783212381/w-1000/Sapphire_Radeon_RX_VEGA_64_8GB_HBM2.jpg');
INSERT INTO `barang` VALUES ('BRG0012', 'K00002', 1, 'Radeon RX Vega 64 Liquid Cooled', 'AMD', 17000000, 2, 'https://static.gigabyte.com/Product/3/6387/2017072816314295_big.png');
INSERT INTO `barang` VALUES ('BRG0013', 'K00002', 1, 'NVIDIA Quadro GV100', 'NVIDIA', 150000000, 1, 'http://analisadaily.com/assets/image/news/small/2018/03/nvidia-quadro-gv100-didukung-ray-tracing-529128-1.jpg');
INSERT INTO `barang` VALUES ('BRG0014', 'K00003', 1, 'Lenovo Thinkpad USB Slim', 'LENOVO', 25000000, 2, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2017/3/31/138143071/138143071_a307811d-fb79-431e-951f-f46e0d23c33f_454_538.jpg');
INSERT INTO `barang` VALUES ('BRG0015', 'K00004', 1, 'VGEN 4GB DDR4 PC', 'VGEN', 700000, 15, 'https://ecs7.tokopedia.net/img/cache/700/product-1/2017/12/6/4505638/4505638_ca42c05e-0def-47b4-b6cc-afb9c6808f0c_700_393.jpg');
INSERT INTO `barang` VALUES ('BRG0016', 'K00004', 1, 'Kingstone 4GB DDR3 PC', 'KINGSTONE', 400000, 6, 'https://s2.bukalapak.com/img/2306451331/w-1000/RAM_DDR_3_4GB_KINGSTON_PC12800___PC310600_BARU.jpg');
INSERT INTO `barang` VALUES ('BRG0017', 'K00004', 1, 'OCPC 8GB DDR3 PC', 'OCPC', 1400000, 10, 'https://s2.bukalapak.com/img/762722212/w-1000/Ram%20OCPC%20Xtreme%20DDR3%208GB%201600Mhz%20PC12800%20like%20new.JPG');
INSERT INTO `barang` VALUES ('BRG0018', 'K00005', 1, 'MSI Gaming M3', 'MSI', 890000, 4, 'https://dstatic.computeruniverse.net/images/1000/90679650E5967F98222E4EA690E0A99E.jpg');
INSERT INTO `barang` VALUES ('BRG0019', 'K00005', 1, 'ASUS Prime Z3', 'ASUS', 1500000, 4, 'https://productimages.hepsiburada.net/s/3/500/9603739844658.jpg');
INSERT INTO `barang` VALUES ('BRG0020', 'K00005', 1, 'GYGABITE Aorus X', 'GYGABITE', 550000, 4, 'https://assets.hardwarezone.com/img/2017/08/gigabyte-x299-aorus-gaming.jpg');
INSERT INTO `barang` VALUES ('BRG0021', 'K00006', 1, 'CORSAIR RM', 'CORSAIR', 550000, 4, 'http://cwsmgmt.corsair.com/media/catalog/product/r/m/rm1000_sideview_a.png');
INSERT INTO `barang` VALUES ('BRG0022', 'K00006', 1, 'EVGA Super', 'EVGA', 550000, 3, 'http://cdn.pcpartpicker.com/static/forever/images/product/a4a40fbe050996aebbc73368a3d3449d.256p.jpg');
INSERT INTO `barang` VALUES ('BRG0023', 'K00006', 1, 'SEASONIC ', 'SEASONIC', 550000, 5, 'https://images10.newegg.com/BizIntell/item/17/151/17-151-122/2.jpg');
INSERT INTO `barang` VALUES ('BRG0025', 'K00007', 1, 'Seagate Barracuda Int 2.5\" 1TB', 'SEAGATE', 700000, 0, 'https://images-na.ssl-images-amazon.com/images/I/91kc-ob1WbL._SX425_.jpg');

-- ----------------------------
-- Table structure for detail_barang
-- ----------------------------
DROP TABLE IF EXISTS `detail_barang`;
CREATE TABLE `detail_barang`  (
  `ID_DETAIL_BARANG` int(11) NOT NULL AUTO_INCREMENT,
  `ID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMOR_SERI_DETAIL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `STATUS_DETAIL` enum('READY','PENDING','DEFACED','RESERVED') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `KETERANGAN_DETAIL` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_DETAIL_BARANG`) USING BTREE,
  INDEX `FK_MENDAPATKAN_DETAIL_BARANG`(`ID_BARANG`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of detail_barang
-- ----------------------------
INSERT INTO `detail_barang` VALUES (16, 'BRG0003', '8x-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (20, 'BRG0003', '8x-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (21, 'BRG0003', '8x-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (22, 'BRG0004', 'LPX-EXTREME 001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (23, 'BRG0004', 'LPX-EXTREME 002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (24, 'BRG0004', 'LPX-EXTREME 003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (25, 'BRG0004', 'LPX-EXTREME 004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (26, 'BRG0004', 'LPX-EXTREME 005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (27, 'BRG0004', 'LPX-EXTREME 006', 'READY', '-');
INSERT INTO `detail_barang` VALUES (28, 'BRG0004', 'LPX-EXTREME 007', 'READY', '-');
INSERT INTO `detail_barang` VALUES (29, 'BRG0004', 'LPX-EXTREME 008', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (30, 'BRG0004', 'LPX-EXTREME 009', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (33, 'BRG0004', 'LPX-EXTREME 010', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (34, 'BRG0005', 'B250H-1', 'READY', '-');
INSERT INTO `detail_barang` VALUES (35, 'BRG0005', 'B250H-2', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (36, 'BRG0005', 'B250H-3', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (37, 'BRG0005', 'B250H-4', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (38, 'BRG0005', 'B250H-5', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (39, 'BRG0005', 'B250H-6', 'READY', '-');
INSERT INTO `detail_barang` VALUES (40, 'BRG0005', 'B250H-7', 'READY', '-');
INSERT INTO `detail_barang` VALUES (41, 'BRG0005', 'B250H-8', 'READY', '-');
INSERT INTO `detail_barang` VALUES (42, 'BRG0005', 'B250H-9', 'READY', '-');
INSERT INTO `detail_barang` VALUES (43, 'BRG0005', 'B250H-10', 'READY', '-');
INSERT INTO `detail_barang` VALUES (44, 'BRG0005', 'B250H-11', 'READY', '-');
INSERT INTO `detail_barang` VALUES (45, 'BRG0005', 'B250H-12', 'READY', '-');
INSERT INTO `detail_barang` VALUES (46, 'BRG0005', 'B250H-13', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (47, 'BRG0005', 'B250H-14', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (48, 'BRG0005', 'B250H-15', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (49, 'BRG0005', 'B250H-16', 'READY', '-');
INSERT INTO `detail_barang` VALUES (50, 'BRG0005', 'B250H-17', 'READY', '-');
INSERT INTO `detail_barang` VALUES (51, 'BRG0005', 'B250H-18', 'READY', '-');
INSERT INTO `detail_barang` VALUES (53, 'BRG0005', 'B250H-19', 'READY', '-');
INSERT INTO `detail_barang` VALUES (55, 'BRG0005', 'B250H-20', 'READY', '-');
INSERT INTO `detail_barang` VALUES (56, 'BRG0006', 'MWE450-01', 'READY', '-');
INSERT INTO `detail_barang` VALUES (57, 'BRG0006', 'MWE450-02', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (58, 'BRG0006', 'MWE450-03', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (59, 'BRG0006', 'MWE450-04', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (60, 'BRG0006', 'MWE450-05', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (61, 'BRG0006', 'MWE450-06', 'READY', '-');
INSERT INTO `detail_barang` VALUES (62, 'BRG0006', 'MWE450-07', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (63, 'BRG0006', 'MWE450-08', 'READY', '-');
INSERT INTO `detail_barang` VALUES (64, 'BRG0006', 'MWE450-09', 'READY', '-');
INSERT INTO `detail_barang` VALUES (65, 'BRG0006', 'MWE450-10', 'READY', '-');
INSERT INTO `detail_barang` VALUES (66, 'BRG0006', 'MWE450-11', 'READY', '-');
INSERT INTO `detail_barang` VALUES (67, 'BRG0006', 'MWE450-12', 'READY', '-');
INSERT INTO `detail_barang` VALUES (68, 'BRG0006', 'MWE450-13', 'READY', '-');
INSERT INTO `detail_barang` VALUES (69, 'BRG0007', 'FCUDA-A01', 'READY', '-');
INSERT INTO `detail_barang` VALUES (70, 'BRG0007', 'FCUDA-A02', 'READY', '-');
INSERT INTO `detail_barang` VALUES (71, 'BRG0007', 'FCUDA-A03', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (72, 'BRG0007', 'FCUDA-A04', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (73, 'BRG0007', 'FCUDA-A05', 'READY', '-');
INSERT INTO `detail_barang` VALUES (74, 'BRG0007', 'FCUDA-A06', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (75, 'BRG0007', 'FCUDA-A07', 'READY', '-');
INSERT INTO `detail_barang` VALUES (76, 'BRG0007', 'FCUDA-A08', 'READY', '-');
INSERT INTO `detail_barang` VALUES (77, 'BRG0008', 'R7-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (78, 'BRG0008', 'R7-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (79, 'BRG0008', 'R7-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (80, 'BRG0008', 'R7-004', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (81, 'BRG0008', 'R7-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (82, 'BRG0009', 'RT-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (83, 'BRG0009', 'RT-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (84, 'BRG0009', 'RT-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (85, 'BRG0010', 'i9-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (86, 'BRG0010', 'i9-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (87, 'BRG0010', 'i9-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (88, 'BRG0010', 'i9-004', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (89, 'BRG0011', 'RXV64-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (90, 'BRG0011', 'RXV64-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (91, 'BRG0012', 'RXV64LC-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (92, 'BRG0012', 'RXV64LC-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (93, 'BRG0012', 'RXV64LC-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (94, 'BRG0013', 'GV100-001', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (95, 'BRG0013', 'GV100-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (96, 'BRG0013', 'GV100-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (97, 'BRG0013', 'GV100-004', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (98, 'BRG0014', 'LTUSBS-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (99, 'BRG0014', 'LTUSBS-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (100, 'BRG0015', 'VGEN4D4-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (101, 'BRG0015', 'VGEN4D4-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (102, 'BRG0015', 'VGEN4D4-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (103, 'BRG0015', 'VGEN4D4-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (104, 'BRG0015', 'VGEN4D4-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (105, 'BRG0015', 'VGEN4D4-006', 'READY', '-');
INSERT INTO `detail_barang` VALUES (106, 'BRG0015', 'VGEN4D4-007', 'READY', '-');
INSERT INTO `detail_barang` VALUES (107, 'BRG0015', 'VGEN4D4-008', 'READY', '-');
INSERT INTO `detail_barang` VALUES (108, 'BRG0015', 'VGEN4D4-009', 'READY', '-');
INSERT INTO `detail_barang` VALUES (109, 'BRG0015', 'VGEN4D4-010', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (110, 'BRG0015', 'VGEN4D4-011', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (111, 'BRG0015', 'VGEN4D4-012', 'READY', '-');
INSERT INTO `detail_barang` VALUES (112, 'BRG0015', 'VGEN4D4-013', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (113, 'BRG0015', 'VGEN4D4-014', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (114, 'BRG0015', 'VGEN4D4-015', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (115, 'BRG0015', 'VGEN4D4-016', 'READY', '-');
INSERT INTO `detail_barang` VALUES (116, 'BRG0015', 'VGEN4D4-017', 'READY', '-');
INSERT INTO `detail_barang` VALUES (117, 'BRG0015', 'VGEN4D4-018', 'READY', '-');
INSERT INTO `detail_barang` VALUES (118, 'BRG0015', 'VGEN4D4-019', 'READY', '-');
INSERT INTO `detail_barang` VALUES (119, 'BRG0015', 'VGEN4D4-020', 'READY', '-');
INSERT INTO `detail_barang` VALUES (120, 'BRG0016', 'KING4D3-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (121, 'BRG0016', 'KING4D3-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (122, 'BRG0016', 'KING4D3-003', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (123, 'BRG0016', 'KING4D3-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (124, 'BRG0016', 'KING4D3-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (125, 'BRG0016', 'KING4D3-006', 'READY', '-');
INSERT INTO `detail_barang` VALUES (126, 'BRG0016', 'KING4D3-007', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (127, 'BRG0016', 'KING4D3-008', 'READY', '-');
INSERT INTO `detail_barang` VALUES (130, 'BRG0017', 'OCPC8D3-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (131, 'BRG0017', 'OCPC8D3-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (132, 'BRG0017', 'OCPC8D3-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (133, 'BRG0017', 'OCPC8D3-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (134, 'BRG0017', 'OCPC8D3-005', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (135, 'BRG0017', 'OCPC8D3-006', 'READY', '-');
INSERT INTO `detail_barang` VALUES (136, 'BRG0017', 'OCPC8D3-007', 'READY', '-');
INSERT INTO `detail_barang` VALUES (137, 'BRG0017', 'OCPC8D3-008', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (138, 'BRG0017', 'OCPC8D3-009', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (139, 'BRG0017', 'OCPC8D3-010', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (140, 'BRG0017', 'OCPC8D3-011', 'READY', '-');
INSERT INTO `detail_barang` VALUES (141, 'BRG0017', 'OCPC8D3-012', 'READY', '-');
INSERT INTO `detail_barang` VALUES (142, 'BRG0017', 'OCPC8D3-013', 'DEFACED', '-');
INSERT INTO `detail_barang` VALUES (143, 'BRG0017', 'OCPC8D3-014', 'READY', '-');
INSERT INTO `detail_barang` VALUES (144, 'BRG0017', 'OCPC8D3-015', 'READY', '-');
INSERT INTO `detail_barang` VALUES (189, 'BRG0018', 'MSIM3-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (190, 'BRG0018', 'MSIM3-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (191, 'BRG0018', 'MSIM3-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (192, 'BRG0018', 'MSIM3-004', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (193, 'BRG0018', 'MSIM3-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (194, 'BRG0019', 'ASSZ3-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (195, 'BRG0019', 'ASSZ3-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (196, 'BRG0019', 'ASSZ3-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (197, 'BRG0019', 'ASSZ3-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (198, 'BRG0019', 'ASSZ3-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (199, 'BRG0020', 'GYGAX-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (200, 'BRG0020', 'GYGAX-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (201, 'BRG0020', 'GYGAX-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (202, 'BRG0020', 'GYGAX-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (203, 'BRG0020', 'GYGAX-005', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (204, 'BRG0021', 'CORSRM-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (205, 'BRG0021', 'CORSRM-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (206, 'BRG0021', 'CORSRM-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (207, 'BRG0021', 'CORSRM-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (208, 'BRG0021', 'CORSRM-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (209, 'BRG0022', 'EVGSUP-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (210, 'BRG0022', 'EVGSUP-002', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (211, 'BRG0022', 'EVGSUP-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (212, 'BRG0022', 'EVGSUP-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (213, 'BRG0022', 'EVGSUP-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (214, 'BRG0023', 'SEASNC-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (215, 'BRG0023', 'SEASNC-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (216, 'BRG0023', 'SEASNC-003', 'READY', '-');
INSERT INTO `detail_barang` VALUES (217, 'BRG0023', 'SEASNC-004', 'READY', '-');
INSERT INTO `detail_barang` VALUES (218, 'BRG0023', 'SEASNC-005', 'READY', '-');
INSERT INTO `detail_barang` VALUES (219, 'BRG0024', 'HDD35I4-001', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (220, 'BRG0024', 'HDD35I4-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (221, 'BRG0024', 'HDD35I4-003', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (222, 'BRG0024', 'HDD35I4-004', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (223, 'BRG0024', 'HDD35I4-005', 'RESERVED', '-');
INSERT INTO `detail_barang` VALUES (224, 'BRG0024', 'HDD35I4-006', 'READY', '-');
INSERT INTO `detail_barang` VALUES (225, 'BRG0024', 'HDD35I4-007', 'READY', '-');
INSERT INTO `detail_barang` VALUES (235, 'BRG0002', '76876876', 'DEFACED', 'Ada');
INSERT INTO `detail_barang` VALUES (236, 'BRG0002', 'NVIDIATP001', 'READY', 'NOrmal normal saja');
INSERT INTO `detail_barang` VALUES (237, 'BRG0002', 'NVIDIATP002', 'READY', 'ada');
INSERT INTO `detail_barang` VALUES (238, 'BRG0010', 'i9-01', 'PENDING', '-');
INSERT INTO `detail_barang` VALUES (239, 'BRG0001', 'i9-001', 'READY', '-');
INSERT INTO `detail_barang` VALUES (240, 'BRG0001', 'i9-002', 'READY', '-');
INSERT INTO `detail_barang` VALUES (241, 'BRG0001', 'asd', 'PENDING', 'asd');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `ID_KATEGORI` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NAMA_KATEGORI` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_KATEGORI`) USING BTREE,
  INDEX `NAMA_KATEGORI`(`NAMA_KATEGORI`) USING BTREE,
  INDEX `ID_KATEGORI`(`ID_KATEGORI`, `NAMA_KATEGORI`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('K00001', 'CPU');
INSERT INTO `kategori` VALUES ('K00002', 'GPU');
INSERT INTO `kategori` VALUES ('K00007', 'HDD');
INSERT INTO `kategori` VALUES ('K00005', 'MOTHERBOARD');
INSERT INTO `kategori` VALUES ('K00003', 'OPTICAL DRIVE');
INSERT INTO `kategori` VALUES ('K00006', 'POWER SUPPLY');
INSERT INTO `kategori` VALUES ('K00004', 'RAM');

-- ----------------------------
-- Table structure for log_detail_barang
-- ----------------------------
DROP TABLE IF EXISTS `log_detail_barang`;
CREATE TABLE `log_detail_barang`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NOMOR_SERI_DETAIL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `WAKTU` datetime(0) NOT NULL,
  `STATUS_LAMA` enum('READY','PENDING','DEFACED','RESERVED') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `STATUS_BARU` enum('READY','PENDING','DEFACED','RESERVED') CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log_detail_barang
-- ----------------------------
INSERT INTO `log_detail_barang` VALUES (1, 'BRG0001', 'i9-002', '2018-06-29 16:42:51', NULL, 'READY');
INSERT INTO `log_detail_barang` VALUES (2, 'BRG0001', 'i9-001', '2018-06-29 16:43:17', 'DEFACED', 'READY');
INSERT INTO `log_detail_barang` VALUES (3, 'BRG0001', 'asd', '2018-06-29 16:44:24', NULL, 'READY');
INSERT INTO `log_detail_barang` VALUES (4, 'BRG0001', 'asd', '2018-06-29 16:44:28', NULL, 'READY');
INSERT INTO `log_detail_barang` VALUES (5, 'BRG0001', 'asd', '2018-06-29 16:56:58', 'READY', 'PENDING');
INSERT INTO `log_detail_barang` VALUES (6, 'BRG0001', 'asd', '2018-06-29 17:09:34', 'READY', NULL);

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `ID_PENGGUNA` int(11) NOT NULL,
  `NAMA` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `EMAIL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `USER_TYPE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_PENGGUNA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (0, '', 'abel', '', '', 'abel');
INSERT INTO `pengguna` VALUES (1, 'Adnan Khairi', 'adnankhairi', 'adnankhairi@student.upi.edu', 'admin', 'C521CC3DA32F9176D0B2483D4D8CA433');
INSERT INTO `pengguna` VALUES (2, 'adnan', 'adnan', 'squadron296@gmail.com', 'user', 'f3465a353436bbab3617815f64083c84');
INSERT INTO `pengguna` VALUES (3, 'Alley', 'ali', 'ali@gmail.com', 'user', 'ali');

-- ----------------------------
-- Table structure for spesifikasi
-- ----------------------------
DROP TABLE IF EXISTS `spesifikasi`;
CREATE TABLE `spesifikasi`  (
  `ID_SPESIFIKASI` int(11) NOT NULL AUTO_INCREMENT,
  `XID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RINCIAN_SPESIFIKASI` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_SPESIFIKASI`) USING BTREE,
  INDEX `FK_MENENTUKAN_SPESIFIKASI`(`XID_BARANG`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spesifikasi
-- ----------------------------
INSERT INTO `spesifikasi` VALUES (1, 'BRG0001', 'PROCESSOR\r\nNumber of Cores Quad-Core\r\nProcessor Number i7-7700\r\nCompatible Processor Socket LGA1151 Socket\r\nClock Speed 3.6 GHz\r\nMax Turbo Speed 4.2 GHz\r\nType / Form Factor Intel Core i7 7700 (7th Gen)\r\nCache Memory Details Smart Cache - 8 MB\r\nProcessor Qty 1\r\nType Core i7\r\nNumber of Threads 8 threads\r\nGeneration 7\r\nInstalled Qty 1\r\nArchitecture Features Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Virtualization Technology, Intel 64 Technology, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel AES New Instructions (AES-NI), Thermal Monitoring Technologies, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Idle States, Intel Identity Protection Technology, Intel Secure Key, Intel Advanced Vector Extensions 2 (AVX2.0), Intel TSX-NI, Intel Stable Image Platform Program (SIPP), Intel Software Guard Extensions (SGX), Intel Memory Protection Extensions (MPX), Intel Device Protection Technology with Boot Guard\r\nCache 8 MB\r\nManufacturer Intel\r\nManufacturing Process 14 nm\r\nThermal Specification 100 ?C\r\nFeatures Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Software Guard Extensions (SGX), Intel Stable Image Platform Program (SIPP), Intel TSX-NI, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel Virtualization Technology, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Thermal Monitoring Technologies, Idle States, Intel 64 Technology, Intel AES New Instructions (AES-NI), Intel Advanced Vector Extensions 2 (AVX2.0), Intel Device Protection Technology with Boot Guard, Intel Identity Protection Technology, Intel Memory Protection Extensions (MPX), Intel Secure Key\r\nMISCELLANEOUS\r\nProduct Type processor\r\nProcessor Package Intel Boxed\r\nHEADER\r\nBrand Intel\r\nPackaged Quantity 1\r\nCompatibility PC\r\nCACHE MEMORY DETAILS\r\nTechnology Smart Cache\r\nInstalled Size 8 MB\r\nINTEGRATED GRAPHICS\r\nType Intel HD Graphics 630\r\nBase Frequency 350 MHz\r\nMax Dynamic Frequency 1.15 GHz\r\nFeatures InTRU 3D Technology, Intel Clear Video HD Technology, Intel Clear Video Technology, Intel Quick Sync Video, Triple Display Capable\r\nGENERAL\r\nManufacturerIntel                                                                                                            ');
INSERT INTO `spesifikasi` VALUES (2, 'BRG0002', 'nama: GTX 1080\r\nCUDA CORES: 2560\r\ngraphics clock: 1607 MHz\r\nProcessor clock: 1733 Mhz\r\nMemory clock: 11Gbps\r\nmemory config: 8GB GDDR5X\r\nmemory interface: GDDR5\r\nBus Support: PCIe 3.0\r\nSupported Technologies: SLI, CUDA, 3D Vision, PhysX, NVIDIA G-SYNCT, GameStream, ShadowWorks, DirectX 12, Virtual Reality, Ansel, NVIDIA WhisperMode\r\nMaximum Digital Resolution: 7680x4320@60Hz\r\nStandard Display Connectors\r\nDP 1.42, HDMI 2.0b, DL-DVI\r\nMaximum GPU Temperature (in C): 94\r\nMaximum Graphics Card Power (W): 180\r\nMinimum System Power Requirement (W): 500\r\nSupplementary Power Connectors: 8-pin\r\n\r\n\r\n                        ');
INSERT INTO `spesifikasi` VALUES (3, 'BRG0003', 'GENERAL\r\nDevice Type DVD?RW (?R DL) / DVD-RAM drive - external\r\nManufacturer Asus\r\nSTORAGE\r\nDrive Type DVD writer\r\nProduct Type DVD?RW (?R DL) / DVD-RAM drive\r\nEnclosure Type external\r\nInterface USB 2.0\r\nOPTICAL STORAGE\r\nType DVD?RW (?R DL) / DVD-RAM\r\nSpeeds 8x/8x/5x\r\nRead Speed 24x (CD) / 8x (DVD)\r\nWrite Speed 24x (CD) / 8x (DVD?R) / 6x (DVD?R DL)\r\nRewrite Speed 16x (CD) / 6x (DVD-RW) / 8x (DVD+RW) / 5x (DVD-RAM)\r\nSupported Recording Modes disk-at-once, incremental recording, multisession, packet writing, random access write, restricted overwrite, sequential write, session-at-once, track-at-once\r\nSupported Media Formats CD Extra, CD Text, CD-DA (audio), CD-I, CD-ROM, CD-ROM XA, DVD-Video, Photo CD, Video CD\r\nSupported Media Types CD-R, CD-ROM, DVD-RW, CD-RW, DVD+R, DVD+R DL, DVD-RAM, DVD-ROM\r\nBuffer Size 1 MB\r\nAccess Time 140 sec, 160 sec\r\nFeatures Disc Encryption, E-Green Engine technology, USB powered, horizontal/vertical mountable\r\nCompliant Standards Video CD\r\nPOWER DEVICE\r\nType none\r\nMISCELLANEOUS\r\nMicrosoft Certifications Compatible with Windows 7\r\nColor black\r\nColor Category black\r\nINTERFACE PROVIDED\r\nQty 1\r\nConnector Type 4 pin USB Type A\r\nInterface USB 2.0\r\nVIDEO\r\nVideo Output none\r\nSOFTWARE / SYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows XP, Microsoft Windows 7, Microsoft Windows Vista\r\nSYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows 7, Microsoft Windows Vista, Microsoft Windows XP\r\nENVIRONMENTAL PARAMETERS\r\nMin Operating Temperature 41 ?F\r\nMax Operating Temperature 104 ?F\r\nHumidity Range Operating 15 - 80%\r\nHEADER\r\nBrand ASUS\r\nProduct Line ASUS SDRW\r\nModel 08D2S-U\r\nPackaged Quantity 1\r\nCompatibility PC\r\nEXPANSION SLOTS\r\nType none\r\nDIMENSIONS & WEIGHT\r\nWidth 5.6 in\r\nDepth 6.2 in\r\nHeight 0.8 in\r\nWeight 11.04 oz\r\nBAY REQUIRED\r\nType none\r\nSLOT REQUIRED\r\nType none\r\nSOFTWARE\r\nType CyberLink Power2Go\r\nSYSTEM REQUIREMENTS DETAILS\r\nProcessor Type Pentium 4\r\nMin RAM Size 512 MB\r\nMin Hard Drive Space 10 GB\r\nGENERAL\r\nManufacturerAsus');
INSERT INTO `spesifikasi` VALUES (4, 'BRG0004', 'GENERAL\r\nMemory Specification Compliance PC4-24000\r\nMemory Speed 3000 MHz\r\nData Integrity Check non-ECC\r\nUpgrade Type generic\r\nManufacturerCorsair Microsystems Inc.\r\nMEMORY\r\nLatency Timings CL15 ( 15-17-17-35 )\r\nData Integrity Check Non-ECC\r\nRAM Performance SPD - 2133 MHz - 1.2 V - CL15 - 15-15-15-36\r\nTested - 3000 MHz - 1.35 V - CL15 - 15-17-17-35\r\nRAM\r\nType DRAM\r\nForm Factor DIMM 288-pin\r\nTechnology DDR4 SDRAM\r\nStorage Capacity 16 GB\r\nRegistered or Buffered unbuffered\r\nSupply Voltage 1.35 V\r\nCAS Latency CL15\r\nLatency Timings 15-17-17-35\r\nRAM Features 8 Layers PCB heatspreader, Intel Extreme Memory Profiles (XMP 2.0), Vengeance LPX low profile heatspreader, anodized aluminum heatspreader, dual channel\r\nHEADER\r\nBrand Corsair\r\nProduct Line Corsair Vengeance\r\nModel LPX\r\nPackaged Quantity 1\r\nCompatibility PC\r\nRAM PERFORMANCE\r\nProfile SPD, Tested\r\nSpeed 2133 MHz, 3000 MHz\r\nVoltage 1.2 V, 1.35 V\r\nCAS Latency CL15, CL15\r\nLatency Timing 15-15-15-36, 15-17-17-35\r\nMEMORY MODULE\r\nModules in Kit 2\r\nCapacity of Module in Kit 8 GB\r\nSERVICE & SUPPORT\r\nType limited lifetime warranty\r\nGENERAL\r\nManufacturerCorsair Microsystems Inc.');
INSERT INTO `spesifikasi` VALUES (5, 'BRG0005', '6 x USB 2.0\r\n(2 mid-board, 4 rear)\r\nDVI\r\nHDMI\r\n6 x USB 3.0\r\n(4 mid-board, 2 rear)\r\nIntel? I219-V Gigabit LAN \r\nGameFirst Technology\r\nLANGuard\r\nSupremeFX 8-Channel Audio\r\nOptical S/PDIF out\r\n1x PCIe 3.0 x 16 (support x16) \r\n1x PCIe 3.0 x 16 (support x4)\r\n4 x PCIe 3.0 x 1\r\nSupremeFX S1220A Codec \r\n? Impedance sense\r\n? High quality output and input\r\n? SupremeFX shielding\r\n? Dual headphone amplifiers\r\nDDR4 2400/2133MHz \r\n4 x DIMM, dual-channel \r\nSupport XMP\r\nIntel? Socket 1151\r\nM.2 Socket 3 Type M (2242-2280)\r\nSupports SATA and PCIe 3.0 x 4 modes\r\n6 x SATA 6Gb/s\r\nM.2 Socket 3 Type M (2242-22110) \r\nSupports PCIe 3.0 x 4 mode \r\nCLRTC Header');
INSERT INTO `spesifikasi` VALUES (6, 'BRG0006', 'Product NameMWE 450\r\nProduct NumberMPW-4502-ACABW\r\nTypeIntel Form Factor ATX 12V V2.31\r\nPFCActive PFC (>0.9 typical)\r\nInput Voltage200-240 Vac\r\nInput Current3.5A\r\nInput Frequency47-63Hz\r\nDimensions (LxBxH)140 x 150 x 86mm\r\nFan Size120mm\r\nFan BearingHDB\r\nFan Speed725-1460 RPM\r\nPower Good Signal100-500ms\r\nHold Up Time>14ms\r\nEfficiency85% @ Typically Load\r\nErP 2013 Lot 6Yes\r\nMTBF>100,000 Hours\r\nOperating Temperature40?C\r\nProtectionsOVP / OPP / OTP / SCP\r\nRegulatoryCE, TUV, EAC, RCM, CCC\r\nConnectorsMB 20+4 Pin1\r\nCPU 12V 4+4 Pin1\r\nSATA6\r\n4 Pin Peripheral3\r\nFDD Cable 4 Pin1\r\nPCI-e 6+2 Pin2\r\nWarranty3 Years ?\r\nCable typeEANUPC\r\nAR, AU, BR, EU, PH4719512060858884102033452\r\nUK4719512060193');
INSERT INTO `spesifikasi` VALUES (7, 'BRG0007', 'GENERAL\r\nCapacity 2 TB\r\nInterface SATA 6Gb/s\r\nBytes per Sector 4096\r\nWeight 3.39 oz\r\nManufacturerSeagate Technology\r\nINTERFACE PROVIDED\r\nStorage Interface Serial ATA-600\r\nPERFORMANCE\r\nInternal Data Rate 140 MBps\r\nDrive Transfer Rate 600 MBps (external)\r\nEXPANSION & CONNECTIVITY\r\nInterfaces SATA 6 Gb/s\r\nHARD DRIVE\r\nForm Factor 2.5\"\r\nFeatures Adaptive Memory technology, Halogen Free, QuietStep\r\nHard Drive Type internal hard drive\r\nForm Factor (Short) 2.5\"\r\nForm Factor (metric) 6.4 cm\r\nForm Factor (Short) (metric) 6.4 cm\r\nStorage Interface Serial ATA-600\r\nInterface Serial ATA-600\r\nData Transfer Rate 600 MBps\r\nInternal Data Rate 140 MBps\r\nBytes per Sector 4096 Hz\r\nNon-Recoverable Errors 1 per 10^14\r\nLoad / Unload Cycles 600,000\r\nENVIRONMENTAL PARAMETERS\r\nMin Storage Temperature -40 ?F\r\nMax Storage Temperature 158 ?F\r\nMin Operating Temperature 32 ?F\r\nMax Operating Temperature 140 ?F\r\nHEADER\r\nBrand Seagate\r\nProduct Line Seagate FireCuda\r\nModel ST2000LX001\r\nPackaged Quantity 1\r\nCompatibility PC\r\nDIMENSIONS & WEIGHT\r\nWidth 2.7 in\r\nDepth 4 in\r\nHeight 0.3 in\r\nWeight 3.39 oz\r\nPOWER CONSUMPTION\r\nMode idle, read, write\r\nValue 0.5 Watt, 1.7 Watt, 1.8 Watt\r\nSERVICE & SUPPORT\r\nType 5 years warranty\r\nSERVICE & SUPPORT DETAILS\r\nType limited warranty\r\nFull Contract Period 5 years\r\nSHOCK & VIBRATION TOLERANCE\r\nShock Acceleration (Operating) 400 g\r\nShock Duration (Operating) 2 ms\r\nShock Acceleration (Non-operating) 1000 g\r\nShock Duration (Non-operating) 1 ms\r\nRELIABILITY\r\nNon-Recoverable Errors 1 per 10^14\r\nGENERAL\r\nManufacturerSeagate Technology');
INSERT INTO `spesifikasi` VALUES (8, 'BRG0008', 'Spesifikasi:\nBase Clock: 3.7 GHz\nBoost Clock:4.3 GHz\nCore: 8\nL1 Cache:768KB\nL2 Cache: 4MB\nL3 Cache: 16MB\nDefault TDP: 105W');
INSERT INTO `spesifikasi` VALUES (9, 'BRG0009', 'Spesifikasi:\nBase Clock: 3.4 GHz\nBoost Clock:4.0 GHz\nCore: 16\nL1 Cache:1.5MB\nL2 Cache: 8MB\nL3 Cache: 32MB\nDefault TDP: 180W');
INSERT INTO `spesifikasi` VALUES (10, 'BRG0010', 'Spesifikasi:\nBase Clock: 2.8 GHz\nBoost Clock:4.2 GHz\nCore: 16\nCache: 22MB\nDefault TDP: 165W');
INSERT INTO `spesifikasi` VALUES (11, 'BRG0011', 'Spesifikasi:\nInterface: PCI Express 3.0\nOutput: 3x Display Port HDMI\nClockSpeed: 1546 MHz\nMemory: 8 GB\nPower Consumption: 295W');
INSERT INTO `spesifikasi` VALUES (12, 'BRG0012', 'Spesifikasi:\nInterface: PCI Express 3.0\nOutput: 3x Display Port HDMI\nClockSpeed: 1677 MHz\nMemory: 8 GB\nPower Consumption: 345W');
INSERT INTO `spesifikasi` VALUES (13, 'BRG0013', 'Spesifikasi:\nInterface: PCI Express 3.0\nOutput: 3x Display Port HDMI\nClockSpeed: 1447 MHz\nMemory: 32 GB\nPower Consumption: 250W');
INSERT INTO `spesifikasi` VALUES (14, 'BRG0014', 'Spesifikasi:\nAccess Time: DVD - 160ms, CD - 140ms\nRead Speed: DVD - 8x, CD - 24x\nTransfer Speed: DVD - 11 MB/s, CD - 3.6 MB/s');
INSERT INTO `spesifikasi` VALUES (15, 'BRG0015', 'Spesifikasi:\nUkuran Memory: 4 GB\nForm Factor: DDR4\nSpeed: 2133 MHz\nVoltase: 1.5V');
INSERT INTO `spesifikasi` VALUES (16, 'BRG0016', 'Spesifikasi:\nUkuran Memory: 4 GB\nForm Factor: DDR3\nSpeed: 1600 MHz\nVoltase: 1.5V');
INSERT INTO `spesifikasi` VALUES (17, 'BRG0017', 'Spesifikasi:\nUkuran Memory: 8 GB\nForm Factor: DDR3\nSpeed: 1600 MHz\nVoltase: 1.5V');
INSERT INTO `spesifikasi` VALUES (18, 'BRG0018', 'Spesifikasi:\nMax CPU: i7\nSocket: 1151\nChipset: Intel Z170 Express\nDDR4 Memory: 3600 MHz OC\nMemory Channel: Dual\nMemory Max: 64GB\nUSB Slot: 10');
INSERT INTO `spesifikasi` VALUES (19, 'BRG0019', 'Spesifikasi:\nMax CPU: 8th Gen Intel Proc\nSocket: 1151\nChipset: Intel Z370\nDDR4 Memory: 4000 MHz OC\nMemory Channel\": Dual\nMemory Max: 64GB\nUSB Slot: 14');
INSERT INTO `spesifikasi` VALUES (20, 'BRG0020', 'Spesifikasi:\nMax CPU: 8th Gen Intel Proc\nSocket: 1151\nChipset: Intel X299\nDDR4 Memory: 4000 MHz OC\nMemory Channel\": Dual\nMemory Max: 128GB\nUSB Slot: 18');
INSERT INTO `spesifikasi` VALUES (21, 'BRG0021', 'Spesifikasi:\nPower: 450W\nInput: 100-240V\nFans: 1\nEfficiency: 92%');
INSERT INTO `spesifikasi` VALUES (22, 'BRG0022', 'Spesifikasi:\nPower: 750W\nInput: 100-240V\nFans: 1\nEfficiency: 92%');
INSERT INTO `spesifikasi` VALUES (23, 'BRG0023', 'Spesifikasi:\nPower: 750W\nInput: 100-240V\nFans: 1\nEfficiency: 92%');
INSERT INTO `spesifikasi` VALUES (25, 'BRG0025', 'Spesifikasi:\nSize: 1TB\nMax Transfer: 600MB/s\nRotation: 5400RPM');

-- ----------------------------
-- Triggers structure for table detail_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `add_stok`;
delimiter ;;
CREATE TRIGGER `add_stok` AFTER INSERT ON `detail_barang` FOR EACH ROW BEGIN
	IF NEW.STATUS_DETAIL = 'READY' THEN
		UPDATE barang SET STOK_BARANG = STOK_BARANG + 1 WHERE ID_BARANG = NEW.ID_BARANG;
	END IF;
	INSERT INTO log_detail_barang(ID_BARANG, NOMOR_SERI_DETAIL, WAKTU, STATUS_LAMA, STATUS_BARU) VALUES
		(NEW.ID_BARANG, NEW.NOMOR_SERI_DETAIL, CURRENT_TIMESTAMP(), null, NEW.STATUS_DETAIL);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `mod_stok`;
delimiter ;;
CREATE TRIGGER `mod_stok` AFTER UPDATE ON `detail_barang` FOR EACH ROW BEGIN
	IF NEW.STATUS_DETAIL = 'READY' AND OLD.STATUS_DETAIL != 'READY' THEN
		UPDATE barang SET STOK_BARANG = STOK_BARANG + 1 WHERE ID_BARANG = NEW.ID_BARANG;
	ELSEIF NEW.STATUS_DETAIL != 'READY' AND OLD.STATUS_DETAIL = 'READY' THEN
		UPDATE barang SET STOK_BARANG = STOK_BARANG - 1 WHERE ID_BARANG = NEW.ID_BARANG;
	END IF;
	INSERT INTO log_detail_barang(ID_BARANG, NOMOR_SERI_DETAIL, WAKTU, STATUS_LAMA, STATUS_BARU) VALUES
		(NEW.ID_BARANG, NEW.NOMOR_SERI_DETAIL, CURRENT_TIMESTAMP(), OLD.STATUS_DETAIL, NEW.STATUS_DETAIL);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table detail_barang
-- ----------------------------
DROP TRIGGER IF EXISTS `del_stok`;
delimiter ;;
CREATE TRIGGER `del_stok` BEFORE DELETE ON `detail_barang` FOR EACH ROW BEGIN
	IF OLD.STATUS_DETAIL = 'READY' THEN
		UPDATE barang SET STOK_BARANG = STOK_BARANG - 1 WHERE ID_BARANG = OLD.ID_BARANG;
	END IF;
	INSERT INTO log_detail_barang(ID_BARANG, NOMOR_SERI_DETAIL, WAKTU, STATUS_LAMA, STATUS_BARU) VALUES
		(OLD.ID_BARANG, OLD.NOMOR_SERI_DETAIL, CURRENT_TIMESTAMP(), OLD.STATUS_DETAIL, null);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
