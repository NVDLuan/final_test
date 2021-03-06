-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2021 lúc 06:28 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baitaplon`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accout`
--

CREATE TABLE `accout` (
  `User` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accout`
--

INSERT INTO `accout` (`User`, `Pass`, `Phone`) VALUES
('Dluan', '123', '0909999489'),
('duyluan', '123123', '0375091675'),
('duyluan01', '123', '0375091675'),
('duytan', '123', '080809899'),
('luan0101', '123', '08080808'),
('luan123', '123', '0375091675'),
('luann', '123', '0909099999'),
('thuyettrinh', '123', '0375091675'),
('user1', '123', ''),
('UserADmin', '11223344', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `IdDH` varchar(50) NOT NULL,
  `IdKhach` varchar(50) NOT NULL,
  `Tenkh` varchar(50) NOT NULL,
  `IdDongHo` varchar(25) NOT NULL,
  `SoLuong` int(2) NOT NULL,
  `Phone` int(10) NOT NULL,
  `DiaChiGiao` varchar(200) NOT NULL,
  `tongtien` int(10) NOT NULL,
  `TinhTrang` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`IdDH`, `IdKhach`, `Tenkh`, `IdDongHo`, `SoLuong`, `Phone`, `DiaChiGiao`, `tongtien`, `TinhTrang`) VALUES
('61a4dd69571ee7.93507185', 'luann', 'duyluan', 'CA-G-SHOCK GM-110RH-1A', 1, 80809809, 'bình dương', 12535000, 2),
('61a4dd69587583.47377657', 'luann', 'duyluan', 'OG_358-18.652 AG42SR-GL', 1, 80809809, 'bình dương', 5750000, 2),
('61a4dd6958cbd5.58680045', 'luann', 'duyluan', 'OR-Orient RA-AR0003L10B', 1, 80809809, 'bình dương', 8099000, 2),
('61a4dd69597875.18727338', 'luann', 'duyluan', 'OG_358-18.652 AG42SR', 1, 80809809, 'bình dương', 6050000, 2),
('61a4dd6959e868.44582576', 'luann', 'duyluan', 'OGIVAL 3811D OG-000022 OG', 1, 80809809, 'bình dương', 35000000, 2),
('61a4dd695a5ac4.82655129', 'luann', 'duyluan', 'AC_8B78A-LDTGCR ĐM VH', 1, 80809809, 'bình dương', 3200000, 2),
('61a4dd695aaee0.81385745', 'luann', 'duyluan', 'AC_8A169A-MDGPCR', 1, 80809809, 'bình dương', 5000000, 2),
('61a4dd695b0d30.89040338', 'luann', 'duyluan', 'CA-BA-120TG-4AJF-00', 1, 80809809, 'bình dương', 3429000, 2),
('61a4df43759a70.91982743', 'luann', 'Nguyễn Vũ Duy Luân', 'BL1831-15MTWI-R', 1, 978767080, 'bình dương', 8700000, 2),
('61a4e12c67f8b1.26155904', 'luann', 'duyluan', 'casio-mtp-1314sg-1avdf-lt', 1, 9809687, 'bình dương', 3404000, 0),
('61a5c88417b582.82981406', 'thuyettrinh', 'luan', ' OR-ORIENT RA-KB0003S10B', 1, 375091675, 'thang binh quang nam', 6700000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongho`
--

CREATE TABLE `dongho` (
  `ID` varchar(25) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Hang` varchar(50) NOT NULL,
  `GioiTinh` tinyint(4) NOT NULL,
  `May` tinyint(4) NOT NULL,
  `Chat_Lieu_Day` tinyint(4) NOT NULL,
  `SoLuongCon` int(5) NOT NULL,
  `Gia` bigint(20) NOT NULL,
  `ThongTinThem` varchar(250) NOT NULL,
  `File_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dongho`
--

INSERT INTO `dongho` (`ID`, `Name`, `Hang`, `GioiTinh`, `May`, `Chat_Lieu_Day`, `SoLuongCon`, `Gia`, `ThongTinThem`, `File_img`) VALUES
(' OR-ORIENT RA-KB0003S10B', ' ORIENT RA-KB0003S10B', 'Patek Philippe', 0, 0, 0, 33, 6700000, '', ' OR-ORIENT RA-KB0003S10B.618ca6b249ea78.56517977.png'),
('A25', 'Chim Công Vàng A25', 'None', 3, 0, 1, 8, 659000, '', 'A25.618cc75d3f4aa9.22162909.png'),
('A30', 'A30', 'None', 3, 0, 1, 6, 1200000, '', 'A30.618cc8d1364ef0.90732310.png'),
('A999', 'Đôi Công', 'SEIKO', 0, 0, 0, 8, 1259000, '', 'A999.618cc8ab71cee6.75181303.png'),
('AC_8A156B-MDGPCR', '8A156B-MDGPCR', 'ALEXANDRE CHRISTIE', 0, 1, 1, 57, 4500000, '', 'AC_8A156B-MDGPCR.618c7ea0536201.31967640.png'),
('AC_8A169A-MDGPCR ', '8A169A-MDGPCR ', 'ALEXANDRE CHRISTIE', 1, 1, 1, 85, 5000000, '', 'AC_8A169A-MDGPCR .618c7ab5c0a285.01863154.png'),
('AC_8A169A-MDTGGO', '8A169A-MDTGGO', 'ALEXANDRE CHRISTIE', 1, 1, 1, 67, 8900000, '', 'AC_8A169A-MDTGGO.618c7b9ada4537.92458135.png'),
('AC_8A185A-MTGCR', '8A185A-MTGCR', 'ALEXANDRE CHRISTIE', 1, 1, 1, 90, 9100000, '', 'AC_8A185A-MTGCR.618c7bd50367e1.80069390.png'),
('AC_8A188A-MDTGCR', '8A188A-MDTGCR', 'ALEXANDRE CHRISTIE', 1, 1, 1, 56, 4700000, '', 'AC_8A188A-MDTGCR.618c7c0aa5b851.71242229.png'),
('AC_8A199A-MDTGBK-1', '8A199A-MDTGBK-1', 'ALEXANDRE CHRISTIE', 1, 1, 1, 43, 5100000, '', 'AC_8A199A-MDTGBK-1.618c7c498c6ea2.72999184.png'),
('AC_8A199B-MDGPCR-1', '8A199B-MDGPCR-1', 'ALEXANDRE CHRISTIE', 1, 1, 1, 45, 5800000, '', 'AC_8A199B-MDGPCR-1.618c7c889ba388.25165103.png'),
('AC_8A53DL', '8A53DL', 'ALEXANDRE CHRISTIE', 0, 1, 1, 30, 3000000, '', 'AC_8A53DL.618c7d18185801.14320941.png'),
('AC_8B50A-MSSBK', '8B50A-MSSBK', 'ALEXANDRE CHRISTIE', 0, 1, 1, 153, 3000000, '', 'AC_8B50A-MSSBK.618c7eddb2b528.86784408.png'),
('AC_8B53A-LDTGBK', '8B53A-LDTGBK', 'ALEXANDRE CHRISTIE', 0, 1, 1, 143, 4000000, '', 'AC_8B53A-LDTGBK.618c7f3d2af133.15799875.png'),
('AC_8B53A-MDTGCR - 8B53A-L', '8B53A-MDTGCR - 8B53A-LDTGBK', 'Patek Philippe', 1, 1, 1, 70, 9000000, '', 'AC_8B53A-MDTGCR - 8B53A-LDTGBK.618c7cdc4eca52.96529156.png'),
('AC_8B73L', '8B73L', 'ALEXANDRE CHRISTIE', 0, 1, 1, 120, 3200000, '', 'AC_8B73L.618c7f83b6ed07.69721001.png'),
('AC_8B75A-LDSSCR DT ', '8B75A-LDSSCR DT ', 'ALEXANDRE CHRISTIE', 0, 1, 1, 23, 3100000, '', 'AC_8B75A-LDSSCR DT .618c7fc239e146.81444189.png'),
('AC_8B78A-LDTGCR ĐM VH ', '8B78A-LDTGCR ĐM VH ', 'ALEXANDRE CHRISTIE', 0, 1, 1, 24, 3200000, '', 'AC_8B78A-LDTGCR ĐM VH .618c7ff41866a4.27265834.png'),
('AC_AC 8B59M DS', 'AC 8B59M DS', 'ALEXANDRE CHRISTIE', 1, 1, 1, 67, 3000000, '', 'AC_AC 8B59M DS.618c8021ac6a48.91828805.png'),
('B68', 'Thuận Buồm Xuôi Gió ', 'None', 3, 0, 1, 12, 2680000, '', 'B68.618cc973381692.65200151.png'),
('BD66', 'Bản Đồ Thế Giới BD66', 'None', 3, 0, 1, 5, 999000, '', 'BD66.618cc6fb8e3894.88654195.png'),
('BL1684-10473', 'BENTLEY BL1684-10473', 'BENTLEY', 1, 1, 2, 68, 5600000, '', 'BL1684-10473.618c80eb571c26.19833364.png'),
('BL1690-15473', 'BENTLEY BL1690-15473', 'BENTLEY', 1, 1, 0, 40, 8200000, '', 'BL1690-15473.618c81350a80e4.60555690.png'),
('BL1709-10LTRI-S', 'BENTLEY BL1709-10LTRI-S', 'BENTLEY', 0, 1, 1, 234, 5200000, '', 'BL1709-10LTRI-S.618c82f72620f0.62070374.png'),
('BL1828-101LRBB', 'BENTLEY BL1828-101LRBB', 'BENTLEY', 0, 1, 2, 120, 8000000, '', 'BL1828-101LRBB.618c8329eb4637.70129243.png'),
('BL1831-15MKWI', 'BENLTEY BL1831-15MKWI', 'BENTLEY', 1, 1, 1, 78, 9100000, '', 'BL1831-15MKWI.618c8161d31d77.74110413.png'),
('BL1831-15MTBI', 'BENTLEY BL1831-15MTBI', 'BENTLEY', 1, 1, 1, 69, 9100000, '', 'BL1831-15MTBI.618c81981a51c9.51010175.png'),
('BL1831-15MTNN', 'BENTLEY BL1831-15MTNN', 'BENTLEY', 1, 1, 0, 58, 8500000, '', 'BL1831-15MTNN.618c81ce2660c8.95788070.png'),
('BL1831-15MTWI-R', 'BENTLEY BL1831-15MTWI-R', 'BENTLEY', 1, 1, 1, 89, 8700000, '', 'BL1831-15MTWI-R.618c82002585a3.78964187.png'),
('BL1831-15MWDI', 'BENTLEY BL1831-15MWDI', 'BENTLEY', 1, 1, 1, 93, 8900000, '', 'BL1831-15MWDI.618c8274846254.24628821.png'),
('BL1850-15MKBB', 'BENTLEY BL1850-15MKBB', 'BENTLEY', 1, 1, 1, 435, 8200000, '', 'BL1850-15MKBB.618c82a7860d11.41009722.png'),
('BL1859-102LRKI', 'BENTLEY BL1859-102LRKI', 'BENTLEY', 0, 1, 1, 131, 3000000, '', 'BL1859-102LRKI.618c8357beecc2.97104392.png'),
('BL1868-201LTWI-K', 'BENTLEY BL1868-201LTWI-K', 'BENTLEY', 0, 1, 1, 94, 4050000, '', 'BL1868-201LTWI-K.618c8387a8ec92.78899801.png'),
('BL1868-201LWWI', 'BENTLEY BL1868-201LWWI', 'BENTLEY', 0, 1, 1, 152, 4600000, '', 'BL1868-201LWWI.618c83be37e682.69509043.png'),
('CA-BA-110-1ADR', 'CASIO-BA-110-1ADR', 'Casio', 0, 0, 3, 56, 2799000, '', 'CA-BA-110-1ADR.61864a36ef67a3.76801558.jpg'),
('CA-BA-120TG-4AJF-00', 'CASIO-BA-120TG-4AJF-00', 'Casio', 0, 0, 3, 44, 3429000, '', 'CA-BA-120TG-4AJF-00.61864afaa71717.95137368.jpg'),
('CA-G-BLX-560VH-4DF', 'CASIO Baby G BLX-560VH-4DF', 'Casio', 0, 0, 2, 77, 1999000, '', 'CA-G-BLX-560VH-4DF.61864bc4434fd5.87296871.jpg'),
('CA-G-MSG-S500G-1A', 'CASIO G MSG-S500G-1A', 'Casio', 0, 0, 3, 33, 5099000, '', 'CA-G-MSG-S500G-1A.61864c3447e409.82514598.jpg'),
('CA-G-SHOCK GM-110RH-1A', 'CASIO-G-SHOCK GM-110RH-1A', 'Casio', 1, 0, 2, 77, 12535000, '', 'CA-G-SHOCK GM-110RH-1A.618648f3805b15.76282424.png'),
('CA-G-SHOCK GMW-B5000PB-6', 'CASIO-G-SHOCK GMW-B5000PB-6', 'Casio', 1, 0, 1, 67, 16936000, '', 'CA-G-SHOCK GMW-B5000PB-6.618649d05afed1.12880171.png'),
('CA-GA-900TS-4A', 'CASIO-GA-900TS-4A', 'Casio', 1, 0, 3, 50, 4008000, '', 'CA-GA-900TS-4A.61864559928907.80933862.png'),
('CA-GA-900TS-6A', 'CASIO-GA-900TS-6A', 'Casio', 1, 0, 3, 90, 4008000, '', 'CA-GA-900TS-6A.618645a4e9a689.75955188.png'),
('CA-GM-2100B-1A', 'GM-2100B-1A', 'Casio', 1, 0, 3, 80, 5822000, '', 'CA-GM-2100B-1A.618645f6cac0a1.57525560.png'),
('CA-GM-2100B-2A', 'CASIO-GM-2100B-2A', 'Casio', 1, 0, 3, 55, 5822000, '', 'CA-GM-2100B-2A.618646c3b07c13.17230045.png'),
('CA-GM-2100B-3A', 'CASIO-GM-2100B-3A', 'Casio', 1, 0, 3, 58, 5822000, '', 'CA-GM-2100B-3A.6186470fd4fac5.41146328.png'),
('CA-GM-2100B-4A', 'CASIO-GM-2100B-4A', 'Casio', 1, 0, 3, 55, 5822000, '', 'CA-GM-2100B-4A.6186478f72ccc7.33752358.png'),
('CA-LTP-1410D-4AVDF', 'CASIO-LTP-1410D-4AVDF', 'Casio', 0, 0, 1, 77, 1369000, '', 'CA-LTP-1410D-4AVDF.61864cbce5dfa0.51710216.jpg'),
('CA-LTP-E151D-1B', 'CASIO LTP-E151D-1B', 'Casio', 0, 0, 1, 66, 1399000, '', 'CA-LTP-E151D-1B.61864f4b58d5b9.67515991.jpg'),
('CA-MSG-S500G-2ADR-00', 'CASIO MSG-S500G-2ADR-00', 'Casio', 0, 0, 3, 55, 5099000, '', 'CA-MSG-S500G-2ADR-00.61865371ba3089.80804693.jpg'),
('CA-SHE-3809PG-9AUDR-0000', 'SHE-3809PG-9AUDR-0000', 'Casio', 1, 0, 1, 55, 4399000, '', 'CA-SHE-3809PG-9AUDR-0000.618654b5dd2651.83920897.jpg'),
('Casio MTP-V300D-1AUDF-LTP', 'Casio MTP-V300D-1AUDF-LTP-V300D-1AUDF', 'Casio', 2, 0, 1, 44, 3036000, '', 'Casio MTP-V300D-1AUDF-LTP-V300D-1AUDF.6198c6954d8cc1.59358141.jpg'),
('casio-mtp-1314sg-1avdf-lt', 'casio-mtp-1314sg-1avdf-ltp-1314sg-', 'Casio', 2, 0, 1, 66, 3404000, '', 'casio-mtp-1314sg-1avdf-ltp-1314sg-.6198c6ccc7f1b8.19790144.jpg'),
('Citizen AU1062-05E', 'Citizen AU1062-05E', 'Citizen', 1, 0, 1, 54, 3021000, '', 'Citizen AU1062-05E.618cab8453f147.65200719.png'),
('Citizen AU1062-56E', 'Citizen AU1062-56E', 'Citizen', 1, 0, 1, 73, 3534000, '', 'Citizen AU1062-56E.618cabd5dfd944.64456525.png'),
('Citizen C7 NH8394-70H', 'Citizen C7 NH8394-70H', 'Citizen', 1, 0, 1, 30, 4863000, '', 'Citizen C7 NH8394-70H.618cac29c82ab3.33895585.png'),
('CITIZEN EL3040-55L', 'CITIZEN EL3040-55L', 'Citizen', 0, 0, 1, 34, 3800000, '', 'CITIZEN EL3040-55L.618cb08b477246.25333603.png'),
('Citizen EL3048-53E', 'EL3048-53E', 'Citizen', 0, 0, 1, 62, 4400000, '', 'Citizen EL3048-53E.618cb0dd74b319.14041558.png'),
('CITIZEN ER0201-72A', 'ER0201-72A', 'Citizen', 0, 0, 1, 5, 3600000, '', 'CITIZEN ER0201-72A.618cb1343c0407.82483380.png'),
('CITIZEN EW2310-59A', 'EW2310-59A', 'Citizen', 0, 0, 1, 53, 9450000, '', 'CITIZEN EW2310-59A.618cb187378ca7.01734206.png'),
('CITIZEN EW2483-85B', 'EW2483-85B', 'Citizen', 0, 0, 1, 23, 6670000, '', 'CITIZEN EW2483-85B.618cb1da733e36.43047262.png'),
('CITIZEN ew3081-59d-ava', 'ew3081-59d-ava', 'Citizen', 0, 1, 1, 34, 6300000, '', 'CITIZEN ew3081-59d-ava.618cb22ed6b2d1.91628432.png'),
('CITIZEN EX1420-84E', 'EX1420-84E', 'Citizen', 0, 1, 1, 87, 6700000, '', 'CITIZEN EX1420-84E.618cb277c893c1.97358502.png'),
('Citizen NH8350-59L', 'Citizen NH8350-59L', 'Citizen', 1, 0, 1, 38, 3312000, '', 'Citizen NH8350-59L.618cac89e490e1.99726228.png'),
('Citizen NH8352-53P', 'Citizen NH8352-53P', 'Citizen', 1, 0, 1, 43, 4420000, '', 'Citizen NH8352-53P.618cad2b97f745.88475051.png'),
('Citizen NH8390-71L', 'Citizen NH8390-71L', 'Citizen', 1, 0, 1, 92, 5400000, '', 'Citizen NH8390-71L.618caeb04a2ac8.96637970.png'),
('Citizen NH8393-05A', 'Citizen NH8393-05A', 'Citizen', 1, 0, 0, 34, 4500000, '', 'Citizen NH8393-05A.618caf2ad364b7.30573149.png'),
('Citizen NJ0129-87X', 'Citizen NJ0129-87X', 'Citizen', 1, 0, 1, 77, 4740000, '', 'Citizen NJ0129-87X.618cae5d0483f3.03732787.png'),
('Citizen_avatar-fe1081-59', 'avatar-fe1081-59', 'Citizen', 0, 0, 1, 43, 5880000, '', 'Citizen_avatar-fe1081-59.618cafd0931832.20024193.png'),
('DC111', 'DC111', 'None', 3, 0, 1, 12, 650000, '', 'DC111.618cc9abd9a4b7.21038427.png'),
('DC220', 'DC22', 'None', 3, 0, 1, 5, 2500000, '', 'DC220.618cc7f10ddb32.64963805.png'),
('DC555', 'DC555', 'None', 3, 0, 1, 5, 1700000, '', 'DC555.618cc791b5dec7.12228209.png'),
('DC622', 'DC622', 'None', 3, 0, 1, 12, 2600000, '', 'DC622.618cc92c7b3957.63505726.png'),
('DH11', 'DH11', 'None', 3, 0, 1, 7, 1250000, '', 'DH11.618cc840a29fd5.74314009.png'),
('DL118', 'DL118', 'None', 3, 0, 1, 5, 2600000, '', 'DL118.618cc86df2a6f1.21032312.png'),
('dong-ho-doi-alexandre-chr', 'dong-ho-doi-alexandre-christie-ac8c19lk_gl-trang-a', 'Citizen', 2, 0, 1, 55, 4590000, '', 'dong-ho-doi-alexandre-christie-ac8c19lk_gl-trang-ac8c19mk.6198c6ffd99a23.20287985.jpg'),
('OGIVAL 3811D OG-000022 OG', 'ĐỒNG HỒ ĐÔI OGIVAL 3811D OG-000022 OG-000046', 'Ogival', 2, 0, 1, 39, 35000000, '', 'OGIVAL 3811D OG-000022 OG-000046.618c85c3043993.51216847.png'),
('OGIVAL OG3872 OG-000024 O', 'ĐỒNG HỒ ĐÔI OGIVAL OG3872 OG-000024 OG-000025', 'Ogival', 2, 0, 1, 40, 40000000, '', 'OGIVAL OG3872 OG-000024 OG-000025.618c85f875c572.90913677.png'),
('OG_305L OG-000014', '305L OG-000014', 'Ogival', 0, 1, 1, 63, 14500000, '', 'OG_305L OG-000014.618c86698cb228.91159092.png'),
('OG_3356A OG-000070', '3356A OG-000070', 'Ogival', 1, 1, 1, 30, 29000000, '', 'OG_3356A OG-000070.618c856857b6d6.58699494.png'),
('OG_3363A', '3363A', 'Ogival', 0, 1, 1, 73, 3600000, '', 'OG_3363A.618c86c2e893b7.30510585.png'),
('OG_358-18.652 AG42SR', '358-18.652 AG42SR', 'Ogival', 1, 1, 1, 74, 6050000, '', 'OG_358-18.652 AG42SR.618c8461262337.27781511.png'),
('OG_358-18.652 AG42SR-GL', '358-18.652 AG42SR-GL', 'Ogival', 1, 1, 1, 97, 5750000, '', 'OG_358-18.652 AG42SR-GL.618c84a1d191c4.25286049.png'),
('OG_380L OG-000033', '380L OG-000033', 'Ogival', 0, 1, 1, 85, 13500000, '', 'OG_380L OG-000033.618c868ebd3f77.13538120.png'),
('OG_3811DL OG-000022', '3811DL OG-000022', 'Ogival', 0, 1, 1, 72, 27500000, '', 'OG_3811DL OG-000022.618c86f9780636.54818108.png'),
('OG_3832L OG-000004 3832-1', '3832L OG-000004 3832-1LK', 'Ogival', 0, 1, 1, 71, 16000000, '', 'OG_3832L OG-000004 3832-1LK.618c8726412465.49396067.png'),
('OG_3832L OG-000005', '3832L OG-000005', 'Ogival', 0, 1, 1, 61, 15500000, '', 'OG_3832L OG-000005.618c875edd5ed8.23425300.png'),
('OG_3872L OG-000019', '3872L OG-000019', 'Ogival', 0, 1, 1, 65, 24000000, '', 'OG_3872L OG-000019.618c878ba04b77.01189702.png'),
('OG_388A OG-000066', '388A OG-000066', 'Ogival', 1, 1, 1, 124, 24000000, '', 'OG_388A OG-000066.618c84d5c07537.52574192.png'),
('OG_829A OG-000071', '829A OG-000071', 'Ogival', 1, 1, 1, 61, 37000000, '', 'OG_829A OG-000071.618c8532bd1171.37058740.png'),
('OG_OG 380-05DLR', 'OG 380-05DLR', 'Ogival', 0, 0, 1, 84, 13200000, '', 'OG_OG 380-05DLR.618c87bc891821.70789479.png'),
('OR-Orient RA-AC0E05N10B', 'Orient RA-AC0E05N10B', 'Orient', 1, 0, 1, 66, 4563000, '', 'OR-Orient RA-AC0E05N10B;.618694d07bb4e4.64866060.png'),
('OR-Orient RA-AC0E07S10B', 'Orient RA-AC0E07S10B', 'Orient', 1, 0, 1, 66, 4563000, '', 'OR-Orient RA-AC0E07S10B.618695561fceb9.07828287.png'),
('OR-Orient RA-AG0002S10B', 'Orient RA-AG0002S10B', 'Orient', 1, 0, 0, 55, 6741000, '', 'OR-Orient RA-AG0002S10B.61869a170fc4b9.93107055.png'),
('OR-Orient RA-AG0003S10B', 'Orient RA-AG0003S10B', 'Orient', 1, 0, 0, 77, 5463000, '', 'OR-Orient RA-AG0003S10B.61869cacb46fe8.30636268.png'),
('OR-Orient RA-AR0003L10B', 'Orient RA-AR0003L10B;', 'Orient', 1, 0, 1, 77, 8099000, '', 'OR-Orient RA-AR0003L10B.61891ca5115ba7.88245727.png'),
('OR-Orient-RA-AG0005L10B', 'Orient RA-AG0005L10B', 'Orient', 1, 0, 0, 45, 6741000, '', 'OR-Orient-RA-AG0005L10B.618722506e52b3.40604017.png'),
('OR_ORIENT FDB0A003W0', 'ORIENT FDB0A003W0', 'Orient', 0, 1, 0, 45, 5630000, '', 'OR_ORIENT FDB0A003W0.618ca7f5a42c54.29728826.png'),
('OR_ORIENT FUB9C004W0', 'ORIENT FUB9C004W0', 'Orient', 0, 0, 1, 86, 2350000, '', 'OR_ORIENT FUB9C004W0.618ca9302acfc3.68476597.png'),
('OR_ORIENT FUNG7002W0', 'ORIENT FUNG7002W0', 'Orient', 0, 0, 1, 49, 4360000, '', 'OR_ORIENT FUNG7002W0.618ca9a2a7b2f8.26839105.png'),
('OR_ORIENT RA-KB0004A10B', 'ORIENT RA-KB0004A10B', 'Orient', 0, 0, 0, 34, 6700000, '', 'OR_ORIENT RA-KB0004A10B.618caa05c36956.59356996.png'),
('OR_ORIENT SE RA-AG0726S00', 'ORIENT SE RA-AG0726S00B', 'Orient', 1, 1, 0, 20, 10800000, '', 'OR_ORIENT SE RA-AG0726S00B.618caa6b401286.01406145.png'),
('OR_ORIENT SET0W001W0', 'ORIENT SET0W001W0', 'Orient', 0, 1, 0, 67, 7390000, '', 'OR_ORIENT SET0W001W0.618caac9aa4b27.85672062.png'),
('OR_Orient-FAG02005W0', 'Orient FAG02005W0', 'Orient', 1, 0, 0, 76, 5229000, '', 'OR_Orient-FAG02005W0.618692a84a35e5.94573107.png'),
('OR_Orient-FQC16002W0', ' ORIENT FQC16002W0', 'Orient', 0, 0, 1, 123, 5170000, '', 'OR_Orient-FQC16002W0.618ca8b68d07f5.27099215.png'),
('ZAluan', 'ZA', 'Fossil', 0, 1, 0, 233, 34732400, '', 'ZAluan.61a5c9caede157.70330923.jpg'),
('ĐỒNG HỒ ĐÔI OGIVAL OG3872', 'OGIVAL OG3872 OG-000028 OG-000029', 'Ogival', 2, 0, 1, 41, 40000000, '', 'ĐỒNG HỒ ĐÔI OGIVAL OG3872 OG-000028 OG-000029.618c8628a0a447.51324356.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang`
--

CREATE TABLE `hang` (
  `IdHang` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `QG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang`
--

INSERT INTO `hang` (`IdHang`, `Name`, `QG`) VALUES
('	\r\nALEXANDRE CHRISTIE', '	\r\nALEXANDRE CHRISTIE', ''),
('BENTLEY', 'BENTLEY', ''),
('Casio', 'Casio', ''),
('Citizen', 'Citizen', ''),
('Fossil', 'Fossil', ''),
('None', 'None', ''),
('Ogival', 'Ogival', ''),
('Orient', 'Orient', ''),
('Patek Philippe', 'Patek Philippe', ''),
('SEIKO', 'SEIKO', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accout`
--
ALTER TABLE `accout`
  ADD PRIMARY KEY (`User`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`IdDH`(25)),
  ADD KEY `gk_dh_ddh` (`IdDongHo`),
  ADD KEY `gk_ac_ddh` (`IdKhach`);

--
-- Chỉ mục cho bảng `dongho`
--
ALTER TABLE `dongho`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hang`
--
ALTER TABLE `hang`
  ADD PRIMARY KEY (`IdHang`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `gk_ac_ddh` FOREIGN KEY (`IdKhach`) REFERENCES `accout` (`User`),
  ADD CONSTRAINT `gk_dh_ddh` FOREIGN KEY (`IdDongHo`) REFERENCES `dongho` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
