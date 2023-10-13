-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2023 lúc 12:54 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rasa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dacdiem`
--

CREATE TABLE `dacdiem` (
  `sPK_Ma_DD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen_DD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dChinhsuacuoi` datetime NOT NULL,
  `sNguoisuacuoi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dacdiem`
--

INSERT INTO `dacdiem` (`sPK_Ma_DD`, `sTen_DD`, `dChinhsuacuoi`, `sNguoisuacuoi`) VALUES
('author', 'Tác giả', '2022-08-04 13:03:43', 'admin'),
('brand', 'Thương hiệu', '2022-08-02 13:33:01', 'admin'),
('color', 'Màu sắc', '2022-08-02 13:07:13', 'admin'),
('length', 'Chiều dài', '2022-08-02 13:07:43', 'admin'),
('material', 'Chất liệu', '2022-08-02 13:14:52', 'admin'),
('numpage', 'Số trang', '2022-08-02 14:21:33', 'admin'),
('origin', 'Xuất Xứ', '2022-08-02 13:15:03', 'admin'),
('publishing', 'Nhà xuất bản', '2022-08-02 17:19:50', 'admin'),
('size', 'Kích thước', '2022-08-02 14:22:27', 'admin'),
('weight', 'Trọng lượng', '2022-08-02 13:33:19', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `sPK_Ma_DMSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen_DMSP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`sPK_Ma_DMSP`, `sTen_DMSP`) VALUES
('but', 'Bút'),
('capsach', 'Cặp sách'),
('dungcuhoctap', 'Dụng cụ học tập'),
('hopbut', 'Hộp bút'),
('sach', 'Sách'),
('vo', 'Vở');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_dacdiem`
--

CREATE TABLE `danhmuc_dacdiem` (
  `sPK_Ma_DM_DD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_DMSP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sFK_Ma_DD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_dacdiem`
--

INSERT INTO `danhmuc_dacdiem` (`sPK_Ma_DM_DD`, `sFK_Ma_DMSP`, `sFK_Ma_DD`) VALUES
('but_chatlieu', 'but', 'material'),
('but_chieudai', 'but', 'length'),
('but_mausac', 'but', 'color'),
('but_thuonghieu', 'but', 'brand'),
('but_trongluong', 'but', 'weight'),
('but_xuatxu', 'but', 'origin'),
('capsach_chatlieu', 'capsach', 'material'),
('capsach_kickthuoc', 'capsach', 'size'),
('capsach_mausac', 'capsach', 'color'),
('capsach_thuonghieu', 'capsach', 'brand'),
('capsach_xuatxu', 'capsach', 'origin'),
('dungcuhoctap_chatlieu', 'dungcuhoctap', 'material'),
('dungcuhoctap_chieudai', 'dungcuhoctap', 'length'),
('dungcuhoctap_kickthuoc', 'dungcuhoctap', 'size'),
('dungcuhoctap_mausac', 'dungcuhoctap', 'color'),
('dungcuhoctap_thuonghieu', 'dungcuhoctap', 'brand'),
('dungcuhoctap_xuatxu', 'dungcuhoctap', 'origin'),
('hopbut_chatlieu', 'hopbut', 'material'),
('hopbut_chieudai', 'hopbut', 'length'),
('hopbut_mausac', 'hopbut', 'color'),
('hopbut_xuatxu', 'hopbut', 'origin'),
('sach_kickthuoc', 'sach', 'size'),
('sach_nxb', 'sach', 'publishing'),
('sach_sotrang', 'sach', 'numpage'),
('sach_tacgia', 'sach', 'author'),
('sach_xuatxu', 'sach', 'origin'),
('vo_chatlieu', 'vo', 'material'),
('vo_kickthuoc', 'vo', 'size'),
('vo_mausac', 'vo', 'color'),
('vo_sotrang', 'vo', 'numpage'),
('vo_thuonghieu', 'vo', 'brand'),
('vo_xuatxu', 'vo', 'origin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `PK_Ma_Donhang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_TenTK` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_PLSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iSoluong` int(11) NOT NULL,
  `iTrangthai` int(11) NOT NULL,
  `dNgaychinhsuacuoi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`PK_Ma_Donhang`, `sFK_TenTK`, `sFK_Ma_PLSP`, `iSoluong`, `iTrangthai`, `dNgaychinhsuacuoi`) VALUES
('admin_HopbutMJCartooncharacterskhoalon20x9-Mix_Hong_11726_1', 'admin', 'HopbutMJCartooncharacterskhoalon20x9-Mix_Hong_11726', 1, 0, NULL),
('admin_VoTheBerry-A4KeNgangCoCham200TrangDL70g/m2-CampusNB-A4BE200_Do_3068_1', 'admin', 'VoTheBerry-A4KeNgangCoCham200TrangDL70g/m2-CampusNB-A4BE200_Do_3068', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloai_sanpham`
--

CREATE TABLE `phanloai_sanpham` (
  `sPK_Ma_PLSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_SP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_DD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTenPL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iSoLuong` int(11) NOT NULL,
  `iGia` int(11) DEFAULT NULL,
  `sPimage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanloai_sanpham`
--

INSERT INTO `phanloai_sanpham` (`sPK_Ma_PLSP`, `sFK_Ma_SP`, `sFK_Ma_DD`, `sTenPL`, `iSoLuong`, `iGia`, `sPimage`) VALUES
('BaLoHocSinh-MitiBL22156_BLA_SKY_Den_15729', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'color', 'Đen', 100, NULL, NULL),
('BaLoHocSinh-MitiBL22156_BLA_SKY_Xanh_7960', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'color', 'Xanh', 100, NULL, NULL),
('BaLoNuMelody-SakosSBV117BK-MauDen_Den_20199', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'color', 'Đen', 100, NULL, NULL),
('BaLoTeen-MitiBL22161_BLA-MauDen_Den_26238', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'color', 'Đen', 100, NULL, NULL),
('BaLoThoiTrangMemeBoys-LopHocMatNgu-CungSongNgu_Xanh_31702', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', 'color', 'Xanh', 100, NULL, NULL),
('BopVietCleverHippoClassicFairyForest-HF0122/PINK_Hong_29940', '2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', 'color', 'Hồng', 100, NULL, NULL),
('BopVietVaiKawaii-MauXanhDuong_Xanh_23609', '2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', 'color', 'Xanh', 100, NULL, NULL),
('ButBi0.5mmThienLongTL-027-MucDo_Do_16645', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'color', 'Đỏ', 100, NULL, NULL),
('ButBi0.5mmThienLongTL-027-MucXanh_Kimloai_22524', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'material', 'Kim loại', 100, NULL, NULL),
('ButBi0.5mmThienLongTL-027-MucXanh_Nhua_12527', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'material', 'Nhựa', 100, NULL, NULL),
('ButBi0.5mmTreeden-ThienLongTL-079-MucDen_Den_18196', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'color', 'Đen', 100, NULL, NULL),
('ButBiClaroSigmaPlusGold0.7mm-MucXanh_Vang_22530', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'color', 'Vàng', 100, NULL, NULL),
('HopbutDangVuongDeli-PhienBanSonTungM-TPGioiHan-DeliH901_Hong_12329', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'color', 'Hồng', 100, NULL, NULL),
('HopbutDangVuongDeli-PhienBanSonTungM-TPGioiHan-DeliH901_Xanh_18864', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'color', 'Xanh', 100, NULL, NULL),
('HopbutMJCartooncharacterskhoalon20x9-Mix_Hong_11726', '2022_08_02_13_09_28_HopbutMJCartooncharacterskhoalon20x9-Mix', 'color', 'Hồng', 20, NULL, NULL),
('VoFruitKeNgang120TrangDL58-60g/m2-Haplus5662_Xanh_16991', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'color', 'Xanh', 100, NULL, NULL),
('VoKeNgang80TrangDL60g/m2-Haplus5501_Trang_21223', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'color', 'Trắng', 100, NULL, NULL),
('VoTheBerry-A4KeNgangCoCham200TrangDL70g/m2-CampusNB-A4BE200_Do_3068', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'color', 'Đỏ', 100, NULL, NULL),
('VoTheBerry-A4KeNgangCoCham200TrangDL70g/m2-CampusNB-A4BE200_Trang_13551', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'color', 'Trắng', 100, NULL, NULL),
('VoTrendB54LyNgang120TrangDL70g/m2-CampusNB-BTRE120_Hong_23909', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'color', 'Hồng', 100, NULL, NULL),
('VoTrendB54LyNgang120TrangDL70g/m2-CampusNB-BTRE120_Xanh_13916', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'color', 'Xanh', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `sPK_Ma_quyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen_quyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`sPK_Ma_quyen`, `sTen_quyen`) VALUES
('admin', 'Quản trị'),
('khachhang', 'Khách hàng'),
('nhanvien', 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `sPK_Ma_SP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTen_SP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sPimage` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sGiaSP` int(11) NOT NULL,
  `sMota` text COLLATE utf8_unicode_ci,
  `dNgaytao` date DEFAULT NULL,
  `dNgaychinhsuacuoi` datetime DEFAULT NULL,
  `sNguoichinhsuacuoi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sHangSX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`sPK_Ma_SP`, `sTen_SP`, `sPimage`, `sGiaSP`, `sMota`, `dNgaytao`, `dNgaychinhsuacuoi`, `sNguoichinhsuacuoi`, `sHangSX`) VALUES
('2022_08_02_13_09_28_HopbutMJCartooncharacterskhoalon20x9-Mix', 'Hộp bút MJ Cartoon characters khóa lớn 20x9 - Mix', '22070356.jpg', 70000, 'Hộp bút có dạng hình hộp chữ nhật với 3 kích thước chiều dài, chiều rộng, chiều cao là: 25 x 6 x 2 (cm). Đồ dùng tiện lợi này có 4 ngăn. Mỗi ngăn, em phân chia các đồ dùng sao cho thật hợp lý. Nào là bút mực, bút chì, bút màu, thước kẻ, tẩy, giấy dán nhỏ, phấn,... em đều đựng trong hộp bút.', '2022-08-02', '2022-08-02 13:10:30', 'admin', NULL),
('2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'Bút Bi Claro Sigma Plus Gold 0.7 mm - Mực Xanh', '89070160145143.jpg', 8100, '<p><strong>Bút Bi Claro Sigma Plus Gold 0.7 mm - Mực Xanh</strong></p>\r\n\r\n<p>Đầu bút 0.7mm lướt êm, mực ra đều, không bị nhòe, để nét bút đẹp và chuẩn.</p>\r\n\r\n<p>Màu mực: Màu xanh</p>\r\n\r\n<p>Bút Bi Claro Sigma Plus Gold 0.7 mm có thân bút chắc chắn, vừa với tay cầm, thoải mái khi sử dụng.</p>\r\n\r\n<p>Bút bi CLARO được làm từ chất liệu mực cao cấp, màu sắc bền, khó phai theo thời gian.</p>\r\n\r\n<p>Thân bút được làm từ chất liệu nhựa cao cấp chịu lực tốt, hạn chế tối đa tình trạng nứt vỡ.</p>\r\n\r\n<p>Thiết kế bút có nắp đậy tránh hiện trạng tắt mực, tay cầm có lớp cao su chống trơn trượt, tạo sự thoải mái tối đa khi phải viết trong hàng giờ liền.</p>\r\n\r\n<p>Sản phẩm lý tưởng dành cho các em học sinh, sinh viên và nhân viên văn phòng.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'Bút Bi 0.5 mm Thiên Long TL-027 - Mực Xanh', '1684464134chinh.webp', 4950, '<p><strong>Bút Bi Thiên Long TL-027 - Mực Xanh</strong></p>\r\n\r\n<p>Đây là một trong những cây bút đang được học sinh sử dụng nhiều nhất tại Việt Nam. Bút có thiết kế tối giản, nhưng tinh tế và ấn tượng. Toàn bộ thân bút làm từ nhựa trong, phối hợp hoàn hảo với màu ruột bút bên trong.</p>\r\n\r\n<p><em><strong>Đặc điểm:</strong></em></p>\r\n\r\n<p>- Đầu bi: 0.5mm, sản xuất tại Thụy Sĩ.</p>\r\n\r\n<p>- Bút bi dạng bấm cò.</p>\r\n\r\n<p>- Nơi tì ngón tay có tiết diện hình tam giác vừa vặn với tay cầm giúp giảm trơn tuột khi viết thường xuyên.</p>\r\n\r\n<p>- Độ dài viết được: 1.600-2.000m</p>\r\n\r\n<p>- Mực đạt chuẩn: ASTM D-4236, ASTM F 963-91, EN71/3, TSCA.</p>\r\n\r\n<p><em><strong>Lợi ích:</strong></em></p>\r\n\r\n<p>- Đầu bi nhỏ cho nét chữ thanh mảnh.</p>\r\n\r\n<p>- Cơ chế bấm nằm gọn dưới giắt bút, giúp thuận tay khi sử dụng.</p>\r\n\r\n<p>- Thay ruột khi hết mực.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'Bút Bi 0.5 mm Thiên Long TL-027 - Mực Đỏ', '1684464643chinh.webp', 4950, '<p><strong>Bút Bi 0.5 mm Thiên Long TL-027 - Mực Đỏ</strong></p>\n\n<p>Đây là một trong những cây bút đang được học sinh sử dụng nhiều nhất tại Việt Nam. Bút có thiết kế tối giản, nhưng tinh tế và ấn tượng. Toàn bộ thân bút làm từ nhựa trong, phối hợp hoàn hảo với màu ruột bút bên trong.</p>\n\n<p><strong>Đặc điểm:</strong></p>\n\n<p>- Đầu bi: 0.5mm, sản xuất tại Thụy Sĩ.<br />\n- Bút bi dạng bấm cò.<br />\n- Nơi tì ngón tay có tiết diện hình tam giác vừa vặn với tay cầm giúp giảm trơn tuột khi viết thường xuyên.<br />\n- Độ dài viết được: 1.600-2.000m<br />\n- Mực đạt chuẩn: ASTM D-4236, ASTM F 963-91, EN71/3, TSCA.</p>\n\n<p><strong>Lợi ích:</strong></p>\n\n<p>- Đầu bi nhỏ cho nét chữ thanh mảnh.<br />\n- Cơ chế bấm nằm gọn dưới giắt bút, giúp thuận tay khi sử dụng.<br />\n- Thay ruột khi hết mực.</p>\n\n<p> </p>\n', '2023-05-19', '2023-05-19 09:51:11', 'admin', NULL),
('2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'Bút Bi 0.5 mm Treeden - Thiên Long TL-079 - Mực Đen', '1684464870chinh.webp', 4950, '<p><strong>Đặc tính sản phẩm:</strong></p>\r\n\r\n<p>- Đầu bút dạng Needle , kích thước 0.5mm</p>\r\n\r\n<p>- Màu mực Trendee TL-079 đậm, tươi, mực ra đều và liên tục.</p>\r\n\r\n<p>- Cây bút đẹp, nhỏ nhọn khá nhẹ nhàng, thú vị, nét viết trơn êm, sắc sảo, chữ viết đẹp.</p>\r\n\r\n<p>- Ở tất cả sản phẩm bút bi TL-079, tên bút \"Trendee\" được dập nổi trên thân</p>\r\n\r\n<p>- Sản phẩm có đầu bấm và lo xo nhạy và bền, không bung, không kẹt, vướng</p>\r\n\r\n<p>- Thân bút bằng nhựa nhìn thấy rõ ruột bút và màu mực bên trong</p>\r\n\r\n<p><strong>Lưu ý :</strong></p>\r\n\r\n<p>Bấm lại sau khi sử dụng</p>\r\n\r\n<p>Bảo quản:</p>\r\n\r\n<p>Bảo quản nơi khô ráo, thoáng mát.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'Vở Trend B5 4 Ly Ngang 120 Trang ĐL 70g/m2 - Campus NB-BTRE120', '1684465341chinh.webp', 15600, '<p><strong>Tập 4 Ly Ngang Campus B5 Trend (120 Trang)</strong> gây ấn tượng bởi các hoạ tiết thiết kế đơn giản nhưng vô cùng tinh tế và đẹp mắt. Tập được làm từ chất liệu giấy ngoại nhập chất lượng cao, bề mặt giấy trơn láng, viết đẹp, mượt mà. Gáy vở được đóng theo công nghệ ép keo đa lớp của Nhật Bản, vuông đẹp, không bị bong ra trong quá trình sử dụng.</p>\r\n\r\n<p>Thông tin sản phẩm</p>\r\n\r\n<p>- Loại sản phẩm: Tập học sinh - sinh viên.</p>\r\n\r\n<p>- Thương hiệu: Campus.</p>\r\n\r\n<p>- Xuất xứ: Nhật Bản.</p>\r\n\r\n<p>- Chất liệu:</p>\r\n\r\n<p>+ Giấy ngoại nhập chất lượng cao, bề mặt giấy trơn láng, viết đẹp, mượt mà.</p>\r\n\r\n<p>+ Định lượng: 70 g/m2.</p>\r\n\r\n<p>- Thiết kế:</p>\r\n\r\n<p>+ Bìa vở trẻ trung, bắt mắt và là thiết kế độc quyền của Campus.</p>\r\n\r\n<p>+ Gáy vở được đóng theo công nghệ ép keo đa lớp của Nhật Bản, giúp vở luôn mở phẳng đẹp trên bàn học, dễ dàng lật và viết từ trang đầu tiên đến trang cuối cùng. Gáy vở vuông đẹp, không bị bong ra trong quá trình sử dụng.</p>\r\n\r\n<p>+ Vở Campus được trang bị hệ thống đánh dấu bằng số thông minh cùng dòng kẻ (ly ngang 2mm) in chính xác, rõ nét trên trang giấy, giúp việc học tập dễ dàng và thuận tiện hơn.</p>\r\n\r\n<p>- Số trang: 120.</p>\r\n\r\n<p>- Kích thước: Khổ B5 - 179 x 252 mm.</p>\r\n\r\n<p>Mẫu Sản Phẩm sẽ được giao hàng ngẫu nhiên.</p>\r\n\r\n<p>Quý khách vui lòng ghi chú vào đơn hàng nếu có nhu cầu đặc biệt. Xin cám ơn Quý Khách.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', ' Vở The Berry - A4 Kẻ Ngang Có Chấm 200 Trang ĐL 70g/m2 - Campus NB-A4BE200', '1684465620chinh.webp', 44000, '<p><strong>Vở A4 200 Trang Campus The Berry - Kẻ Ngang Có Chấm (Mẫu Màu Giao Ngẫu Nhiên)</strong></p>\r\n\r\n<p>Gồm 5 cuốn có thiết kế giống nhau</p>\r\n\r\n<p>Được lấy ý tưởng từ “super simple”, đúng như tên gọi, là những mẫu thiết kế tối giản, mang hơi hướng unisex, hướng đến mọi đối tượng học sinh, bất kể giới tính, tuổi tác.</p>\r\n\r\n<p>Gáy vở được đóng theo công nghệ ép keo đa lớp của Nhật Bản giúp cuốn vở luôn mở phẳng đẹp trên bàn học, dễ dàng lật và viết từ trang đầu tiên đến trang cuối cùng, gáy vở vuông đẹp không bị bong ra trong quá trình sử dụng.</p>\r\n\r\n<p>Vở Campus được trang bị hệ thống đánh dấu bằng số thông minh cùng dòng kẻ in chính xác, rõ nét trên trang giấy giúp việc học tập dễ dàng và thuận tiện hơn.</p>\r\n\r\n<p>Bìa vở được thiết kế họa tiết và màu sắc bắt mắt, phù hợp với nhiều lứa tuổi học sinh, sinh viên.</p>\r\n\r\n<p>Khuôn vở A4 tạo sự thoải mái trong ghi chép cho học sinh, sinh viên</p>\r\n\r\n<p>Là món quà ý nghĩa cho bạn bè, người thân trong dịp năm học mới.</p>\r\n\r\n<p>Bìa vở nhiều màu săc, được giao ngẫu nhiên, tạo thêm nhiều sắc màu phong phú cho góc học tập của bạn.</p>\r\n\r\n<p>Định lượng 70gsm</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'Vở Kẻ Ngang 80 Trang ĐL 60g/m2 - Haplus 5501', '1684465773chinh.webp', 9900, '<p><strong>Vở Haplus Time Kẻ Ngang 80 Trang 5501</strong></p>\r\n\r\n<p>- Vở Haplus được làm từ loại giấy trắng đẹp và mịn, không lóa mắt khi viết, giấy viết không lem, ăn mực tốt với hầu hết các loại bút.</p>\r\n\r\n<p>- Sản xuất tại nhà máy công nghệ cao - Công ty CP giấy Hải Tiến.</p>\r\n\r\n<p>- Công nghệ ép keo đa lớp hiện đại.</p>\r\n\r\n<p>- Giấy viết êm tay, không thấm nhòe</p>\r\n\r\n<p>- Được đóng chắc chắn, bìa tập dày cho hiệu quả bảo quản bền lâu, gáy tập được đóng chắc chắn với loại ghim tốt nhất, chắc chắn cho hiệu quả bảo quản bền lâu.</p>\r\n\r\n<p>- Vở Haplus sẽ là sự lựa chọn lý tưởng dành cho các em học sinh trong năm học mới.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'Vở Fruit Kẻ Ngang 120 Trang ĐL 58-60g/m2 - Haplus 5662', '1684466488chinh.webp', 13950, '<p><strong>Vở Haplus Fruit Kẻ Ngang 120 Trang 5662</strong></p>\r\n\r\n<p>- Vở Haplus được làm từ loại giấy trắng đẹp và mịn, không lóa mắt khi viết, giấy viết không lem, định lượng : 70g/m2, ăn mực tốt với hầu hết các loại bút.</p>\r\n\r\n<p>- Sản xuất tại nhà máy công nghệ cao - Công ty CP giấy Hải Tiến.</p>\r\n\r\n<p>- Công nghệ ép keo đa lớp hiện đại.</p>\r\n\r\n<p>- Giấy viết êm tay, không thấm nhòe.</p>\r\n\r\n<p>- Được đóng chắc chắn, bìa tập dày cho hiệu quả bảo quản bền lâu, gáy tập được đóng chắc chắn với loại ghim tốt nhất, chắc chắn cho hiệu quả bảo quản bền lâu.</p>\r\n\r\n<p>- Vở Haplus sẽ là sự lựa chọn lý tưởng dành cho các em học sinh trong năm học mới.</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'Ba Lô Nữ Melody - Sakos SBV117BK - Màu Đen', '1684467285chinh.webp', 751500, '<p><strong>Ba Lô Nữ Melody - Sakos SBV117BK</strong></p>\r\n\r\n<p>Melody là bộ sưu tập balo nữ thời thượng với kiểu dáng nhỏ gọn, đơn giản nhưng tinh tế. Phân ngăn khoa học trên chất liệu trượt nước vượt trội càng tôn lên sự đẳng cấp của sản phẩm đến từ thương hiệu U.S.A</p>\r\n\r\n<p><strong>Balo nữ MELODY sở hữu thiết kế tối giản, chất liệu trượt nước vượt trội</strong></p>\r\n\r\n<p>Chất liệu polyester trượt nước, bền màu, chống bám bụi và dễ dàng vệ sinh khi bị dính bẩn.</p>\r\n\r\n<p>Bên trong trang bị vải lót 3 tính năng: chống thấm, hút ẩm, kháng khuẩn.</p>\r\n\r\n<p>Logo Stargo tinh tế khẳng định chất lượng sản phẩm và giá trị thương hiệu được chuyển nhượng độc quyền từ USA.</p>\r\n\r\n<p><strong>Phân ngăn tiện lợi khiến MELODY xứng đáng là dòng balo nữ hiện đại đầy tinh tế</strong></p>\r\n\r\n<p>Balo nữ Melody gồm 1 ngăn chính và nhiều ngăn phụ tiện lợi.</p>\r\n\r\n<p>Hệ thống các ngăn phụ kích thước lớn – nhỏ đa dạng dễ dàng sắp xếp đồ dùng ngăn nắp.</p>\r\n\r\n<p><strong>Công nghệ may gấp mép viền tạo phom cứng cáp giúp balo đứng vững không cần điểm tựa</strong></p>\r\n\r\n<p>Công nghệ may gấp mép viền tinh tế, bền bỉ cùng thời gian.</p>\r\n\r\n<p>Phom dáng cứng cáp nhờ sợi nhựa PE bọc vải tạo khung vững vàng.</p>\r\n\r\n<p>Quai xách và quai đeo được đánh bọ kỹ lưỡng, chắc chắn.</p>\r\n\r\n<p><strong>Tinh tế trong từng chi tiết giúp balo nữ MELODY bảo vệ vóc dáng người dùng</strong></p>\r\n\r\n<p>Đai móc gọng mắt kính được tích hợp trên quai đeo.</p>\r\n\r\n<p>Quai xách 2 lớp, to bản êm ái, bảo vệ da tay.</p>\r\n\r\n<p>Đệm lưng EVA dạng lưới thoáng khí, cấu trúc 4D chống đổ mồ hôi lưng.</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'Ba Lô Teen - Miti BL22161_BLA - Màu Đen', '1684467407chinh.webp', 323100, '<p><strong>Ba Lô Teen - Miti BL22161_BLA - Màu Đen</strong></p>\r\n\r\n<p>Ba lô có thiết kế đơn giản, thanh lịch. Với nhiều ngăn được phân chia khoa học, kích thước lớn. Balo có thể sử dụng đi chơi, đi học, đi làm,...</p>\r\n\r\n<p><em><strong>Đường May Tỉ Mỉ, Chắc Chắn</strong></em></p>\r\n\r\n<p>Đường may của ba lô được may tỉ mỉ và tinh tế, đảm bảo độ bền chắc trong suốt thời gian sử dụng</p>\r\n\r\n<p><strong><em>Ngăn Chứa Rộng Rãi</em></strong></p>\r\n\r\n<p>Ngăn chính ba lô được thiết kế rộng rãi, kèm theo ngăn chống sốc laptop, có độ đàn hồi cao, tránh được các va đập mạnh.</p>\r\n\r\n<p>Ngoài ra, ba lô còn có các ngăn phụ giúp người sử dụng phân chia những vật dụng nhỏ như thẻ xe, thẻ ATM, chìa khóa, bút viết, sổ tay... tránh trường hợp thất lạc và dễ dàng tìm kiếm.</p>\r\n\r\n<p>Hai bên ba lô có 2 ngăn có thể đựng các chai nước tách biệt ra các ngăn khác, tránh tình trạng làm ướt đồ dùng bên trong và có thể dễ dàng thao tác hơn.</p>\r\n\r\n<p><strong><em>Quai Đeo Chắc Chắn - Đệm Lưng Siêu Dày</em></strong></p>\r\n\r\n<p>Quai đeo may dày, có lớp đệm mỏng tạo cảm giác thoải mái cho người sử dụng. Hạn chế tình trạng đau vai, mỏi vai khi sử dụng trong thời gian dài hoặc khi mang nặng.<br />\r\nPhía sau balo có lớp đệm lưng bằng lưới siêu dày, có khả năng phân tán khí giúp lưng được khô ráo và dễ chịu hơn.</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'Ba Lô Học Sinh - Miti BL22156_BLA_SKY', '1684467627chinh.webp', 323100, '<p><strong>Ba Lô Học Sinh - Miti BL22156_BLA_SKY - Xanh Biển - Đen</strong></p>\r\n\r\n<p>Balo học sinh cấp 2,3 Miti với kiểu dáng thời trang thanh lịch phù hợp với học sinh độ tuổi từ 12-22 tuổi.</p>\r\n\r\n<p>Balo sử dụng chất liệu Polyester chống thấm tối ưu, chống bám bụi và có độ bền cao theo thời gian. Bên trong balo được lót thêm lớp vải Poly Oxford cao cấp chống nước, chống gây mùi hôi giữ đồ dùng bên trong balo được khô thoáng và an toàn.</p>\r\n\r\n<p><em><strong>Thiết Kế Thời Trang</strong></em></p>\r\n\r\n<p>Balo BL22156 có thiết kế đơn giản, thanh lịch. Với nhiều ngăn được phân chia khoa học, kích thước lớn. Balo có thể sử dụng đi chơi, đi học, đi làm,...</p>\r\n\r\n<p><em><strong>Đường May Tỉ Mỉ, Chắc Chắn</strong></em></p>\r\n\r\n<p>Đường may của balo được may tỉ mỉ và tinh tế, đảm bảo độ bền chắc trong suốt thời gian sử dụng</p>\r\n\r\n<p><em><strong>Ngăn Chứa Rộng Rãi</strong></em></p>\r\n\r\n<p>Ngăn chính balo được thiết kế rộng rãi, kèm theo ngăn chống sốc laptop 15.6 inch dày, có độ đàn hồi cao, tránh được các va đập mạnh.</p>\r\n\r\n<p>Ngoài ra, balo còn có các ngăn phụ giúp người sử dụng phân chia những vật dụng nhỏ như thẻ xe, thẻ ATM, chìa khóa, bút viết, sổ tay... tránh trường hợp thất lạc và dễ dàng tìm kiếm.</p>\r\n\r\n<p>Hai bên balo có ngăn lưới có thể đựng các chai nước tách biệt ra các ngăn khác, tránh tình trạng làm ướt đồ dùng bên trong và có thể dễ dàng thao tác hơn.</p>\r\n\r\n<p><em><strong>Quai Đeo Chắc Chắn - Đệm Lưng Siêu Dày</strong></em></p>\r\n\r\n<p>Quai đeo may dày, có lớp đệm mỏng tạo cảm giác thoải mái cho người sử dụng. Hạn chế tình trạng đau vai, mỏi vai khi sử dụng trong thời gian dài hoặc khi mang nặng.<br />\r\nPhía sau balo có lớp đệm lưng bằng lưới siêu dày, có khả năng phân tán khí giúp lưng được khô ráo và dễ chịu hơn.</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', ' Ba Lô Thời Trang Meme Boys - Lớp Học Mật Ngữ - Cung Song Ngư', '1684467740chinh.webp', 238500, '<p><strong>Ba Lô Meme Boys - LHMN - Song Ngư</strong></p>\r\n\r\n<p>Ba lô được thiết kế theo phong cách độc đáo, trẻ trung và năng động với ngăn chia bên ngoài tiện lợi cùng với ngăn chứa bí mật giúp chống trộm hiệu quả.</p>\r\n\r\n<p>Quai đeo bền chắc cùng kiểu dáng kết hợp tinh tế, hiện đại, tạo nên sự hài hòa và nổi bật cho chiếc ba lô này.</p>\r\n\r\n<p>Ba lô được phối màu của các nhân vật của Lớp Học Mật Ngữ mang lại sự độc lạ đậm nét cá tính rất riêng của Lớp Học Mật Ngữ và rất dễ để bạn kết hợp cùng nhiều trang phục khác nhau từ đơn giản tinh tế đến cá tính sành điệu kèm các phụ kiện khác để nổi bật trong đám đông.</p>\r\n\r\n<p>Ba lô được làm từ chất liệu vải cao cấp không thấm nước, an toàn, đựng vừa laptop 15 inch luôn đem lại cảm giác mềm mại, êm vai khi sử dụng.</p>\r\n\r\n<p>Đường may của ba lô vô cùng tỉ mỉ và tinh tế, đảm bảo độ bền chắc trong suốt thời gian sử dụng.</p>\r\n\r\n<p> </p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'Hộp bút Dáng Vuông Deli - Phiên Bản Sơn Tùng M-TP Giới Hạn - Deli H901', '1684468226chinh.webp', 130000, '<p><em><strong>Bóp Viết Dáng Vuông Deli - Phiên Bản Sơn Tùng M-TP Giới Hạn - Deli H901 </strong></em>với màu sắc đa dạng, chất liệu vải dạ cứng có độ bền cao, chịu được va đập.</p>\r\n\r\n<p><em><strong>Thông Tin Chi Tiết Sản Phẩm:</strong></em></p>\r\n\r\n<p>- Chất liệu vải dạ cứng có độ bền cao, chịu được va đập</p>\r\n\r\n<p>- Màu sắc đa dạng, chi tiết xem hình ảnh trong phần phân loại sản phẩm</p>\r\n\r\n<p>- Ngoài công năng sử dụng còn là đồ vật trang trí làm sinh động góc học tập của bạn</p>\r\n\r\n<p>- Kích thước sản phẩm: 19 x 5 x 5 cm</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', 'Bóp Viết Vải Kawaii - Màu Xanh Dương', '1684468318chinh.webp', 71100, '<p><strong>Bóp Viết Vải Kawaii - Màu Xanh Dương</strong></p>\r\n\r\n<p>Sản phẩm được làm từ chất liệu Polyester, họa tiết được in bằng ký thuật in cao cấp có độ bền màu cao.</p>\r\n\r\n<p>Đầu kéo bằng kim loại nguyên khối đảm bảo độ bền chắc tuyệt đối.</p>\r\n\r\n<p>Khoang chứa rộng rãi có thể chứa toàn bộ đồ dùng thiết yếu của học sinh bao gồm cả kiếng mắt.</p>\r\n\r\n<p>Bóp viết có màu sắc tươi sáng, phù hợp làm quà tặng đầy ý nghĩa cho trẻ nhỏ.</p>\r\n', '2023-05-19', NULL, NULL, NULL),
('2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', ' Bóp Viết Clever Hippo Classic Fairy Forest - HF0122/PINK', '1684468414chinh.webp', 208050, '<p><strong>Bóp Viết Clever Hippo Classic Fairy Forest - HF0122/PINK - Màu Hồng</strong></p>\r\n\r\n<p>Tiếp thêm tình yêu thiên nhiên, Clever Hippo đã cho ra mắt bóp viết Fairy Forest màu sắc cực trendy cùng họa tiết hoa lá thêm phần điệu đà để tạo thêm sự yêu quý cây cối giúp các bé xem thiên nhiên như 1 người bạn.</p>\r\n\r\n<p>Chủ đề: Khu rừng cổ tích</p>\r\n\r\n<p>Bóp viết Classic Fairy Forest với những đặc điểm nổi bật như:</p>\r\n\r\n<p>- Thiết kế độc quyền với khu rừng cổ tích có bé thỏ & nàng tiên vui sống hòa thuận bên nhau.</p>\r\n\r\n<p>- Nhỏ gọn, tiện dụng không mất quá nhiều diện tích khi đặt bên trong ba lô.</p>\r\n\r\n<p>- Bộ tay - đầu kéo HKK chất lượng tạo điểm nhấn mới lạ.</p>\r\n\r\n<p>- Các ngăn chứa rộng rãi, thoải mái.</p>\r\n\r\n<p>- Chất liệu nhẹ vải polyester trượt nước, dễ dàng vệ sinh.</p>\r\n', '2023-05-19', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_dacdiem`
--

CREATE TABLE `sanpham_dacdiem` (
  `sPK_Ma_Sp_DD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_DM_DD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sFK_Ma_SP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sMota` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_dacdiem`
--

INSERT INTO `sanpham_dacdiem` (`sPK_Ma_Sp_DD`, `sFK_Ma_DM_DD`, `sFK_Ma_SP`, `sMota`) VALUES
('but_chatlieu2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh17683', 'but_chatlieu', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'Kim loại'),
('but_chatlieu2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh28293', 'but_chatlieu', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'Nhựa, Kim loại'),
('but_chatlieu2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc25946', 'but_chatlieu', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'Nhựa'),
('but_chatlieu2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen3005', 'but_chatlieu', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'Kim loại'),
('but_chieudai2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh25424', 'but_chieudai', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', '14cm'),
('but_chieudai2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh17626', 'but_chieudai', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', '14cm'),
('but_chieudai2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc17291', 'but_chieudai', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', '14cm'),
('but_chieudai2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen17842', 'but_chieudai', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', '14cm'),
('but_mausac2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh22857', 'but_mausac', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'Vàng'),
('but_mausac2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh27915', 'but_mausac', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'Xanh'),
('but_mausac2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc19560', 'but_mausac', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'Đỏ'),
('but_mausac2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen6403', 'but_mausac', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'Đen'),
('but_thuonghieu2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh29262', 'but_thuonghieu', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'Claro'),
('but_thuonghieu2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh30696', 'but_thuonghieu', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'Thiên Long'),
('but_thuonghieu2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc26753', 'but_thuonghieu', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'Thiên Long'),
('but_thuonghieu2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen16512', 'but_thuonghieu', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'Thiên Long'),
('but_trongluong2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh8047', 'but_trongluong', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', '20g'),
('but_trongluong2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh28161', 'but_trongluong', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', '10g'),
('but_trongluong2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc32038', 'but_trongluong', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', '20g'),
('but_trongluong2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen9913', 'but_trongluong', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', '20g'),
('but_xuatxu2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh25724', 'but_xuatxu', '2023_05_19_09_16_29_BtBiClaroSigmaPlusGold07mmMcXanh', 'Ấn Độ'),
('but_xuatxu2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh21670', 'but_xuatxu', '2023_05_19_09_42_14_BtBi05mmThinLongTL027McXanh', 'Việt Nam'),
('but_xuatxu2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc3431', 'but_xuatxu', '2023_05_19_09_50_43_BtBi05mmThinLongTL027Mc', 'Việt Nam'),
('but_xuatxu2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen2814', 'but_xuatxu', '2023_05_19_09_54_30_BtBi05mmTreedenThinLongTL079Mcen', 'Việt Nam'),
('capsach_chatlieu2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen10900', 'capsach_chatlieu', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'Vải'),
('capsach_chatlieu2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen14303', 'capsach_chatlieu', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'Vải'),
('capsach_chatlieu2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY18262', 'capsach_chatlieu', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'Vải'),
('capsach_chatlieu2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg7767', 'capsach_chatlieu', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', 'Vải'),
('capsach_kickthuoc2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen26941', 'capsach_kickthuoc', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', '35cm'),
('capsach_kickthuoc2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen27692', 'capsach_kickthuoc', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', '43cm'),
('capsach_kickthuoc2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY17367', 'capsach_kickthuoc', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', '43cm'),
('capsach_kickthuoc2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg7492', 'capsach_kickthuoc', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', '35cm'),
('capsach_mausac2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen5426', 'capsach_mausac', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'Đen'),
('capsach_mausac2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen9973', 'capsach_mausac', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'Đen'),
('capsach_mausac2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY5316', 'capsach_mausac', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'Xanh, Đen'),
('capsach_mausac2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg24109', 'capsach_mausac', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', 'Xanh'),
('capsach_thuonghieu2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen29315', 'capsach_thuonghieu', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'SAKOS'),
('capsach_thuonghieu2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen27786', 'capsach_thuonghieu', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'Miti'),
('capsach_thuonghieu2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY16301', 'capsach_thuonghieu', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'Miti'),
('capsach_thuonghieu2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg32610', 'capsach_thuonghieu', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', 'HooHooHaHa'),
('capsach_xuatxu2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen23552', 'capsach_xuatxu', '2023_05_19_10_34_45_BaLNMelodySakosSBV117BKMuen', 'Việt Nam'),
('capsach_xuatxu2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen29435', 'capsach_xuatxu', '2023_05_19_10_36_47_BaLTeenMitiBL22161BLAMuen', 'Việt Nam'),
('capsach_xuatxu2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY738', 'capsach_xuatxu', '2023_05_19_10_40_27_BaLHcSinhMitiBL22156BLASKY', 'Việt Nam'),
('capsach_xuatxu2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg18675', 'capsach_xuatxu', '2023_05_19_10_42_20_BaLThiTrangMemeBoysLpHcMtNgCungSongNg', 'Trung Quốc'),
('hopbut_chatlieu2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH90112206', 'hopbut_chatlieu', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'Vải'),
('hopbut_chatlieu2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng21118', 'hopbut_chatlieu', '2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', 'Vải'),
('hopbut_chatlieu2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK21533', 'hopbut_chatlieu', '2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', 'Vải'),
('hopbut_chieudai2022_08_02_13_09_28_HopbutMJCartooncharacterskhoalon20x9-Mix29935', 'hopbut_chieudai', '2022_08_02_13_09_28_HopbutMJCartooncharacterskhoalon20x9-Mix', '25cm'),
('hopbut_chieudai2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901335', 'hopbut_chieudai', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', '20.5cm'),
('hopbut_chieudai2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng13279', 'hopbut_chieudai', '2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', '20.5cm'),
('hopbut_chieudai2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK22162', 'hopbut_chieudai', '2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', '20.5cm'),
('hopbut_mausac2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH90120700', 'hopbut_mausac', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'Xanh, Hồng'),
('hopbut_mausac2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng14380', 'hopbut_mausac', '2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', 'Xanh'),
('hopbut_mausac2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK2147', 'hopbut_mausac', '2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', 'Hồng'),
('hopbut_xuatxu2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH9019701', 'hopbut_xuatxu', '2023_05_19_10_50_26_HpbtDngVungDeliPhinBnSnTngMTPGiiHnDeliH901', 'Việt Nam'),
('hopbut_xuatxu2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng757', 'hopbut_xuatxu', '2023_05_19_10_51_58_BpVitViKawaiiMuXanhDng', 'Trung Quốc'),
('hopbut_xuatxu2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK27744', 'hopbut_xuatxu', '2023_05_19_10_53_34_BpVitCleverHippoClassicFairyForestHF0122PINK', 'Việt Nam'),
('vo_chatlieu2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE12014906', 'vo_chatlieu', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'Giấy'),
('vo_chatlieu2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE2004741', 'vo_chatlieu', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'Giấy'),
('vo_chatlieu2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus550124212', 'vo_chatlieu', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'Giấy'),
('vo_chatlieu2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus566225772', 'vo_chatlieu', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'Giấy'),
('vo_kickthuoc2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE1209963', 'vo_kickthuoc', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', '25.5cm'),
('vo_kickthuoc2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE2006362', 'vo_kickthuoc', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'A4'),
('vo_kickthuoc2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus55013389', 'vo_kickthuoc', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', '25.2cm'),
('vo_kickthuoc2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus566230069', 'vo_kickthuoc', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', '25.5cm'),
('vo_mausac2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE12023624', 'vo_mausac', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'Xanh, Hồng'),
('vo_mausac2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE20012555', 'vo_mausac', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'Trắng, Đỏ'),
('vo_mausac2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus550126930', 'vo_mausac', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'Trắng'),
('vo_mausac2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus566222794', 'vo_mausac', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'Xanh'),
('vo_sotrang2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE12027361', 'vo_sotrang', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', '120'),
('vo_sotrang2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE20027624', 'vo_sotrang', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', '200'),
('vo_sotrang2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus550113955', 'vo_sotrang', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', '80'),
('vo_sotrang2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus56629595', 'vo_sotrang', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', '120'),
('vo_thuonghieu2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE12016390', 'vo_thuonghieu', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'Campus'),
('vo_thuonghieu2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE20020993', 'vo_thuonghieu', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'Campus'),
('vo_thuonghieu2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus550120480', 'vo_thuonghieu', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'Haplus'),
('vo_thuonghieu2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus56628088', 'vo_thuonghieu', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'Haplus'),
('vo_xuatxu2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE12018119', 'vo_xuatxu', '2023_05_19_10_02_21_VTrendB54LyNgang120TrangL70gm2CampusNBBTRE120', 'Nhật Bản'),
('vo_xuatxu2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE20026790', 'vo_xuatxu', '2023_05_19_10_07_00_VTheBerryA4KNgangCChm200TrangL70gm2CampusNBA4BE200', 'Nhật bản'),
('vo_xuatxu2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus550116441', 'vo_xuatxu', '2023_05_19_10_09_33_VKNgang80TrangL60gm2Haplus5501', 'Việt Nam'),
('vo_xuatxu2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus566229681', 'vo_xuatxu', '2023_05_19_10_21_28_VFruitKNgang120TrangL5860gm2Haplus5662', 'Việt Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `sPK_TenTK` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sFK_Ma_Quyen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sMatkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sTenTK` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dNgaysinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`sPK_TenTK`, `sFK_Ma_Quyen`, `sMatkhau`, `sTenTK`, `dNgaysinh`) VALUES
('admin', 'admin', '356a192b7913b04c54574d18c28d46e6395428ab', 'Admin', '2022-07-13'),
('test1', 'khachhang', '356a192b7913b04c54574d18c28d46e6395428ab', 'test1', '2022-08-01');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dacdiem`
--
ALTER TABLE `dacdiem`
  ADD PRIMARY KEY (`sPK_Ma_DD`),
  ADD KEY `dacdiem_ibfk_1` (`sNguoisuacuoi`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`sPK_Ma_DMSP`);

--
-- Chỉ mục cho bảng `danhmuc_dacdiem`
--
ALTER TABLE `danhmuc_dacdiem`
  ADD PRIMARY KEY (`sPK_Ma_DM_DD`),
  ADD KEY `danhmuc_dacdiem_sfk_ma_dmsp_index` (`sFK_Ma_DMSP`),
  ADD KEY `danhmuc_dacdiem_sfk_ma_dd_index` (`sFK_Ma_DD`) USING BTREE;

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`PK_Ma_Donhang`),
  ADD KEY `sFK_Ma_PLSP` (`sFK_Ma_PLSP`),
  ADD KEY `sFK_TenTK` (`sFK_TenTK`),
  ADD KEY `iTrangthai` (`iTrangthai`);

--
-- Chỉ mục cho bảng `phanloai_sanpham`
--
ALTER TABLE `phanloai_sanpham`
  ADD PRIMARY KEY (`sPK_Ma_PLSP`),
  ADD KEY `phanloai_sanpham_sfk_ma_sp_index` (`sFK_Ma_SP`),
  ADD KEY `phanloai_sanpham_sfk_ma_dd_index` (`sTenPL`),
  ADD KEY `sFK_Ma_DD` (`sFK_Ma_DD`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`sPK_Ma_quyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sPK_Ma_SP`),
  ADD KEY `sNguoichinhsuacuoi` (`sNguoichinhsuacuoi`);

--
-- Chỉ mục cho bảng `sanpham_dacdiem`
--
ALTER TABLE `sanpham_dacdiem`
  ADD PRIMARY KEY (`sPK_Ma_Sp_DD`),
  ADD KEY `sanpham_dacdiem_sfk_ma_dd_index` (`sFK_Ma_DM_DD`),
  ADD KEY `sanpham_dacdiem_sfk_ma_sp_index` (`sFK_Ma_SP`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`sPK_TenTK`),
  ADD KEY `sFK_Ma_Quyen` (`sFK_Ma_Quyen`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dacdiem`
--
ALTER TABLE `dacdiem`
  ADD CONSTRAINT `dacdiem_ibfk_1` FOREIGN KEY (`sNguoisuacuoi`) REFERENCES `taikhoan` (`sPK_TenTK`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhmuc_dacdiem`
--
ALTER TABLE `danhmuc_dacdiem`
  ADD CONSTRAINT `danhmuc_dacdiem_ibfk_1` FOREIGN KEY (`sFK_Ma_DMSP`) REFERENCES `danhmuc` (`sPK_Ma_DMSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danhmuc_dacdiem_ibfk_2` FOREIGN KEY (`sFK_Ma_DD`) REFERENCES `dacdiem` (`sPK_Ma_DD`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`sFK_Ma_PLSP`) REFERENCES `phanloai_sanpham` (`sPK_Ma_PLSP`) ON UPDATE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`sFK_TenTK`) REFERENCES `taikhoan` (`sPK_TenTK`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phanloai_sanpham`
--
ALTER TABLE `phanloai_sanpham`
  ADD CONSTRAINT `phanloai_sanpham_ibfk_1` FOREIGN KEY (`sFK_Ma_SP`) REFERENCES `sanpham` (`sPK_Ma_SP`) ON UPDATE CASCADE,
  ADD CONSTRAINT `phanloai_sanpham_ibfk_2` FOREIGN KEY (`sFK_Ma_DD`) REFERENCES `dacdiem` (`sPK_Ma_DD`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`sNguoichinhsuacuoi`) REFERENCES `taikhoan` (`sPK_TenTK`);

--
-- Các ràng buộc cho bảng `sanpham_dacdiem`
--
ALTER TABLE `sanpham_dacdiem`
  ADD CONSTRAINT `sanpham_dacdiem_ibfk_2` FOREIGN KEY (`sFK_Ma_SP`) REFERENCES `sanpham` (`sPK_Ma_SP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_dacdiem_ibfk_3` FOREIGN KEY (`sFK_Ma_DM_DD`) REFERENCES `danhmuc_dacdiem` (`sPK_Ma_DM_DD`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`sFK_Ma_Quyen`) REFERENCES `quyen` (`sPK_Ma_quyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
