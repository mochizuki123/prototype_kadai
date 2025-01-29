-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2025 年 1 月 29 日 18:12
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
-- データベース: `ym-deploy_prototype_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `speech_file`
--

CREATE TABLE `speech_file` (
  `file_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `content_file` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `speech_text`
--

CREATE TABLE `speech_text` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `text_id` int DEFAULT NULL,
  `speech_text` text COLLATE utf8mb4_general_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `speech_text`
--

INSERT INTO `speech_text` (`id`, `user_id`, `text_id`, `speech_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, 0, NULL, 'test\r\n', '2025-01-29 18:04:58', '2025-01-29 18:04:58', '2025-01-29 18:04:58');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `login_pw` int NOT NULL,
  `user_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `user_email` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `kanri_flg` int NOT NULL,
  `life_flg` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`user_id`, `login_pw`, `user_name`, `user_email`, `kanri_flg`, `life_flg`) VALUES
(0, 0, 'mochizuki', '', 1, 0),
(0, 0, 'testさん', '', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `speech_text`
--
ALTER TABLE `speech_text`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `speech_text`
--
ALTER TABLE `speech_text`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
