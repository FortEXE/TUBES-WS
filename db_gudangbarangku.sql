/*
 Navicat Premium Data Transfer

 Source Server         : koneksi
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : 127.0.0.1:3306
 Source Schema         : db_gudangbarang

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 02/05/2018 14:14:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `ID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `XID_PENGGUNA` int(11) NOT NULL,
  `XID_KATEGORI` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `NAMA_BARANG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MERK_BARANG` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HARGA_BARANG` int(11) NOT NULL,
  `STOK_BARANG` int(11) NOT NULL,
  PRIMARY KEY (`ID_BARANG`) USING BTREE,
  INDEX `FK_ID_KATEGORI`(`XID_KATEGORI`) USING BTREE,
  INDEX `FK_ID_PENGGUNA`(`XID_PENGGUNA`) USING BTREE,
  CONSTRAINT `FK_ID_KATEGORI` FOREIGN KEY (`XID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_ID_PENGGUNA` FOREIGN KEY (`XID_PENGGUNA`) REFERENCES `pengguna` (`ID_PENGGUNA`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of barang
-- ----------------------------
BEGIN;
INSERT INTO `barang` VALUES ('BRG0001', 1, 'K00001', 'INTEL CORE i7', 'Intel', 6000000, 5), ('BRG0002', 1, 'K00002', 'NVIDIA GTX 1080', 'NVIDIA', 8000000, 10), ('BRG0003', 1, 'K00003', 'Asus 8X External Slim DVD+/-RW Drive Optical Drives - SDRW-08D2S', 'ASUS', 300000, 3), ('BRG0004', 1, 'K00004', 'Corsair Vengeance LPX', 'CORSAIR', 1000000, 10), ('BRG0005', 1, 'K00005', 'ASUS ROG STRIX B250H', 'ASUS', 2000000, 20), ('BRG0006', 1, 'K00006', 'COOLER MASTER MWE 450', 'COOLER MASTER', 400000, 13), ('BRG0007', 1, 'K00007', 'SEAGATE FIRECUDA 2.5', 'SEAGATE', 1000000, 8);
COMMIT;

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
  INDEX `FK_MENDAPATKAN_DETAIL_BARANG`(`ID_BARANG`) USING BTREE,
  CONSTRAINT `FK_MENDAPATKAN_DETAIL_BARANG` FOREIGN KEY (`ID_BARANG`) REFERENCES `barang` (`ID_BARANG`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of detail_barang
-- ----------------------------
BEGIN;
INSERT INTO `detail_barang` VALUES (1, 'BRG0001', 'i7-001', 'RESERVED', '-'), (2, 'BRG0001', 'i7-002', 'RESERVED', '-'), (5, 'BRG0001', 'i7-003', 'RESERVED', '-'), (6, 'BRG0001', 'i7-004', 'RESERVED', '-'), (7, 'BRG0001', 'i7-005', 'RESERVED', '-'), (9, 'BRG0002', '1080-001', 'READY', '-'), (10, 'BRG0002', '1080-002', 'READY', '-'), (11, 'BRG0002', '1080-003', 'READY', '-'), (12, 'BRG0002', '1080-004', 'RESERVED', '-'), (13, 'BRG0002', '1080-005', 'RESERVED', '-'), (14, 'BRG0002', '1080-006', 'RESERVED', '-'), (15, 'BRG0002', '1080-007', 'RESERVED', '-'), (16, 'BRG0003', '8x-002', 'READY', '-'), (17, 'BRG0002', '1080-008', 'RESERVED', '-'), (18, 'BRG0002', '1080-009', 'RESERVED', '-'), (19, 'BRG0002', '1080-010', 'READY', '-'), (20, 'BRG0003', '8x-001', 'READY', '-'), (21, 'BRG0003', '8x-003', 'READY', '-'), (22, 'BRG0004', 'LPX-EXTREME 001', 'READY', '-'), (23, 'BRG0004', 'LPX-EXTREME 002', 'READY', '-'), (24, 'BRG0004', 'LPX-EXTREME 003', 'READY', '-'), (25, 'BRG0004', 'LPX-EXTREME 004', 'READY', '-'), (26, 'BRG0004', 'LPX-EXTREME 005', 'READY', '-'), (27, 'BRG0004', 'LPX-EXTREME 006', 'READY', '-'), (28, 'BRG0004', 'LPX-EXTREME 007', 'READY', '-'), (29, 'BRG0004', 'LPX-EXTREME 008', 'DEFACED', '-'), (30, 'BRG0004', 'LPX-EXTREME 009', 'DEFACED', '-'), (33, 'BRG0004', 'LPX-EXTREME 010', 'DEFACED', '-'), (34, 'BRG0005', 'B250H-1', 'READY', '-'), (35, 'BRG0005', 'B250H-2', 'PENDING', '-'), (36, 'BRG0005', 'B250H-3', 'PENDING', '-'), (37, 'BRG0005', 'B250H-4', 'PENDING', '-'), (38, 'BRG0005', 'B250H-5', 'PENDING', '-'), (39, 'BRG0005', 'B250H-6', 'READY', '-'), (40, 'BRG0005', 'B250H-7', 'READY', '-'), (41, 'BRG0005', 'B250H-8', 'READY', '-'), (42, 'BRG0005', 'B250H-9', 'READY', '-'), (43, 'BRG0005', 'B250H-10', 'READY', '-'), (44, 'BRG0005', 'B250H-11', 'READY', '-'), (45, 'BRG0005', 'B250H-12', 'READY', '-'), (46, 'BRG0005', 'B250H-13', 'DEFACED', '-'), (47, 'BRG0005', 'B250H-14', 'DEFACED', '-'), (48, 'BRG0005', 'B250H-15', 'DEFACED', '-'), (49, 'BRG0005', 'B250H-16', 'READY', '-'), (50, 'BRG0005', 'B250H-17', 'READY', '-'), (51, 'BRG0005', 'B250H-18', 'READY', '-'), (53, 'BRG0005', 'B250H-19', 'READY', '-'), (55, 'BRG0005', 'B250H-20', 'READY', '-'), (56, 'BRG0006', 'MWE450-01', 'READY', '-'), (57, 'BRG0006', 'MWE450-02', 'DEFACED', '-'), (58, 'BRG0006', 'MWE450-03', 'DEFACED', '-'), (59, 'BRG0006', 'MWE450-04', 'PENDING', '-'), (60, 'BRG0006', 'MWE450-05', 'RESERVED', '-'), (61, 'BRG0006', 'MWE450-06', 'READY', '-'), (62, 'BRG0006', 'MWE450-07', 'RESERVED', '-'), (63, 'BRG0006', 'MWE450-08', 'READY', '-'), (64, 'BRG0006', 'MWE450-09', 'READY', '-'), (65, 'BRG0006', 'MWE450-10', 'READY', '-'), (66, 'BRG0006', 'MWE450-11', 'READY', '-'), (67, 'BRG0006', 'MWE450-12', 'READY', '-'), (68, 'BRG0006', 'MWE450-13', 'READY', '-'), (69, 'BRG0007', 'FCUDA-A01', 'READY', '-'), (70, 'BRG0007', 'FCUDA-A02', 'READY', '-'), (71, 'BRG0007', 'FCUDA-A03', 'PENDING', '-'), (72, 'BRG0007', 'FCUDA-A04', 'RESERVED', '-'), (73, 'BRG0007', 'FCUDA-A05', 'READY', '-'), (74, 'BRG0007', 'FCUDA-A06', 'DEFACED', '-'), (75, 'BRG0007', 'FCUDA-A07', 'READY', '-'), (76, 'BRG0007', 'FCUDA-A08', 'READY', '-');
COMMIT;

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
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
BEGIN;
INSERT INTO `kategori` VALUES ('K00001', 'CPU'), ('K00002', 'GPU'), ('K00007', 'HDD'), ('K00005', 'MOTHERBOARD'), ('K00003', 'OPTICAL DRIVE'), ('K00006', 'POWER SUPPLY'), ('K00004', 'RAM');
COMMIT;

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `ID_PENGGUNA` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `EMAIL` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `USER_TYPE` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'user',
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_PENGGUNA`) USING BTREE,
  INDEX `username`(`USERNAME`) USING BTREE,
  INDEX `username_2`(`USERNAME`, `ID_PENGGUNA`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
BEGIN;
INSERT INTO `pengguna` VALUES (1, 'Adnan Khairi', 'adnankhairi', 'adnankhairi@student.upi.edu', 'admin', 'C521CC3DA32F9176D0B2483D4D8CA433'), (2, 'adnan', 'adnan', 'squadron296@gmail.com', 'user', 'f3465a353436bbab3617815f64083c84');
COMMIT;

-- ----------------------------
-- Table structure for spesifikasi
-- ----------------------------
DROP TABLE IF EXISTS `spesifikasi`;
CREATE TABLE `spesifikasi`  (
  `ID_SPESIFIKASI` int(11) NOT NULL AUTO_INCREMENT,
  `XID_BARANG` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `RINCIAN_SPESIFIKASI` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID_SPESIFIKASI`) USING BTREE,
  INDEX `FK_MENENTUKAN_SPESIFIKASI`(`XID_BARANG`) USING BTREE,
  CONSTRAINT `FK_MENENTUKAN_SPESIFIKASI` FOREIGN KEY (`XID_BARANG`) REFERENCES `barang` (`ID_BARANG`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci;

-- ----------------------------
-- Records of spesifikasi
-- ----------------------------
BEGIN;
INSERT INTO `spesifikasi` VALUES (1, 'BRG0001', 'PROCESSOR\r\nNumber of Cores Quad-Core\r\nProcessor Number i7-7700\r\nCompatible Processor Socket LGA1151 Socket\r\nClock Speed 3.6 GHz\r\nMax Turbo Speed 4.2 GHz\r\nType / Form Factor Intel Core i7 7700 (7th Gen)\r\nCache Memory Details Smart Cache - 8 MB\r\nProcessor Qty 1\r\nType Core i7\r\nNumber of Threads 8 threads\r\nGeneration 7\r\nInstalled Qty 1\r\nArchitecture Features Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Virtualization Technology, Intel 64 Technology, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel AES New Instructions (AES-NI), Thermal Monitoring Technologies, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Idle States, Intel Identity Protection Technology, Intel Secure Key, Intel Advanced Vector Extensions 2 (AVX2.0), Intel TSX-NI, Intel Stable Image Platform Program (SIPP), Intel Software Guard Extensions (SGX), Intel Memory Protection Extensions (MPX), Intel Device Protection Technology with Boot Guard\r\nCache 8 MB\r\nManufacturer Intel\r\nManufacturing Process 14 nm\r\nThermal Specification 100 °C\r\nFeatures Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Software Guard Extensions (SGX), Intel Stable Image Platform Program (SIPP), Intel TSX-NI, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel Virtualization Technology, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Thermal Monitoring Technologies, Idle States, Intel 64 Technology, Intel AES New Instructions (AES-NI), Intel Advanced Vector Extensions 2 (AVX2.0), Intel Device Protection Technology with Boot Guard, Intel Identity Protection Technology, Intel Memory Protection Extensions (MPX), Intel Secure Key\r\nMISCELLANEOUS\r\nProduct Type processor\r\nProcessor Package Intel Boxed\r\nHEADER\r\nBrand Intel\r\nPackaged Quantity 1\r\nCompatibility PC\r\nCACHE MEMORY DETAILS\r\nTechnology Smart Cache\r\nInstalled Size 8 MB\r\nINTEGRATED GRAPHICS\r\nType Intel HD Graphics 630\r\nBase Frequency 350 MHz\r\nMax Dynamic Frequency 1.15 GHz\r\nFeatures InTRU 3D Technology, Intel Clear Video HD Technology, Intel Clear Video Technology, Intel Quick Sync Video, Triple Display Capable\r\nGENERAL\r\nManufacturerIntel'), (2, 'BRG0002', 'nama: GTX 1080\r\nCUDA CORES: 2560\r\ngraphics clock: 1607 MHz\r\nProcessor clock: 1733 Mhz\r\nMemory clock: 10Gbps\r\nmemory config: 8GB GDDR5X\r\nmemory interface: GDDR5\r\nBus Support: PCIe 3.0\r\nSupported Technologies: SLI, CUDA, 3D Vision, PhysX, NVIDIA G-SYNC™, GameStream, ShadowWorks, DirectX 12, Virtual Reality, Ansel, NVIDIA WhisperMode\r\nMaximum Digital Resolution: 7680x4320@60Hz\r\nStandard Display Connectors\r\nDP 1.42, HDMI 2.0b, DL-DVI\r\nMaximum GPU Temperature (in C): 94\r\nMaximum Graphics Card Power (W): 180\r\nMinimum System Power Requirement (W): 500\r\nSupplementary Power Connectors: 8-pin\r\n\r\n\r\n'), (3, 'BRG0003', 'GENERAL\r\nDevice Type DVD±RW (±R DL) / DVD-RAM drive - external\r\nManufacturer Asus\r\nSTORAGE\r\nDrive Type DVD writer\r\nProduct Type DVD±RW (±R DL) / DVD-RAM drive\r\nEnclosure Type external\r\nInterface USB 2.0\r\nOPTICAL STORAGE\r\nType DVD±RW (±R DL) / DVD-RAM\r\nSpeeds 8x/8x/5x\r\nRead Speed 24x (CD) / 8x (DVD)\r\nWrite Speed 24x (CD) / 8x (DVD±R) / 6x (DVD±R DL)\r\nRewrite Speed 16x (CD) / 6x (DVD-RW) / 8x (DVD+RW) / 5x (DVD-RAM)\r\nSupported Recording Modes disk-at-once, incremental recording, multisession, packet writing, random access write, restricted overwrite, sequential write, session-at-once, track-at-once\r\nSupported Media Formats CD Extra, CD Text, CD-DA (audio), CD-I, CD-ROM, CD-ROM XA, DVD-Video, Photo CD, Video CD\r\nSupported Media Types CD-R, CD-ROM, DVD-RW, CD-RW, DVD+R, DVD+R DL, DVD-RAM, DVD-ROM\r\nBuffer Size 1 MB\r\nAccess Time 140 sec, 160 sec\r\nFeatures Disc Encryption, E-Green Engine technology, USB powered, horizontal/vertical mountable\r\nCompliant Standards Video CD\r\nPOWER DEVICE\r\nType none\r\nMISCELLANEOUS\r\nMicrosoft Certifications Compatible with Windows 7\r\nColor black\r\nColor Category black\r\nINTERFACE PROVIDED\r\nQty 1\r\nConnector Type 4 pin USB Type A\r\nInterface USB 2.0\r\nVIDEO\r\nVideo Output none\r\nSOFTWARE / SYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows XP, Microsoft Windows 7, Microsoft Windows Vista\r\nSYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows 7, Microsoft Windows Vista, Microsoft Windows XP\r\nENVIRONMENTAL PARAMETERS\r\nMin Operating Temperature 41 °F\r\nMax Operating Temperature 104 °F\r\nHumidity Range Operating 15 - 80%\r\nHEADER\r\nBrand ASUS\r\nProduct Line ASUS SDRW\r\nModel 08D2S-U\r\nPackaged Quantity 1\r\nCompatibility PC\r\nEXPANSION SLOTS\r\nType none\r\nDIMENSIONS & WEIGHT\r\nWidth 5.6 in\r\nDepth 6.2 in\r\nHeight 0.8 in\r\nWeight 11.04 oz\r\nBAY REQUIRED\r\nType none\r\nSLOT REQUIRED\r\nType none\r\nSOFTWARE\r\nType CyberLink Power2Go\r\nSYSTEM REQUIREMENTS DETAILS\r\nProcessor Type Pentium 4\r\nMin RAM Size 512 MB\r\nMin Hard Drive Space 10 GB\r\nGENERAL\r\nManufacturerAsus'), (4, 'BRG0004', 'GENERAL\r\nMemory Specification Compliance PC4-24000\r\nMemory Speed 3000 MHz\r\nData Integrity Check non-ECC\r\nUpgrade Type generic\r\nManufacturerCorsair Microsystems Inc.\r\nMEMORY\r\nLatency Timings CL15 ( 15-17-17-35 )\r\nData Integrity Check Non-ECC\r\nRAM Performance SPD - 2133 MHz - 1.2 V - CL15 - 15-15-15-36\r\nTested - 3000 MHz - 1.35 V - CL15 - 15-17-17-35\r\nRAM\r\nType DRAM\r\nForm Factor DIMM 288-pin\r\nTechnology DDR4 SDRAM\r\nStorage Capacity 16 GB\r\nRegistered or Buffered unbuffered\r\nSupply Voltage 1.35 V\r\nCAS Latency CL15\r\nLatency Timings 15-17-17-35\r\nRAM Features 8 Layers PCB heatspreader, Intel Extreme Memory Profiles (XMP 2.0), Vengeance LPX low profile heatspreader, anodized aluminum heatspreader, dual channel\r\nHEADER\r\nBrand Corsair\r\nProduct Line Corsair Vengeance\r\nModel LPX\r\nPackaged Quantity 1\r\nCompatibility PC\r\nRAM PERFORMANCE\r\nProfile SPD, Tested\r\nSpeed 2133 MHz, 3000 MHz\r\nVoltage 1.2 V, 1.35 V\r\nCAS Latency CL15, CL15\r\nLatency Timing 15-15-15-36, 15-17-17-35\r\nMEMORY MODULE\r\nModules in Kit 2\r\nCapacity of Module in Kit 8 GB\r\nSERVICE & SUPPORT\r\nType limited lifetime warranty\r\nGENERAL\r\nManufacturerCorsair Microsystems Inc.'), (5, 'BRG0005', '6 x USB 2.0\r\n(2 mid-board, 4 rear)\r\nDVI\r\nHDMI\r\n6 x USB 3.0\r\n(4 mid-board, 2 rear)\r\nIntel© I219-V Gigabit LAN \r\nGameFirst Technology\r\nLANGuard\r\nSupremeFX 8-Channel Audio\r\nOptical S/PDIF out\r\n1x PCIe 3.0 x 16 (support x16) \r\n1x PCIe 3.0 x 16 (support x4)\r\n4 x PCIe 3.0 x 1\r\nSupremeFX S1220A Codec \r\n· Impedance sense\r\n· High quality output and input\r\n· SupremeFX shielding\r\n· Dual headphone amplifiers\r\nDDR4 2400/2133MHz \r\n4 x DIMM, dual-channel \r\nSupport XMP\r\nIntel© Socket 1151\r\nM.2 Socket 3 Type M (2242-2280)\r\nSupports SATA and PCIe 3.0 x 4 modes\r\n6 x SATA 6Gb/s\r\nM.2 Socket 3 Type M (2242-22110) \r\nSupports PCIe 3.0 x 4 mode \r\nCLRTC Header'), (6, 'BRG0006', 'Product Name	MWE 450\r\nProduct Number	MPW-4502-ACABW\r\nType	Intel Form Factor ATX 12V V2.31\r\nPFC	Active PFC (>0.9 typical)\r\nInput Voltage	200-240 Vac\r\nInput Current	3.5A\r\nInput Frequency	47-63Hz\r\nDimensions (LxBxH)	140 x 150 x 86mm\r\nFan Size	120mm\r\nFan Bearing	HDB\r\nFan Speed	725-1460 RPM\r\nPower Good Signal	100-500ms\r\nHold Up Time	>14ms\r\nEfficiency	85% @ Typically Load\r\nErP 2013 Lot 6	Yes\r\nMTBF	>100,000 Hours\r\nOperating Temperature	40°C\r\nProtections	OVP / OPP / OTP / SCP\r\nRegulatory	CE, TUV, EAC, RCM, CCC\r\nConnectors	MB 20+4 Pin	1\r\nCPU 12V 4+4 Pin	1\r\nSATA	6\r\n4 Pin Peripheral	3\r\nFDD Cable 4 Pin	1\r\nPCI-e 6+2 Pin	2\r\nWarranty	3 Years ?\r\nCable type	EAN	UPC\r\nAR, AU, BR, EU, PH	4719512060858	884102033452\r\nUK	4719512060193'), (7, 'BRG0007', 'GENERAL\r\nCapacity 2 TB\r\nInterface SATA 6Gb/s\r\nBytes per Sector 4096\r\nWeight 3.39 oz\r\nManufacturerSeagate Technology\r\nINTERFACE PROVIDED\r\nStorage Interface Serial ATA-600\r\nPERFORMANCE\r\nInternal Data Rate 140 MBps\r\nDrive Transfer Rate 600 MBps (external)\r\nEXPANSION & CONNECTIVITY\r\nInterfaces SATA 6 Gb/s\r\nHARD DRIVE\r\nForm Factor 2.5\"\r\nFeatures Adaptive Memory technology, Halogen Free, QuietStep\r\nHard Drive Type internal hard drive\r\nForm Factor (Short) 2.5\"\r\nForm Factor (metric) 6.4 cm\r\nForm Factor (Short) (metric) 6.4 cm\r\nStorage Interface Serial ATA-600\r\nInterface Serial ATA-600\r\nData Transfer Rate 600 MBps\r\nInternal Data Rate 140 MBps\r\nBytes per Sector 4096 Hz\r\nNon-Recoverable Errors 1 per 10^14\r\nLoad / Unload Cycles 600,000\r\nENVIRONMENTAL PARAMETERS\r\nMin Storage Temperature -40 °F\r\nMax Storage Temperature 158 °F\r\nMin Operating Temperature 32 °F\r\nMax Operating Temperature 140 °F\r\nHEADER\r\nBrand Seagate\r\nProduct Line Seagate FireCuda\r\nModel ST2000LX001\r\nPackaged Quantity 1\r\nCompatibility PC\r\nDIMENSIONS & WEIGHT\r\nWidth 2.7 in\r\nDepth 4 in\r\nHeight 0.3 in\r\nWeight 3.39 oz\r\nPOWER CONSUMPTION\r\nMode idle, read, write\r\nValue 0.5 Watt, 1.7 Watt, 1.8 Watt\r\nSERVICE & SUPPORT\r\nType 5 years warranty\r\nSERVICE & SUPPORT DETAILS\r\nType limited warranty\r\nFull Contract Period 5 years\r\nSHOCK & VIBRATION TOLERANCE\r\nShock Acceleration (Operating) 400 g\r\nShock Duration (Operating) 2 ms\r\nShock Acceleration (Non-operating) 1000 g\r\nShock Duration (Non-operating) 1 ms\r\nRELIABILITY\r\nNon-Recoverable Errors 1 per 10^14\r\nGENERAL\r\nManufacturerSeagate Technology');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
