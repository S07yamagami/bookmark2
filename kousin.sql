-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2024 年 12 月 31 日 17:05
-- サーバのバージョン： 8.0.40
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `tealtapir84_gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kousin`
--

CREATE TABLE `kousin` (
  `id` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `kousin`
--

INSERT INTO `kousin` (`id`, `name`, `url`, `content`, `date`) VALUES
(7, '東京　２', 'url', 'jyanbo', '2024-12-27 21:12:09'),
(9, 'ズバリ東京', 'mmm', '名作', '2024-12-27 21:30:01'),
(10, '富良野', 'hurano', '明後日', '2024-12-30 21:13:29'),
(13, '陰翳礼讃', 'u', '谷崎潤一郎', '2024-12-31 16:48:37');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `kousin`
--
ALTER TABLE `kousin`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `kousin`
--
ALTER TABLE `kousin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
