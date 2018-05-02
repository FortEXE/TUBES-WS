-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 11:03 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudangbarangku`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID_BARANG` varchar(255) NOT NULL,
  `XID_KATEGORI` varchar(255) NOT NULL,
  `NAMA_BARANG` text NOT NULL,
  `MERK_BARANG` text NOT NULL,
  `HARGA_BARANG` int(11) NOT NULL,
  `STOK_BARANG` int(11) NOT NULL,
  `XID_PENGGUNA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID_BARANG`, `XID_KATEGORI`, `NAMA_BARANG`, `MERK_BARANG`, `HARGA_BARANG`, `STOK_BARANG`, `XID_PENGGUNA`) VALUES
('BRG0001', 'K00001', 'INTEL CORE i7', 'INTEL', 6000000, 5, 1),
('BRG0002', 'K00002', 'NVIDIA GTX 1080', 'NVIDIA', 8000000, 10, 1),
('BRG0003', 'K00003', 'Asus 8X External Slim', 'ASUS', 300000, 3, 1),
('BRG0004', 'K00004', 'Corsair Vengeance LPX', 'CORSAIR', 1000000, 10, 1),
('BRG0005', 'K00005', 'ASUS ROG STRIX B250H', 'ASUS', 2000000, 20, 1),
('BRG0006', 'K00006', 'COOLER MASTER MWE 450', 'COOLER MASTER', 400000, 13, 1),
('BRG0007', 'K00007', 'SEAGATE FIRECUDA 2.5', 'SEAGATE', 1000000, 8, 1),
('BRG0008', 'K00001', 'AMD Ryzen 7 2700X', 'AMD', 5000000, 5, 1),
('BRG0009', 'K00001', 'AMD Ryzen Threadripper 1950X', 'AMD', 20000000, 3, 1),
('BRG0010', 'K00001', 'INTEL Core i9-7960X', 'INTEL', 25000000, 4, 1),
('BRG0011', 'K00002', 'Radeon RX Vega 64', 'AMD', 25000000, 2, 1),
('BRG0012', 'K00002', 'Radeon RX Vega 64 Liquid Cooled', 'AMD', 17000000, 3, 1),
('BRG0013', 'K00002', 'NVIDIA Quadro GV100', 'NVIDIA', 150000000, 4, 1),
('BRG0014', 'K00003', 'Lenovo Thinkpad USB Slim', 'LENOVO', 25000000, 2, 1),
('BRG0015', 'K00004', 'VGEN 4GB DDR4 PC', 'VGEN', 700000, 20, 1),
('BRG0016', 'K00004', 'Kingstone 4GB DDR3 PC', 'KINGSTONE', 400000, 10, 1),
('BRG0017', 'K00004', 'OCPC 8GB DDR3 PC', 'OCPC', 1400000, 15, 1),
('BRG0018', 'K00005', 'MSI Gaming M3', 'MSI', 890000, 5, 1),
('BRG0019', 'K00005', 'ASUS Prime Z3', 'ASUS', 1500000, 5, 1),
('BRG0020', 'K00005', 'GYGABITE Aorus X', 'GYGABITE', 550000, 5, 1),
('BRG0021', 'K00006', 'CORSAIR RM', 'CORSAIR', 550000, 5, 1),
('BRG0022', 'K00006', 'EVGA Super', 'EVGA', 550000, 5, 1),
('BRG0023', 'K00006', 'SEASONIC ', 'SEASONIC', 550000, 5, 1),
('BRG0024', 'K00007', 'Hardisk WD Int 3.5\" 4TB', 'WD', 2400000, 7, 1),
('BRG0025', 'K00007', 'Seagate Barracuda Int 2.5\" 1TB', 'SEAGATE', 700000, 4, 1),
('BRG0026', 'K00007', 'Seagate Firecuda Int 2.5\" 2TB', 'SEAGATE', 1500000, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `ID_DETAIL_BARANG` int(11) NOT NULL,
  `ID_BARANG` varchar(255) NOT NULL,
  `NOMOR_SERI_DETAIL` varchar(255) NOT NULL,
  `STATUS_DETAIL` enum('READY','PENDING','DEFACED','RESERVED') NOT NULL,
  `KETERANGAN_DETAIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`ID_DETAIL_BARANG`, `ID_BARANG`, `NOMOR_SERI_DETAIL`, `STATUS_DETAIL`, `KETERANGAN_DETAIL`) VALUES
(1, 'BRG0001', 'i7-001', 'RESERVED', '-'),
(2, 'BRG0001', 'i7-002', 'RESERVED', '-'),
(5, 'BRG0001', 'i7-003', 'RESERVED', '-'),
(6, 'BRG0001', 'i7-004', 'RESERVED', '-'),
(7, 'BRG0001', 'i7-005', 'RESERVED', '-'),
(9, 'BRG0002', '1080-001', 'READY', '-'),
(10, 'BRG0002', '1080-002', 'READY', '-'),
(11, 'BRG0002', '1080-003', 'READY', '-'),
(12, 'BRG0002', '1080-004', 'RESERVED', '-'),
(13, 'BRG0002', '1080-005', 'RESERVED', '-'),
(14, 'BRG0002', '1080-006', 'RESERVED', '-'),
(15, 'BRG0002', '1080-007', 'RESERVED', '-'),
(16, 'BRG0003', '8x-002', 'READY', '-'),
(17, 'BRG0002', '1080-008', 'RESERVED', '-'),
(18, 'BRG0002', '1080-009', 'RESERVED', '-'),
(19, 'BRG0002', '1080-010', 'READY', '-'),
(20, 'BRG0003', '8x-001', 'READY', '-'),
(21, 'BRG0003', '8x-003', 'READY', '-'),
(22, 'BRG0004', 'LPX-EXTREME 001', 'READY', '-'),
(23, 'BRG0004', 'LPX-EXTREME 002', 'READY', '-'),
(24, 'BRG0004', 'LPX-EXTREME 003', 'READY', '-'),
(25, 'BRG0004', 'LPX-EXTREME 004', 'READY', '-'),
(26, 'BRG0004', 'LPX-EXTREME 005', 'READY', '-'),
(27, 'BRG0004', 'LPX-EXTREME 006', 'READY', '-'),
(28, 'BRG0004', 'LPX-EXTREME 007', 'READY', '-'),
(29, 'BRG0004', 'LPX-EXTREME 008', 'DEFACED', '-'),
(30, 'BRG0004', 'LPX-EXTREME 009', 'DEFACED', '-'),
(33, 'BRG0004', 'LPX-EXTREME 010', 'DEFACED', '-'),
(34, 'BRG0005', 'B250H-1', 'READY', '-'),
(35, 'BRG0005', 'B250H-2', 'PENDING', '-'),
(36, 'BRG0005', 'B250H-3', 'PENDING', '-'),
(37, 'BRG0005', 'B250H-4', 'PENDING', '-'),
(38, 'BRG0005', 'B250H-5', 'PENDING', '-'),
(39, 'BRG0005', 'B250H-6', 'READY', '-'),
(40, 'BRG0005', 'B250H-7', 'READY', '-'),
(41, 'BRG0005', 'B250H-8', 'READY', '-'),
(42, 'BRG0005', 'B250H-9', 'READY', '-'),
(43, 'BRG0005', 'B250H-10', 'READY', '-'),
(44, 'BRG0005', 'B250H-11', 'READY', '-'),
(45, 'BRG0005', 'B250H-12', 'READY', '-'),
(46, 'BRG0005', 'B250H-13', 'DEFACED', '-'),
(47, 'BRG0005', 'B250H-14', 'DEFACED', '-'),
(48, 'BRG0005', 'B250H-15', 'DEFACED', '-'),
(49, 'BRG0005', 'B250H-16', 'READY', '-'),
(50, 'BRG0005', 'B250H-17', 'READY', '-'),
(51, 'BRG0005', 'B250H-18', 'READY', '-'),
(53, 'BRG0005', 'B250H-19', 'READY', '-'),
(55, 'BRG0005', 'B250H-20', 'READY', '-'),
(56, 'BRG0006', 'MWE450-01', 'READY', '-'),
(57, 'BRG0006', 'MWE450-02', 'DEFACED', '-'),
(58, 'BRG0006', 'MWE450-03', 'DEFACED', '-'),
(59, 'BRG0006', 'MWE450-04', 'PENDING', '-'),
(60, 'BRG0006', 'MWE450-05', 'RESERVED', '-'),
(61, 'BRG0006', 'MWE450-06', 'READY', '-'),
(62, 'BRG0006', 'MWE450-07', 'RESERVED', '-'),
(63, 'BRG0006', 'MWE450-08', 'READY', '-'),
(64, 'BRG0006', 'MWE450-09', 'READY', '-'),
(65, 'BRG0006', 'MWE450-10', 'READY', '-'),
(66, 'BRG0006', 'MWE450-11', 'READY', '-'),
(67, 'BRG0006', 'MWE450-12', 'READY', '-'),
(68, 'BRG0006', 'MWE450-13', 'READY', '-'),
(69, 'BRG0007', 'FCUDA-A01', 'READY', '-'),
(70, 'BRG0007', 'FCUDA-A02', 'READY', '-'),
(71, 'BRG0007', 'FCUDA-A03', 'PENDING', '-'),
(72, 'BRG0007', 'FCUDA-A04', 'RESERVED', '-'),
(73, 'BRG0007', 'FCUDA-A05', 'READY', '-'),
(74, 'BRG0007', 'FCUDA-A06', 'DEFACED', '-'),
(75, 'BRG0007', 'FCUDA-A07', 'READY', '-'),
(76, 'BRG0007', 'FCUDA-A08', 'READY', '-'),
(77, 'BRG0008', 'R7-001', 'READY', '-'),
(78, 'BRG0008', 'R7-002', 'RESERVED', '-'),
(79, 'BRG0008', 'R7-003', 'READY', '-'),
(80, 'BRG0008', 'R7-004', 'RESERVED', '-'),
(81, 'BRG0008', 'R7-005', 'READY', '-'),
(82, 'BRG0009', 'RT-001', 'READY', '-'),
(83, 'BRG0009', 'RT-002', 'READY', '-'),
(84, 'BRG0009', 'RT-003', 'RESERVED', '-'),
(85, 'BRG0010', 'i9-001', 'READY', '-'),
(86, 'BRG0010', 'i9-002', 'RESERVED', '-'),
(87, 'BRG0010', 'i9-003', 'RESERVED', '-'),
(88, 'BRG0010', 'i9-004', 'RESERVED', '-'),
(89, 'BRG0011', 'RXV64-001', 'READY', '-'),
(90, 'BRG0011', 'RXV64-002', 'RESERVED', '-'),
(91, 'BRG0012', 'RXV64LC-001', 'READY', '-'),
(92, 'BRG0012', 'RXV64LC-002', 'READY', '-'),
(93, 'BRG0012', 'RXV64LC-003', 'RESERVED', '-'),
(94, 'BRG0013', 'GV100-001', 'RESERVED', '-'),
(95, 'BRG0013', 'GV100-002', 'RESERVED', '-'),
(96, 'BRG0013', 'GV100-003', 'READY', '-'),
(97, 'BRG0013', 'GV100-004', 'RESERVED', '-'),
(98, 'BRG0014', 'LTUSBS-001', 'READY', '-'),
(99, 'BRG0014', 'LTUSBS-002', 'READY', '-'),
(100, 'BRG0015', 'VGEN4D4-001', 'READY', '-'),
(101, 'BRG0015', 'VGEN4D4-002', 'READY', '-'),
(102, 'BRG0015', 'VGEN4D4-003', 'READY', '-'),
(103, 'BRG0015', 'VGEN4D4-004', 'READY', '-'),
(104, 'BRG0015', 'VGEN4D4-005', 'READY', '-'),
(105, 'BRG0015', 'VGEN4D4-006', 'READY', '-'),
(106, 'BRG0015', 'VGEN4D4-007', 'READY', '-'),
(107, 'BRG0015', 'VGEN4D4-008', 'READY', '-'),
(108, 'BRG0015', 'VGEN4D4-009', 'READY', '-'),
(109, 'BRG0015', 'VGEN4D4-010', 'RESERVED', '-'),
(110, 'BRG0015', 'VGEN4D4-011', 'RESERVED', '-'),
(111, 'BRG0015', 'VGEN4D4-012', 'READY', '-'),
(112, 'BRG0015', 'VGEN4D4-013', 'RESERVED', '-'),
(113, 'BRG0015', 'VGEN4D4-014', 'RESERVED', '-'),
(114, 'BRG0015', 'VGEN4D4-015', 'RESERVED', '-'),
(115, 'BRG0015', 'VGEN4D4-016', 'READY', '-'),
(116, 'BRG0015', 'VGEN4D4-017', 'READY', '-'),
(117, 'BRG0015', 'VGEN4D4-018', 'READY', '-'),
(118, 'BRG0015', 'VGEN4D4-019', 'READY', '-'),
(119, 'BRG0015', 'VGEN4D4-020', 'READY', '-'),
(120, 'BRG0016', 'KING4D3-001', 'READY', '-'),
(121, 'BRG0016', 'KING4D3-002', 'READY', '-'),
(122, 'BRG0016', 'KING4D3-003', 'DEFACED', '-'),
(123, 'BRG0016', 'KING4D3-004', 'READY', '-'),
(124, 'BRG0016', 'KING4D3-005', 'READY', '-'),
(125, 'BRG0016', 'KING4D3-006', 'READY', '-'),
(126, 'BRG0016', 'KING4D3-007', 'DEFACED', '-'),
(127, 'BRG0016', 'KING4D3-008', 'READY', '-'),
(128, 'BRG0016', 'KING4D3-009', 'RESERVED', '-'),
(129, 'BRG0016', 'KING4D3-010', 'READY', '-'),
(130, 'BRG0017', 'OCPC8D3-001', 'READY', '-'),
(131, 'BRG0017', 'OCPC8D3-002', 'READY', '-'),
(132, 'BRG0017', 'OCPC8D3-003', 'READY', '-'),
(133, 'BRG0017', 'OCPC8D3-004', 'READY', '-'),
(134, 'BRG0017', 'OCPC8D3-005', 'RESERVED', '-'),
(135, 'BRG0017', 'OCPC8D3-006', 'READY', '-'),
(136, 'BRG0017', 'OCPC8D3-007', 'READY', '-'),
(137, 'BRG0017', 'OCPC8D3-008', 'RESERVED', '-'),
(138, 'BRG0017', 'OCPC8D3-009', 'RESERVED', '-'),
(139, 'BRG0017', 'OCPC8D3-010', 'DEFACED', '-'),
(140, 'BRG0017', 'OCPC8D3-011', 'READY', '-'),
(141, 'BRG0017', 'OCPC8D3-012', 'READY', '-'),
(142, 'BRG0017', 'OCPC8D3-013', 'DEFACED', '-'),
(143, 'BRG0017', 'OCPC8D3-014', 'READY', '-'),
(144, 'BRG0017', 'OCPC8D3-015', 'READY', '-'),
(189, 'BRG0018', 'MSIM3-001', 'READY', '-'),
(190, 'BRG0018', 'MSIM3-002', 'READY', '-'),
(191, 'BRG0018', 'MSIM3-003', 'READY', '-'),
(192, 'BRG0018', 'MSIM3-004', 'RESERVED', '-'),
(193, 'BRG0018', 'MSIM3-005', 'READY', '-'),
(194, 'BRG0019', 'ASSZ3-001', 'READY', '-'),
(195, 'BRG0019', 'ASSZ3-002', 'READY', '-'),
(196, 'BRG0019', 'ASSZ3-003', 'RESERVED', '-'),
(197, 'BRG0019', 'ASSZ3-004', 'READY', '-'),
(198, 'BRG0019', 'ASSZ3-005', 'READY', '-'),
(199, 'BRG0020', 'GYGAX-001', 'READY', '-'),
(200, 'BRG0020', 'GYGAX-002', 'READY', '-'),
(201, 'BRG0020', 'GYGAX-003', 'READY', '-'),
(202, 'BRG0020', 'GYGAX-004', 'READY', '-'),
(203, 'BRG0020', 'GYGAX-005', 'RESERVED', '-'),
(204, 'BRG0021', 'CORSRM-001', 'READY', '-'),
(205, 'BRG0021', 'CORSRM-002', 'RESERVED', '-'),
(206, 'BRG0021', 'CORSRM-003', 'READY', '-'),
(207, 'BRG0021', 'CORSRM-004', 'READY', '-'),
(208, 'BRG0021', 'CORSRM-005', 'READY', '-'),
(209, 'BRG0022', 'EVGSUP-001', 'READY', '-'),
(210, 'BRG0022', 'EVGSUP-002', 'RESERVED', '-'),
(211, 'BRG0022', 'EVGSUP-003', 'RESERVED', '-'),
(212, 'BRG0022', 'EVGSUP-004', 'READY', '-'),
(213, 'BRG0022', 'EVGSUP-005', 'READY', '-'),
(214, 'BRG0023', 'SEASNC-001', 'READY', '-'),
(215, 'BRG0023', 'SEASNC-002', 'READY', '-'),
(216, 'BRG0023', 'SEASNC-003', 'READY', '-'),
(217, 'BRG0023', 'SEASNC-004', 'READY', '-'),
(218, 'BRG0023', 'SEASNC-005', 'READY', '-'),
(219, 'BRG0024', 'HDD35I4-001', 'RESERVED', '-'),
(220, 'BRG0024', 'HDD35I4-002', 'READY', '-'),
(221, 'BRG0024', 'HDD35I4-003', 'RESERVED', '-'),
(222, 'BRG0024', 'HDD35I4-004', 'RESERVED', '-'),
(223, 'BRG0024', 'HDD35I4-005', 'RESERVED', '-'),
(224, 'BRG0024', 'HDD35I4-006', 'READY', '-'),
(225, 'BRG0024', 'HDD35I4-007', 'READY', '-'),
(226, 'BRG0025', 'SBC25I1-001', 'READY', '-'),
(227, 'BRG0025', 'SBC25I1-002', 'READY', '-'),
(228, 'BRG0025', 'SBC25I1-003', 'DEFACED', '-'),
(229, 'BRG0025', 'SBC25I1-004', 'READY', '-'),
(230, 'BRG0026', 'SFC25I2-001', 'READY', '-'),
(231, 'BRG0026', 'SFC25I2-002', 'READY', '-'),
(232, 'BRG0026', 'SFC25I2-003', 'READY', '-');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` varchar(255) NOT NULL,
  `NAMA_KATEGORI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `NAMA_KATEGORI`) VALUES
('K00001', 'CPU'),
('K00002', 'GPU'),
('K00007', 'HDD'),
('K00005', 'MOTHERBOARD'),
('K00003', 'OPTICAL DRIVE'),
('K00006', 'POWER SUPPLY'),
('K00004', 'RAM');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `ID_PENGGUNA` int(11) NOT NULL,
  `NAMA` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `USER_TYPE` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`ID_PENGGUNA`, `NAMA`, `USERNAME`, `EMAIL`, `USER_TYPE`, `PASSWORD`) VALUES
(1, 'Adnan Khairi', 'adnankhairi', 'adnankhairi@student.upi.edu', 'admin', 'C521CC3DA32F9176D0B2483D4D8CA433'),
(2, 'adnan', 'adnan', 'squadron296@gmail.com', 'user', 'f3465a353436bbab3617815f64083c84');

-- --------------------------------------------------------

--
-- Table structure for table `spesifikasi`
--

CREATE TABLE `spesifikasi` (
  `ID_SPESIFIKASI` int(11) NOT NULL,
  `XID_BARANG` varchar(255) NOT NULL,
  `RINCIAN_SPESIFIKASI` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spesifikasi`
--

INSERT INTO `spesifikasi` (`ID_SPESIFIKASI`, `XID_BARANG`, `RINCIAN_SPESIFIKASI`) VALUES
(1, 'BRG0001', 'PROCESSOR\r\nNumber of Cores Quad-Core\r\nProcessor Number i7-7700\r\nCompatible Processor Socket LGA1151 Socket\r\nClock Speed 3.6 GHz\r\nMax Turbo Speed 4.2 GHz\r\nType / Form Factor Intel Core i7 7700 (7th Gen)\r\nCache Memory Details Smart Cache - 8 MB\r\nProcessor Qty 1\r\nType Core i7\r\nNumber of Threads 8 threads\r\nGeneration 7\r\nInstalled Qty 1\r\nArchitecture Features Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Virtualization Technology, Intel 64 Technology, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel AES New Instructions (AES-NI), Thermal Monitoring Technologies, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Idle States, Intel Identity Protection Technology, Intel Secure Key, Intel Advanced Vector Extensions 2 (AVX2.0), Intel TSX-NI, Intel Stable Image Platform Program (SIPP), Intel Software Guard Extensions (SGX), Intel Memory Protection Extensions (MPX), Intel Device Protection Technology with Boot Guard\r\nCache 8 MB\r\nManufacturer Intel\r\nManufacturing Process 14 nm\r\nThermal Specification 100 ?C\r\nFeatures Enhanced SpeedStep technology, Execute Disable Bit capability, Intel Software Guard Extensions (SGX), Intel Stable Image Platform Program (SIPP), Intel TSX-NI, Intel Trusted Execution Technology, Intel Turbo Boost Technology 2.0, Intel Virtualization Technology, Intel Virtualization Technology for Directed I/O (VT-d), Intel vPro Technology, Thermal Monitoring Technologies, Idle States, Intel 64 Technology, Intel AES New Instructions (AES-NI), Intel Advanced Vector Extensions 2 (AVX2.0), Intel Device Protection Technology with Boot Guard, Intel Identity Protection Technology, Intel Memory Protection Extensions (MPX), Intel Secure Key\r\nMISCELLANEOUS\r\nProduct Type processor\r\nProcessor Package Intel Boxed\r\nHEADER\r\nBrand Intel\r\nPackaged Quantity 1\r\nCompatibility PC\r\nCACHE MEMORY DETAILS\r\nTechnology Smart Cache\r\nInstalled Size 8 MB\r\nINTEGRATED GRAPHICS\r\nType Intel HD Graphics 630\r\nBase Frequency 350 MHz\r\nMax Dynamic Frequency 1.15 GHz\r\nFeatures InTRU 3D Technology, Intel Clear Video HD Technology, Intel Clear Video Technology, Intel Quick Sync Video, Triple Display Capable\r\nGENERAL\r\nManufacturerIntel'),
(2, 'BRG0002', 'nama: GTX 1080\r\nCUDA CORES: 2560\r\ngraphics clock: 1607 MHz\r\nProcessor clock: 1733 Mhz\r\nMemory clock: 10Gbps\r\nmemory config: 8GB GDDR5X\r\nmemory interface: GDDR5\r\nBus Support: PCIe 3.0\r\nSupported Technologies: SLI, CUDA, 3D Vision, PhysX, NVIDIA G-SYNCT, GameStream, ShadowWorks, DirectX 12, Virtual Reality, Ansel, NVIDIA WhisperMode\r\nMaximum Digital Resolution: 7680x4320@60Hz\r\nStandard Display Connectors\r\nDP 1.42, HDMI 2.0b, DL-DVI\r\nMaximum GPU Temperature (in C): 94\r\nMaximum Graphics Card Power (W): 180\r\nMinimum System Power Requirement (W): 500\r\nSupplementary Power Connectors: 8-pin\r\n\r\n\r\n'),
(3, 'BRG0003', 'GENERAL\r\nDevice Type DVD?RW (?R DL) / DVD-RAM drive - external\r\nManufacturer Asus\r\nSTORAGE\r\nDrive Type DVD writer\r\nProduct Type DVD?RW (?R DL) / DVD-RAM drive\r\nEnclosure Type external\r\nInterface USB 2.0\r\nOPTICAL STORAGE\r\nType DVD?RW (?R DL) / DVD-RAM\r\nSpeeds 8x/8x/5x\r\nRead Speed 24x (CD) / 8x (DVD)\r\nWrite Speed 24x (CD) / 8x (DVD?R) / 6x (DVD?R DL)\r\nRewrite Speed 16x (CD) / 6x (DVD-RW) / 8x (DVD+RW) / 5x (DVD-RAM)\r\nSupported Recording Modes disk-at-once, incremental recording, multisession, packet writing, random access write, restricted overwrite, sequential write, session-at-once, track-at-once\r\nSupported Media Formats CD Extra, CD Text, CD-DA (audio), CD-I, CD-ROM, CD-ROM XA, DVD-Video, Photo CD, Video CD\r\nSupported Media Types CD-R, CD-ROM, DVD-RW, CD-RW, DVD+R, DVD+R DL, DVD-RAM, DVD-ROM\r\nBuffer Size 1 MB\r\nAccess Time 140 sec, 160 sec\r\nFeatures Disc Encryption, E-Green Engine technology, USB powered, horizontal/vertical mountable\r\nCompliant Standards Video CD\r\nPOWER DEVICE\r\nType none\r\nMISCELLANEOUS\r\nMicrosoft Certifications Compatible with Windows 7\r\nColor black\r\nColor Category black\r\nINTERFACE PROVIDED\r\nQty 1\r\nConnector Type 4 pin USB Type A\r\nInterface USB 2.0\r\nVIDEO\r\nVideo Output none\r\nSOFTWARE / SYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows XP, Microsoft Windows 7, Microsoft Windows Vista\r\nSYSTEM REQUIREMENTS\r\nOS Required Microsoft Windows 7, Microsoft Windows Vista, Microsoft Windows XP\r\nENVIRONMENTAL PARAMETERS\r\nMin Operating Temperature 41 ?F\r\nMax Operating Temperature 104 ?F\r\nHumidity Range Operating 15 - 80%\r\nHEADER\r\nBrand ASUS\r\nProduct Line ASUS SDRW\r\nModel 08D2S-U\r\nPackaged Quantity 1\r\nCompatibility PC\r\nEXPANSION SLOTS\r\nType none\r\nDIMENSIONS & WEIGHT\r\nWidth 5.6 in\r\nDepth 6.2 in\r\nHeight 0.8 in\r\nWeight 11.04 oz\r\nBAY REQUIRED\r\nType none\r\nSLOT REQUIRED\r\nType none\r\nSOFTWARE\r\nType CyberLink Power2Go\r\nSYSTEM REQUIREMENTS DETAILS\r\nProcessor Type Pentium 4\r\nMin RAM Size 512 MB\r\nMin Hard Drive Space 10 GB\r\nGENERAL\r\nManufacturerAsus'),
(4, 'BRG0004', 'GENERAL\r\nMemory Specification Compliance PC4-24000\r\nMemory Speed 3000 MHz\r\nData Integrity Check non-ECC\r\nUpgrade Type generic\r\nManufacturerCorsair Microsystems Inc.\r\nMEMORY\r\nLatency Timings CL15 ( 15-17-17-35 )\r\nData Integrity Check Non-ECC\r\nRAM Performance SPD - 2133 MHz - 1.2 V - CL15 - 15-15-15-36\r\nTested - 3000 MHz - 1.35 V - CL15 - 15-17-17-35\r\nRAM\r\nType DRAM\r\nForm Factor DIMM 288-pin\r\nTechnology DDR4 SDRAM\r\nStorage Capacity 16 GB\r\nRegistered or Buffered unbuffered\r\nSupply Voltage 1.35 V\r\nCAS Latency CL15\r\nLatency Timings 15-17-17-35\r\nRAM Features 8 Layers PCB heatspreader, Intel Extreme Memory Profiles (XMP 2.0), Vengeance LPX low profile heatspreader, anodized aluminum heatspreader, dual channel\r\nHEADER\r\nBrand Corsair\r\nProduct Line Corsair Vengeance\r\nModel LPX\r\nPackaged Quantity 1\r\nCompatibility PC\r\nRAM PERFORMANCE\r\nProfile SPD, Tested\r\nSpeed 2133 MHz, 3000 MHz\r\nVoltage 1.2 V, 1.35 V\r\nCAS Latency CL15, CL15\r\nLatency Timing 15-15-15-36, 15-17-17-35\r\nMEMORY MODULE\r\nModules in Kit 2\r\nCapacity of Module in Kit 8 GB\r\nSERVICE & SUPPORT\r\nType limited lifetime warranty\r\nGENERAL\r\nManufacturerCorsair Microsystems Inc.'),
(5, 'BRG0005', '6 x USB 2.0\r\n(2 mid-board, 4 rear)\r\nDVI\r\nHDMI\r\n6 x USB 3.0\r\n(4 mid-board, 2 rear)\r\nIntel? I219-V Gigabit LAN \r\nGameFirst Technology\r\nLANGuard\r\nSupremeFX 8-Channel Audio\r\nOptical S/PDIF out\r\n1x PCIe 3.0 x 16 (support x16) \r\n1x PCIe 3.0 x 16 (support x4)\r\n4 x PCIe 3.0 x 1\r\nSupremeFX S1220A Codec \r\n? Impedance sense\r\n? High quality output and input\r\n? SupremeFX shielding\r\n? Dual headphone amplifiers\r\nDDR4 2400/2133MHz \r\n4 x DIMM, dual-channel \r\nSupport XMP\r\nIntel? Socket 1151\r\nM.2 Socket 3 Type M (2242-2280)\r\nSupports SATA and PCIe 3.0 x 4 modes\r\n6 x SATA 6Gb/s\r\nM.2 Socket 3 Type M (2242-22110) \r\nSupports PCIe 3.0 x 4 mode \r\nCLRTC Header'),
(6, 'BRG0006', 'Product NameMWE 450\r\nProduct NumberMPW-4502-ACABW\r\nTypeIntel Form Factor ATX 12V V2.31\r\nPFCActive PFC (>0.9 typical)\r\nInput Voltage200-240 Vac\r\nInput Current3.5A\r\nInput Frequency47-63Hz\r\nDimensions (LxBxH)140 x 150 x 86mm\r\nFan Size120mm\r\nFan BearingHDB\r\nFan Speed725-1460 RPM\r\nPower Good Signal100-500ms\r\nHold Up Time>14ms\r\nEfficiency85% @ Typically Load\r\nErP 2013 Lot 6Yes\r\nMTBF>100,000 Hours\r\nOperating Temperature40?C\r\nProtectionsOVP / OPP / OTP / SCP\r\nRegulatoryCE, TUV, EAC, RCM, CCC\r\nConnectorsMB 20+4 Pin1\r\nCPU 12V 4+4 Pin1\r\nSATA6\r\n4 Pin Peripheral3\r\nFDD Cable 4 Pin1\r\nPCI-e 6+2 Pin2\r\nWarranty3 Years ?\r\nCable typeEANUPC\r\nAR, AU, BR, EU, PH4719512060858884102033452\r\nUK4719512060193'),
(7, 'BRG0007', 'GENERAL\r\nCapacity 2 TB\r\nInterface SATA 6Gb/s\r\nBytes per Sector 4096\r\nWeight 3.39 oz\r\nManufacturerSeagate Technology\r\nINTERFACE PROVIDED\r\nStorage Interface Serial ATA-600\r\nPERFORMANCE\r\nInternal Data Rate 140 MBps\r\nDrive Transfer Rate 600 MBps (external)\r\nEXPANSION & CONNECTIVITY\r\nInterfaces SATA 6 Gb/s\r\nHARD DRIVE\r\nForm Factor 2.5\"\r\nFeatures Adaptive Memory technology, Halogen Free, QuietStep\r\nHard Drive Type internal hard drive\r\nForm Factor (Short) 2.5\"\r\nForm Factor (metric) 6.4 cm\r\nForm Factor (Short) (metric) 6.4 cm\r\nStorage Interface Serial ATA-600\r\nInterface Serial ATA-600\r\nData Transfer Rate 600 MBps\r\nInternal Data Rate 140 MBps\r\nBytes per Sector 4096 Hz\r\nNon-Recoverable Errors 1 per 10^14\r\nLoad / Unload Cycles 600,000\r\nENVIRONMENTAL PARAMETERS\r\nMin Storage Temperature -40 ?F\r\nMax Storage Temperature 158 ?F\r\nMin Operating Temperature 32 ?F\r\nMax Operating Temperature 140 ?F\r\nHEADER\r\nBrand Seagate\r\nProduct Line Seagate FireCuda\r\nModel ST2000LX001\r\nPackaged Quantity 1\r\nCompatibility PC\r\nDIMENSIONS & WEIGHT\r\nWidth 2.7 in\r\nDepth 4 in\r\nHeight 0.3 in\r\nWeight 3.39 oz\r\nPOWER CONSUMPTION\r\nMode idle, read, write\r\nValue 0.5 Watt, 1.7 Watt, 1.8 Watt\r\nSERVICE & SUPPORT\r\nType 5 years warranty\r\nSERVICE & SUPPORT DETAILS\r\nType limited warranty\r\nFull Contract Period 5 years\r\nSHOCK & VIBRATION TOLERANCE\r\nShock Acceleration (Operating) 400 g\r\nShock Duration (Operating) 2 ms\r\nShock Acceleration (Non-operating) 1000 g\r\nShock Duration (Non-operating) 1 ms\r\nRELIABILITY\r\nNon-Recoverable Errors 1 per 10^14\r\nGENERAL\r\nManufacturerSeagate Technology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID_BARANG`) USING BTREE,
  ADD KEY `FK_ID_KATEGORI` (`XID_KATEGORI`) USING BTREE,
  ADD KEY `FK_XID_PENGGUNA` (`XID_PENGGUNA`);

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`ID_DETAIL_BARANG`) USING BTREE,
  ADD KEY `FK_MENDAPATKAN_DETAIL_BARANG` (`ID_BARANG`) USING BTREE;

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`) USING BTREE,
  ADD KEY `NAMA_KATEGORI` (`NAMA_KATEGORI`) USING BTREE,
  ADD KEY `ID_KATEGORI` (`ID_KATEGORI`,`NAMA_KATEGORI`) USING BTREE;

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`ID_PENGGUNA`);

--
-- Indexes for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
  ADD PRIMARY KEY (`ID_SPESIFIKASI`) USING BTREE,
  ADD KEY `FK_MENENTUKAN_SPESIFIKASI` (`XID_BARANG`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_barang`
--
ALTER TABLE `detail_barang`
  MODIFY `ID_DETAIL_BARANG` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
  MODIFY `ID_SPESIFIKASI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `FK_ID_KATEGORI` FOREIGN KEY (`XID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`),
  ADD CONSTRAINT `FK_XID_PENGGUNA` FOREIGN KEY (`XID_PENGGUNA`) REFERENCES `pengguna` (`ID_PENGGUNA`);

--
-- Constraints for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD CONSTRAINT `FK_MENDAPATKAN_DETAIL_BARANG` FOREIGN KEY (`ID_BARANG`) REFERENCES `barang` (`ID_BARANG`);

--
-- Constraints for table `spesifikasi`
--
ALTER TABLE `spesifikasi`
  ADD CONSTRAINT `FK_MENENTUKAN_SPESIFIKASI` FOREIGN KEY (`XID_BARANG`) REFERENCES `barang` (`ID_BARANG`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
