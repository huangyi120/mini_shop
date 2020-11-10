-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020-11-10 07:14:00
-- 伺服器版本： 8.0.18
-- PHP 版本： 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mini_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill`
--

INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 1, 3021, '2020-11-10 06:09:59', '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill_detail`
--

INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(1, 11, 1, 1234),
(1, 9, 1, 1787);

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(1, '吸血鬼波', '<p>偶吸吸吸吸吸</p>\r\n', 1031, 1, '2020-11-10 05:43:34'),
(2, '南瓜小雞波', '<p>喵喵喵咕咕咕</p>\r\n', 1033, 1, '2020-11-10 05:44:43'),
(3, '鬼臉宇智波', '<p>咧咧咧咧咧</p>\r\n', 8787, 1, '2020-11-10 05:45:38'),
(4, '死神南瓜波', '<p>诶嘿</p>\r\n', 1301, 1, '2020-11-10 05:46:53'),
(5, '咪卡', '<p>咪~~~~~~~卡</p>\r\n', 6666, 1, '2020-11-10 05:47:45'),
(6, '咖波之王', '<p>成為我的食物吧!!!</p>\r\n', 99999, 1, '2020-11-10 05:48:51'),
(7, '口水怪波', '<p>呼嚕嚕</p>\r\n', 1680, 6, '2020-11-10 05:49:55'),
(8, '宋重機波', '<p>轟隆隆噗噗噗噗~</p>\r\n', 8888, 1, '2020-11-10 05:59:00'),
(9, '花樣美男', '<p>想擁有迷人身材嗎?跟偶一起健身吧!</p>\r\n', 1787, 2, '2020-11-10 06:00:34'),
(10, '與智咖波球', '<p>喵喵喵逼波嗝~</p>\r\n', 9487, 1, '2020-11-10 06:01:53'),
(11, '兵乓乒乓波', '<p>六肢都很修長呦~</p>\r\n', 1234, 3, '2020-11-10 06:03:46'),
(12, '咖波造型盤組合', '<p>貓貓蟲-咖波 唯一授權製作販售</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>商品規格</p>\r\n\r\n<p>內容物：造型盤 ( 咖波、奶泡貓、黑貓蟲、黑貓蟲寶寶 )<br />\r\n材質：陶瓷<br />\r\n容量：280ml<br />\r\n尺寸：204 X 185 x 18 mm</p>\r\n\r\n<p>產地：台灣<br />\r\n耐熱：-20度~200度<br />\r\n&nbsp;</p>\r\n\r\n<p>注意事項<br />\r\n1.請勿存放於微波爐、洗碗機、烤箱、烤架和冰櫃，可能會損壞產品。<br />\r\n2.請避免對產品造成劇烈溫差，可能會損壞產品。</p>\r\n\r\n<p>3.請勿對其使用含有漂白劑或氯的清潔劑。</p>\r\n\r\n<p>4.造型盤耳朵因為製程關係會有刮痕，在意者請勿下單。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>照片因拍攝地點的關係有些微誤差，一切以商品實物為主</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10個工作天內出貨</p>\r\n\r\n<p>宅配：每週一、四出貨，1-2工作天送達(週日不配送)。</p>\r\n\r\n<p>7-11 取貨不付款：每週一、四出貨，2-3工作天送達。</p>\r\n\r\n<p>7-11 取貨付款：每週一、四出貨，2-3工作天送達。</p>\r\n\r\n<p>(實際配送時間依物流配送情況為主)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>卡特島創意 保留以上活動內容修改之權利</p>\r\n', 1800, 17, '2020-11-10 06:32:55'),
(13, '咖波成人雨衣', '<p>貓貓蟲-咖波 唯一授權製作販售</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>材質:布料-尼龍(Nylon)、防水層-聚氯乙烯(PVC)</p>\r\n\r\n<p>衣長：約125CM(後中量不含領高)</p>\r\n\r\n<p>胸寬：約87CM(即胸圍約174CM)</p>\r\n\r\n<p>袖長：約86CM(領口至袖口)</p>\r\n\r\n<p>(適用於身高155~175CM,因每人身型不同會有微誤差)</p>\r\n\r\n<p>產地：越南</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10個工作天內出貨</p>\r\n\r\n<p>宅配：每週一、四出貨，1-2工作天送達(週日不配送)。</p>\r\n\r\n<p>7-11 取貨不付款：每週一、四出貨，2-3工作天送達。</p>\r\n\r\n<p>7-11 取貨付款：每週一、四出貨，2-3工作天送達。</p>\r\n\r\n<p>海外配送：每週二出貨，各地配送時間不同。</p>\r\n\r\n<p>(實際配送時間依物流配送情況為主)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>卡特島創意 保留以上活動內容修改之權利</p>\r\n', 750, 4, '2020-11-10 06:27:47'),
(14, '咖波列車絨毛娃娃', '<p>貓貓蟲-咖波 唯一授權製作販售</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>商品規格</p>\r\n\r\n<p>內容物：車頭 X 1 + 車廂 X 1 + 車尾&nbsp;X 1</p>\r\n\r\n<p>車頭尺寸：27 X 25 X 19 cm<br />\r\n車廂尺寸：22 X 18 X 19 cm</p>\r\n\r\n<p>車尾尺寸：22 X 23 X 19 cm<br />\r\n材質：100%聚酯纖維</p>\r\n\r\n<p>產地：中國大陸</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>車廂單賣只有在咖波屋及咖波三井店喔</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>照片因拍攝地點的關係有些微誤差，一切以商品實物為主</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>10個工作天內出貨</p>\r\n\r\n<p>宅配：每週一、四出貨，1-2工作天送達(週日不配送)。</p>\r\n\r\n<p>海外配送：每週二出貨，各地配送時間不同。</p>\r\n\r\n<p>(實際配送時間依物流配送情況為主)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>卡特島創意 保留以上活動內容修改之權利</p>\r\n', 1799, 1, '2020-11-10 06:30:56');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(1, 'capoo', 'capoo', '$2y$10$8EWvFsdnVprbo9QYwyjn6.oSf5rTIt31FA7RV6.kw6Dw5kJkwWOtG', 'capoo@gmail.com', '先生', '0912345678', '744', '台南市', '新市區', '咖波路號');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);

--
-- 資料表索引 `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號', AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
