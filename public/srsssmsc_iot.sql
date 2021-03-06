-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Nov 2021 pada 08.35
-- Versi server: 5.7.36-log
-- Versi PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srsssmsc_iot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `weather_station`
--

CREATE TABLE `weather_station` (
  `id` int(11) NOT NULL,
  `idws` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ws` float DEFAULT NULL,
  `wd` int(3) DEFAULT NULL,
  `wc` text,
  `t` float DEFAULT NULL,
  `h` float DEFAULT NULL,
  `r` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `weather_station`
--

INSERT INTO `weather_station` (`id`, `idws`, `datetime`, `ws`, `wd`, `wc`, `t`, `h`, `r`) VALUES
(2496, 0, '2021-10-22 10:18:19', 66077.7, 89, 'E', 29.8, 62.3, 0),
(2497, 0, '2021-10-22 12:03:30', 66167.5, 75, 'E', 31.8, 54.4, 0),
(2498, 0, '2021-10-22 12:33:33', 66179.1, 88, 'E', 31, 55, 0),
(2499, 0, '2021-10-22 12:48:35', 66296.4, 87, 'E', 31.4, 56.1, 0),
(2500, 0, '2021-10-22 13:03:36', 66413.8, 70, 'E', 32, 50.8, 0),
(2501, 0, '2021-10-22 13:18:37', 66360.2, 76, 'E', 32.8, 49.6, 0),
(2502, 0, '2021-10-22 14:18:43', 66195, 109, 'E', 26.2, 73.9, 2),
(2503, 0, '2021-10-22 15:03:47', 66176.2, 108, 'E', 25.2, 84, 7),
(2504, 0, '2021-10-22 16:33:56', 66135.7, 104, 'E', 24.9, 87.5, 8),
(2505, 0, '2021-10-23 07:50:20', 64913.2, 101, 'E', 0, 0, 0),
(2506, 0, '2021-10-23 08:20:23', 65822.8, 96, 'E', 0, 0, 0),
(2507, 0, '2021-10-23 08:35:24', 65846, 82, 'E', 0, 0, 0),
(2508, 0, '2021-10-23 09:05:27', 65770.7, 91, 'E', 0, 0, 0),
(2509, 0, '2021-10-23 12:05:45', 65523, 86, 'E', 0, 0, 0),
(2510, 0, '2021-10-23 12:50:49', 65764.9, 79, 'E', 0, 0, 0),
(2511, 0, '2021-10-23 13:35:54', 65311.5, 66, 'NE', 0, 0, 0),
(2512, 0, '2021-10-23 13:50:56', 65760.5, 73, 'E', 0, 0, 0),
(2513, 0, '2021-10-23 14:20:58', 65673.6, 64, 'NE', 0, 0, 0),
(2514, 0, '2021-10-23 14:51:01', 65733, 73, 'E', 0, 0, 0),
(2515, 0, '2021-10-23 15:21:04', 65512.9, 74, 'E', 0, 0, 0),
(2516, 0, '2021-10-24 19:53:47', 0, 106, 'E', 0, 0, 0),
(2517, 0, '2021-10-24 20:53:53', 0, 96, 'E', 0, 0, 0),
(2518, 0, '2021-10-24 21:08:54', 0, 103, 'E', 0, 0, 0),
(2519, 0, '2000-01-01 00:15:01', 0, 17, 'N', 31.9, 52.4, 0),
(2490, 0, '2021-10-21 11:37:36', 65804, 79, 'E', 32.6, 42.6, 0),
(2491, 0, '2021-10-21 11:52:37', 66196.5, 77, 'E', 32, 47.1, 0),
(2492, 0, '2021-10-21 16:31:41', 66173.3, 109, 'E', 25.5, 78.3, 0),
(2493, 0, '2021-10-22 08:03:06', 66082.1, 91, 'E', 26.4, 73.2, 2),
(2494, 0, '2021-10-22 08:48:11', 66028.5, 91, 'E', 28.3, 64.9, 0),
(2495, 0, '2021-10-22 09:33:15', 66098, 77, 'E', 29.3, 60.2, 3),
(2484, 0, '2021-10-21 09:22:22', 65776.5, 68, 'E', 31.3, 48.6, 0),
(2485, 0, '2021-10-21 09:52:25', 65727.2, 73, 'E', 30.9, 51.8, 0),
(2520, 0, '2000-01-01 00:30:03', 0, 29, 'NE', 32.2, 52.5, 0),
(2487, 0, '2021-10-21 09:37:24', 65698.2, 80, 'E', 32.6, 42.9, 0),
(2488, 0, '2021-10-21 11:07:33', 65717.1, 73, 'E', 32.9, 45.1, 0),
(2489, 0, '2021-10-21 11:22:34', 65641.8, 78, 'E', 32.9, 43.7, 0),
(2521, 0, '2000-01-01 03:15:19', 4.35, 65, 'NE', 33.3, 49.7, 0),
(2522, 0, '2000-01-01 04:15:25', 0, 69, 'E', 30.4, 55.6, 0),
(2523, 0, '2000-01-01 04:30:26', 0, 1, 'N', 31, 56.4, 0),
(2524, 0, '2000-01-01 04:45:28', 0, 15, 'N', 30.6, 55, 0),
(2525, 0, '2000-01-01 05:00:29', 0, 0, 'N', 30, 56.4, 0),
(2526, 0, '2000-01-01 05:30:32', 0, 0, 'N', 29.3, 61.7, 0),
(2527, 0, '2000-01-02 01:02:21', 0, 62, 'NE', 30.8, 57, 0),
(2528, 0, '2000-01-02 01:17:23', 0, 49, 'NE', 30.3, 56.8, 0),
(2529, 0, '2000-01-02 01:32:25', 0, 23, 'NE', 31, 55.2, 0),
(2530, 0, '2000-01-02 01:47:26', 0, 1, 'N', 31.6, 55.9, 0),
(2531, 0, '2000-01-02 02:02:27', 0, 30, 'NE', 30.7, 54.9, 0),
(2532, 0, '2000-01-02 03:32:36', 53.59, 51, 'NE', 30, 57.9, 0),
(2533, 0, '2000-01-02 03:47:38', 459.14, 65, 'NE', 30.5, 58.9, 0),
(2534, 0, '2000-01-02 05:47:49', 0, 36, 'NE', 29.6, 64.2, 0),
(2535, 0, '2000-01-02 06:02:51', 4.35, 0, 'N', 29.2, 69.5, 0),
(2536, 0, '2000-01-02 20:32:49', 0, 67, 'E', 28.5, 70.8, 0),
(2537, 0, '2000-01-02 20:47:50', 2.9, 7, 'N', 29.4, 68.2, 0),
(2538, 0, '2000-01-02 23:02:48', 1.45, 6, 'N', 30.3, 58, 0),
(2539, 0, '2000-01-02 23:17:50', 7.24, 67, 'E', 28.7, 67.9, 1),
(2540, 0, '2000-01-02 23:32:52', 204.23, 29, 'NE', 30.7, 58.6, 0),
(2541, 0, '2000-01-03 01:18:02', 0, 45, 'NE', 30.5, 70.4, 2),
(2542, 0, '2000-01-03 01:33:03', 0, 14, 'N', 31.1, 66, 0),
(2543, 0, '2000-01-04 00:05:10', 0, 70, 'E', 30.9, 59, 0),
(2544, 0, '2000-01-05 00:37:27', 0, 10, 'N', 0, 0, 0),
(2545, 0, '2000-01-05 00:52:29', 0, 65, 'NE', 0, 0, 0),
(2546, 0, '2000-01-05 01:37:33', 0, 3, 'N', 0, 0, 0),
(2547, 0, '2000-01-05 01:52:35', 0, 14, 'N', 0, 0, 0),
(2548, 0, '2000-01-05 02:22:37', 0, 67, 'E', 0, 0, 0),
(2549, 0, '2000-01-05 02:37:39', 0, 40, 'NE', 0, 0, 0),
(2550, 0, '2000-01-06 01:24:48', 4.35, 19, 'N', 0, 0, 0),
(2551, 0, '2000-01-06 01:54:51', 0, 57, 'NE', 0, 0, 0),
(2552, 0, '2000-01-06 02:09:53', 0, 60, 'NE', 0, 0, 0),
(2553, 0, '2000-01-06 02:24:54', 0, 51, 'NE', 0, 0, 0),
(2554, 0, '2000-01-06 02:39:56', 0, 27, 'NE', 0, 0, 0),
(2555, 0, '2000-01-06 02:54:57', 0, 54, 'NE', 0, 0, 0),
(2556, 0, '2000-01-06 03:40:02', 0, 65, 'NE', 0, 0, 0),
(2557, 0, '2000-01-06 04:25:06', 1.45, 29, 'NE', 0, 0, 0),
(2558, 0, '2000-01-08 00:29:15', 2.9, 1, 'N', 0, 0, 0),
(2559, 0, '2000-01-08 01:14:19', 0, 42, 'NE', 0, 0, 0),
(2560, 0, '2000-01-08 01:29:21', 0, 74, 'E', 0, 0, 0),
(2561, 0, '2000-01-08 01:59:23', 0, 58, 'NE', 0, 0, 0),
(2562, 0, '2000-01-08 02:14:25', 0, 9, 'N', 0, 0, 0),
(2563, 0, '2000-01-08 02:59:29', 0, 23, 'NE', 0, 0, 0),
(2564, 0, '2000-01-08 03:14:31', 1.45, 68, 'E', 0, 0, 0),
(2565, 0, '2000-01-08 03:59:35', 0, 11, 'N', 0, 0, 0),
(2566, 0, '2000-01-08 04:59:41', 4.35, 7, 'N', 0, 0, 0),
(2567, 0, '2000-01-08 22:50:02', 0, 27, 'NE', 30.4, 59.1, 0),
(2568, 0, '2021-11-02 11:05:25', 0, 124, 'SE', 0, 0, 0),
(2569, 0, '2021-11-02 11:05:53', 0, 111, 'E', 0, 0, 0),
(2570, 0, '2021-11-02 11:06:23', 0, 108, 'E', 0, 0, 0),
(2571, 0, '2021-11-02 11:07:12', 0, 14, 'N', 0, 0, 0),
(2572, 0, '2021-11-02 11:07:42', 0, 44, 'NE', 0, 0, 0),
(2573, 0, '2021-11-02 11:08:12', 0, 72, 'E', 0, 0, 0),
(2574, 0, '2021-11-02 11:08:42', 0, 72, 'E', 0, 0, 0),
(2575, 0, '2021-11-02 11:09:12', 0, 28, 'NE', 0, 0, 0),
(2576, 0, '2021-11-02 11:09:43', 0, 36, 'NE', 0, 0, 0),
(2577, 0, '2021-11-02 11:10:13', 0, 66, 'NE', 0, 0, 0),
(2578, 0, '2021-11-02 11:11:13', 0, 40, 'NE', 0, 0, 0),
(2579, 0, '2021-11-02 11:11:43', 0, 71, 'E', 0, 0, 0),
(2580, 0, '2021-11-02 11:14:31', 0, 107, 'E', 0, 0, 0),
(2581, 0, '2021-11-02 11:15:01', 0, 95, 'E', 0, 0, 0),
(2582, 0, '2021-11-02 11:15:32', 0, 102, 'E', 0, 0, 0),
(2583, 0, '2021-11-02 11:16:02', 0, 139, 'SE', 0, 0, 0),
(2584, 0, '2021-11-02 11:16:32', 0, 94, 'E', 0, 0, 0),
(2585, 0, '2021-11-02 11:23:04', 0, 92, 'E', 31.4, 56, 0),
(2586, 0, '2021-11-02 11:24:29', 1.45, 73, 'E', 31.5, 54.9, 0),
(2587, 0, '2021-11-02 11:24:59', 0, 35, 'NE', 31.5, 56.4, 0),
(2588, 0, '2021-11-02 11:25:29', 0, 67, 'E', 31.6, 56.6, 0),
(2589, 0, '2021-11-02 11:26:00', 0, 71, 'E', 31.6, 55.2, 0),
(2590, 0, '2021-11-02 11:27:00', 0, 0, 'N', 31.5, 52.3, 0),
(2591, 0, '2021-11-02 11:28:15', 0, 153, 'SE', 31.6, 53.7, 0),
(2592, 0, '2021-11-02 11:28:45', 0, 96, 'E', 31.7, 52.4, 0),
(2593, 0, '2021-11-02 11:29:15', 0, 135, 'SE', 31.7, 52.8, 0),
(2594, 0, '2021-11-02 11:29:46', 0, 101, 'E', 31.7, 52.6, 0),
(2595, 0, '2021-11-02 11:30:16', 0, 99, 'E', 31.4, 53.8, 0),
(2596, 0, '2021-11-02 11:30:46', 0, 97, 'E', 31.5, 57.1, 0),
(2597, 0, '2021-11-02 11:32:05', 0, 31, 'NE', 31.6, 53.6, 0),
(2598, 0, '2021-11-02 11:32:35', 0, 10, 'N', 31.7, 54.8, 0),
(2599, 0, '2021-11-02 11:33:05', 0, 29, 'NE', 31.7, 54.3, 0),
(2600, 0, '2021-11-02 11:48:02', 2.9, 72, 'E', 31.7, 49.7, 0),
(2601, 0, '2021-11-02 11:48:32', 0, 18, 'N', 31.8, 50.4, 0),
(2602, 0, '2021-11-02 11:49:02', 0, 51, 'NE', 31.8, 53.3, 0),
(2603, 0, '2021-11-02 11:49:32', 0, 20, 'N', 31.9, 50.1, 0),
(2604, 0, '2021-11-02 11:50:02', 0, 72, 'E', 32, 50.2, 0),
(2605, 0, '2021-11-02 11:50:32', 0, 1, 'N', 32, 50.8, 0),
(2606, 0, '2021-11-02 11:51:02', 0, 51, 'NE', 32.1, 52.1, 0),
(2607, 0, '2021-11-02 11:51:32', 0, 10, 'N', 32.1, 51.8, 0),
(2608, 0, '2021-11-02 11:52:32', 0, 0, 'N', 32.1, 59, 0),
(2609, 0, '2021-11-02 11:53:02', 0, 8, 'N', 32, 54.5, 0),
(2610, 0, '2021-11-02 11:53:33', 0, 50, 'NE', 31.9, 55, 0),
(2611, 0, '2021-11-02 11:54:02', 0, 72, 'E', 31.9, 56.1, 0),
(2612, 0, '2021-11-02 11:54:33', 0, 27, 'NE', 31.8, 55.8, 0),
(2613, 0, '2021-11-02 11:55:02', 0, 56, 'NE', 31.8, 54.2, 0),
(2614, 0, '2021-11-02 11:55:33', 0, 18, 'N', 31.8, 55.1, 0),
(2615, 0, '2021-11-02 11:56:02', 0, 0, 'N', 31.8, 57.4, 0),
(2616, 0, '2021-11-02 14:14:42', 2223.3, 2, 'N', 23.7, 91.1, 6),
(2617, 0, '2021-11-02 14:15:42', 2223.3, 13, 'N', 23.6, 91.2, 3),
(2618, 0, '2021-11-02 14:16:43', 2216.06, 1, 'N', 23.6, 91.4, 5),
(2619, 0, '2021-11-02 14:17:12', 2174.06, 19, 'N', 23.6, 91.4, 2),
(2620, 0, '2021-11-02 14:18:12', 2179.85, 14, 'N', 23.6, 91.6, 3),
(2621, 0, '2021-11-02 14:18:43', 2214.61, 55, 'NE', 23.6, 91.6, 1),
(2622, 0, '2021-11-02 14:19:43', 2216.06, 0, 'N', 23.6, 91.6, 2),
(2623, 0, '2021-11-02 14:20:43', 2216.06, 12, 'N', 23.6, 91.6, 3),
(2624, 0, '2021-11-02 14:21:43', 2213.16, 28, 'NE', 23.7, 91.7, 2),
(2625, 0, '2021-11-02 14:22:13', 2174.06, 21, 'N', 23.7, 91.6, 2),
(2626, 0, '2021-11-02 14:22:43', 2211.72, 13, 'N', 23.7, 91.6, 2),
(2627, 0, '2021-11-02 14:23:43', 2207.37, 10, 'N', 23.7, 91.6, 1),
(2628, 0, '2021-11-02 14:24:43', 2119.02, 46, 'NE', 23.7, 91.5, 1),
(2629, 0, '2021-11-02 14:25:43', 1549.79, 12, 'N', 23.7, 91.4, 1),
(2630, 0, '2021-11-02 14:27:13', 650.33, 1, 'N', 23.7, 91.5, 2),
(2631, 0, '2021-11-02 14:28:14', 163.67, 64, 'NE', 23.8, 91.6, 1),
(2632, 0, '2021-11-02 14:29:14', 23.17, 9, 'N', 23.8, 91.7, 1),
(2633, 0, '2021-11-02 14:30:14', 7.24, 42, 'NE', 23.8, 91.6, 1),
(2634, 0, '2021-11-02 14:31:14', 2.9, 18, 'N', 23.8, 91.6, 0),
(2635, 0, '2021-11-02 14:32:44', 18.83, 56, 'NE', 23.8, 91.5, 0),
(2636, 0, '2021-11-02 14:33:44', 1.45, 31, 'NE', 23.8, 91.6, 1),
(2637, 0, '2021-11-02 14:34:44', 0, 67, 'E', 23.8, 91.8, 0),
(2638, 0, '2021-11-02 14:35:44', 0, 42, 'NE', 23.9, 92.1, 0),
(2639, 0, '2021-11-02 14:39:15', 4.35, 50, 'NE', 23.8, 92, 0),
(2640, 0, '2021-11-02 15:15:48', 0, 10, 'N', 23.5, 92.1, 0),
(2641, 0, '2021-11-02 15:16:48', 0, 51, 'NE', 23.5, 92.1, 0),
(2642, 0, '2021-11-02 15:17:48', 0, 8, 'N', 23.6, 92.1, 0),
(2643, 0, '2021-11-02 15:19:48', 0, 74, 'E', 23.6, 92.1, 0),
(2644, 0, '2021-11-02 15:20:18', 0, 35, 'NE', 23.5, 92.1, 1),
(2645, 0, '2021-11-02 15:21:18', 0, 7, 'N', 23.5, 92, 0),
(2646, 0, '2021-11-02 15:22:18', 0, 17, 'N', 23.5, 92.1, 0),
(2647, 0, '2021-11-02 15:22:49', 1.45, 58, 'NE', 23.5, 92.1, 0),
(2648, 0, '2021-11-02 15:23:18', 0, 1, 'N', 23.5, 92, 0),
(2649, 0, '2021-11-02 15:24:19', 0, 49, 'NE', 23.5, 92.1, 0),
(2650, 0, '2021-11-02 15:25:19', 0, 34, 'NE', 23.5, 92.1, 0),
(2651, 0, '2021-11-02 15:26:19', 0, 3, 'N', 23.5, 92.2, 0),
(2652, 0, '2021-11-02 15:26:49', 0, 70, 'E', 23.5, 92.2, 0),
(2653, 0, '2021-11-02 15:27:19', 0, 3, 'N', 23.5, 92.2, 0),
(2654, 0, '2021-11-02 15:27:49', 0, 39, 'NE', 23.5, 92.1, 0),
(2655, 0, '2021-11-02 15:28:19', 0, 28, 'NE', 23.5, 92, 0),
(2656, 0, '2021-11-02 15:28:49', 0, 17, 'N', 23.5, 92.1, 0),
(2657, 0, '2021-11-02 15:29:19', 0, 2, 'N', 23.5, 92.1, 0),
(2658, 0, '2021-11-02 15:29:49', 0, 61, 'NE', 23.5, 92.1, 0),
(2659, 0, '2021-11-02 15:30:19', 0, 37, 'NE', 23.5, 92.1, 0),
(2660, 0, '2021-11-02 15:30:49', 0, 7, 'N', 23.5, 92.1, 1),
(2661, 0, '2021-11-02 15:31:19', 0, 60, 'NE', 23.5, 92.1, 0),
(2662, 0, '2021-11-02 15:31:49', 0, 16, 'N', 23.5, 92.2, 0),
(2663, 0, '2021-11-02 15:32:19', 0, 47, 'NE', 23.5, 92.2, 0),
(2664, 0, '2021-11-02 15:32:49', 0, 22, 'NE', 23.5, 92.2, 0),
(2665, 0, '2021-11-02 15:33:19', 0, 19, 'N', 23.5, 92.2, 0),
(2666, 0, '2021-11-02 15:33:50', 0, 29, 'NE', 23.5, 92.1, 0),
(2667, 0, '2021-11-02 15:34:19', 0, 49, 'NE', 23.5, 92.2, 0),
(2668, 0, '2021-11-02 15:34:50', 0, 24, 'NE', 23.5, 92.1, 0),
(2669, 0, '2021-11-02 15:35:20', 0, 59, 'NE', 23.5, 92.2, 0),
(2670, 0, '2021-11-02 15:35:50', 0, 11, 'N', 23.5, 92.3, 0),
(2671, 0, '2021-11-02 15:36:20', 0, 60, 'NE', 23.5, 92.2, 1),
(2672, 0, '2021-11-02 15:36:50', 0, 61, 'NE', 23.5, 92.2, 0),
(2673, 0, '2021-11-02 15:37:20', 0, 48, 'NE', 23.5, 92.2, 0),
(2674, 0, '2021-11-02 15:38:20', 0, 28, 'NE', 23.5, 92.2, 0),
(2675, 0, '2021-11-02 15:38:50', 0, 39, 'NE', 23.5, 92.3, 0),
(2676, 0, '2021-11-02 15:39:20', 0, 14, 'N', 23.5, 92.2, 0),
(2677, 0, '2021-11-02 15:39:50', 0, 10, 'N', 23.5, 92.2, 0),
(2678, 0, '2021-11-02 15:40:20', 0, 18, 'N', 23.5, 92.1, 0),
(2679, 0, '2021-11-02 15:41:20', 0, 20, 'N', 23.5, 92.2, 0),
(2680, 0, '2021-11-02 15:41:50', 0, 15, 'N', 23.4, 92.1, 1),
(2681, 0, '2021-11-02 15:42:20', 0, 27, 'NE', 23.5, 92.2, 0),
(2682, 0, '2021-11-02 15:43:20', 0, 40, 'NE', 23.4, 92.1, 0),
(2683, 0, '2021-11-02 15:44:20', 1.45, 4, 'N', 23.5, 92.2, 0),
(2684, 0, '2021-11-02 15:44:51', 0, 14, 'N', 23.4, 92.2, 0),
(2685, 0, '2021-11-02 15:45:20', 0, 54, 'NE', 23.4, 92.2, 0),
(2686, 0, '2021-11-02 15:46:51', 0, 10, 'N', 23.5, 92.2, 0),
(2687, 0, '2021-11-02 15:47:51', 0, 31, 'NE', 23.5, 92.3, 0),
(2688, 0, '2021-11-02 15:48:21', 0, 10, 'N', 23.5, 92.3, 1),
(2689, 0, '2021-11-02 15:48:51', 0, 48, 'NE', 23.5, 92.1, 0),
(2690, 0, '2021-11-02 15:49:21', 0, 46, 'NE', 23.4, 92.1, 0),
(2691, 0, '2021-11-02 15:49:51', 0, 44, 'NE', 23.5, 92.2, 0),
(2692, 0, '2021-11-02 15:50:21', 0, 34, 'NE', 23.4, 92.2, 0),
(2693, 0, '2021-11-02 15:50:51', 0, 55, 'NE', 23.5, 92.2, 0),
(2694, 0, '2021-11-02 15:51:21', 0, 19, 'N', 23.5, 92.3, 0),
(2695, 0, '2021-11-02 15:51:51', 0, 48, 'NE', 23.5, 92.3, 0),
(2696, 0, '2021-11-02 15:52:21', 0, 23, 'NE', 23.5, 92.3, 0),
(2697, 0, '2021-11-02 15:52:51', 0, 28, 'NE', 23.5, 92.3, 0),
(2698, 0, '2021-11-02 15:53:21', 0, 27, 'NE', 23.5, 92.3, 0),
(2699, 0, '2021-11-02 15:53:51', 0, 39, 'NE', 23.5, 92.2, 0),
(2700, 0, '2021-11-02 15:54:21', 0, 3, 'N', 23.5, 92.1, 0),
(2701, 0, '2021-11-02 15:54:51', 0, 37, 'NE', 23.4, 92.1, 0),
(2702, 0, '2021-11-02 15:55:21', 0, 15, 'N', 23.5, 92.1, 0),
(2703, 0, '2021-11-02 15:55:51', 0, 24, 'NE', 23.4, 92.1, 0),
(2704, 0, '2021-11-02 15:56:22', 0, 13, 'N', 23.5, 92.1, 0),
(2705, 0, '2021-11-02 15:56:51', 0, 58, 'NE', 23.5, 92.2, 0),
(2706, 0, '2021-11-02 15:57:22', 0, 42, 'NE', 23.4, 92.2, 0),
(2707, 0, '2021-11-02 15:57:51', 0, 37, 'NE', 23.5, 92.2, 0),
(2708, 0, '2021-11-02 15:58:22', 0, 16, 'N', 23.4, 92.2, 0),
(2709, 0, '2021-11-02 15:58:51', 0, 27, 'NE', 23.4, 92.1, 0),
(2710, 0, '2021-11-02 15:59:22', 0, 19, 'N', 23.5, 92.2, 1),
(2711, 0, '2021-11-02 15:59:52', 0, 16, 'N', 23.5, 92.3, 0),
(2712, 0, '2021-11-02 16:00:22', 0, 38, 'NE', 23.5, 92.3, 0),
(2713, 0, '2021-11-02 16:00:52', 0, 20, 'N', 23.5, 92.2, 0),
(2714, 0, '2021-11-02 16:01:22', 0, 17, 'N', 23.5, 92.2, 0),
(2715, 0, '2021-11-02 16:01:52', 0, 39, 'NE', 23.5, 92.2, 0),
(2716, 0, '2021-11-02 16:02:22', 0, 51, 'NE', 23.5, 92.2, 0),
(2717, 0, '2021-11-02 16:02:52', 0, 20, 'N', 23.5, 92.2, 0),
(2718, 0, '2021-11-02 16:03:22', 0, 19, 'N', 23.5, 92.2, 0),
(2719, 0, '2021-11-02 16:03:52', 0, 43, 'NE', 23.5, 92.1, 0),
(2720, 0, '2021-11-02 16:04:22', 0, 48, 'NE', 23.5, 92.1, 0),
(2721, 0, '2021-11-02 16:04:52', 0, 48, 'NE', 23.5, 92.2, 0),
(2722, 0, '2021-11-02 16:05:22', 0, 31, 'NE', 23.5, 92.2, 0),
(2723, 0, '2021-11-02 16:05:52', 0, 32, 'NE', 23.5, 92.2, 0),
(2724, 0, '2021-11-02 16:06:22', 0, 78, 'E', 23.4, 92.1, 0),
(2725, 0, '2021-11-02 16:06:53', 0, 18, 'N', 23.5, 92, 0),
(2726, 0, '2021-11-02 16:07:22', 0, 18, 'N', 23.4, 92, 0),
(2727, 0, '2021-11-02 16:07:53', 0, 24, 'NE', 23.5, 92, 0),
(2728, 0, '2021-11-02 16:08:22', 0, 61, 'NE', 23.5, 92, 0),
(2729, 0, '2021-11-02 16:08:53', 0, 23, 'NE', 23.5, 92, 0),
(2730, 0, '2021-11-02 16:09:22', 0, 1, 'N', 23.5, 92, 1),
(2731, 0, '2021-11-02 16:09:53', 0, 77, 'E', 23.5, 92, 0),
(2732, 0, '2021-11-02 16:10:53', 0, 36, 'NE', 23.6, 92.1, 0),
(2733, 0, '2021-11-02 16:11:23', 0, 9, 'N', 23.5, 92, 0),
(2734, 0, '2021-11-02 16:11:53', 0, 58, 'NE', 23.5, 92, 0),
(2735, 0, '2021-11-02 16:12:23', 0, 33, 'NE', 23.5, 92, 0),
(2736, 0, '2021-11-02 16:12:53', 0, 34, 'NE', 23.5, 91.5, 0),
(2737, 0, '2021-11-02 16:13:23', 0, 68, 'E', 23.5, 91.5, 0),
(2738, 0, '2021-11-02 16:15:53', 0, 42, 'NE', 23.5, 91.4, 0),
(2739, 0, '2021-11-02 16:16:53', 0, 44, 'NE', 23.5, 91.7, 0),
(2740, 0, '2021-11-02 16:17:23', 0, 57, 'NE', 23.5, 91.6, 0),
(2741, 0, '2021-11-02 16:17:53', 0, 61, 'NE', 23.5, 91.5, 0),
(2742, 0, '2021-11-02 16:18:53', 0, 17, 'N', 23.5, 91.6, 0),
(2743, 0, '2021-11-02 16:19:24', 0, 7, 'N', 23.5, 91.5, 0),
(2744, 0, '2021-11-02 16:19:53', 0, 28, 'NE', 23.5, 92.1, 0),
(2745, 0, '2021-11-02 16:20:24', 0, 24, 'NE', 23.5, 92.1, 0),
(2746, 0, '2021-11-02 16:20:53', 0, 12, 'N', 23.5, 92.1, 0),
(2747, 0, '2021-11-02 16:21:24', 0, 23, 'NE', 23.5, 92.1, 0),
(2748, 0, '2021-11-02 16:21:54', 0, 56, 'NE', 23.5, 92, 0),
(2749, 0, '2021-11-02 16:22:24', 0, 56, 'NE', 23.4, 92, 0),
(2750, 0, '2021-11-02 16:22:54', 0, 33, 'NE', 23.5, 92, 0),
(2751, 0, '2021-11-02 16:23:24', 0, 18, 'N', 23.5, 92.1, 0),
(2752, 0, '2021-11-02 16:23:54', 0, 12, 'N', 23.5, 92.1, 0),
(2753, 0, '2021-11-02 16:24:24', 0, 67, 'E', 23.5, 92, 0),
(2754, 0, '2021-11-02 16:24:54', 0, 59, 'NE', 23.5, 92.1, 0),
(2755, 0, '2021-11-02 16:25:24', 0, 47, 'NE', 23.5, 92.1, 0),
(2756, 0, '2021-11-02 16:25:54', 0, 85, 'E', 23.5, 92.1, 0),
(2757, 0, '2021-11-02 16:26:24', 0, 71, 'E', 23.5, 92.2, 0),
(2758, 0, '2021-11-02 16:26:54', 0, 67, 'E', 23.5, 92.1, 0),
(2759, 0, '2021-11-02 16:27:24', 0, 47, 'NE', 23.5, 92.1, 0),
(2760, 0, '2021-11-02 16:27:54', 0, 74, 'E', 23.5, 92.1, 0),
(2761, 0, '2021-11-02 16:28:24', 0, 37, 'NE', 23.6, 92.2, 0),
(2762, 0, '2021-11-02 16:28:54', 0, 73, 'E', 23.5, 92.1, 0),
(2763, 0, '2021-11-02 16:29:54', 0, 30, 'NE', 23.5, 92.1, 0),
(2764, 0, '2021-11-02 16:30:54', 0, 53, 'NE', 23.6, 92.1, 0),
(2765, 0, '2021-11-02 16:31:54', 0, 35, 'NE', 23.6, 92.2, 0),
(2766, 0, '2021-11-02 16:32:55', 0, 58, 'NE', 23.6, 92, 0),
(2767, 0, '2021-11-02 16:33:55', 0, 88, 'E', 23.6, 91.6, 0),
(2768, 0, '2021-11-02 16:34:55', 0, 42, 'NE', 23.5, 91.6, 0),
(2769, 0, '2021-11-02 16:35:55', 0, 64, 'NE', 23.5, 91.5, 0),
(2770, 0, '2021-11-02 16:36:55', 0, 20, 'N', 23.5, 91.6, 0),
(2771, 0, '2021-11-02 16:37:55', 0, 15, 'N', 23.5, 91.7, 0),
(2772, 0, '2021-11-02 16:38:55', 0, 36, 'NE', 23.5, 91.7, 0),
(2773, 0, '2021-11-02 16:39:55', 0, 60, 'NE', 23.5, 91.6, 0),
(2774, 0, '2021-11-02 16:41:25', 0, 48, 'NE', 23.5, 91.8, 0),
(2775, 0, '2021-11-02 16:42:25', 0, 18, 'N', 23.6, 91.7, 0),
(2776, 0, '2021-11-02 16:43:25', 0, 49, 'NE', 23.6, 91.8, 0),
(2777, 0, '2021-11-02 16:44:56', 0, 54, 'NE', 23.6, 91.8, 0),
(2778, 0, '2021-11-02 16:45:56', 0, 50, 'NE', 23.6, 91.7, 0),
(2779, 0, '2021-11-02 16:46:56', 0, 85, 'E', 23.6, 91.7, 0),
(2780, 0, '2021-11-02 16:47:56', 0, 64, 'NE', 23.5, 91.6, 0),
(2781, 0, '2021-11-02 16:49:26', 0, 55, 'NE', 23.5, 92.2, 0),
(2782, 0, '2021-11-02 16:51:27', 0, 56, 'NE', 23.6, 92.2, 0),
(2783, 0, '2021-11-02 17:28:30', 0, 62, 'NE', 23.4, 91.8, 0),
(2784, 0, '2021-11-02 17:29:30', 0, 24, 'NE', 23.3, 91.8, 0),
(2785, 0, '2021-11-02 17:30:30', 0, 20, 'N', 23.3, 91.8, 0),
(2786, 0, '2021-11-02 17:31:30', 0, 58, 'NE', 23.3, 91.8, 0),
(2787, 0, '2021-11-02 17:32:30', 0, 25, 'NE', 23.3, 92.4, 0),
(2788, 0, '2021-11-02 17:33:30', 0, 32, 'NE', 23.3, 92.4, 0),
(2789, 0, '2021-11-02 17:34:30', 0, 61, 'NE', 23.3, 92.4, 0),
(2790, 0, '2021-11-02 17:35:00', 0, 43, 'NE', 23.3, 92.4, 0),
(2791, 0, '2021-11-02 17:35:30', 0, 58, 'NE', 23.3, 92.4, 0),
(2792, 0, '2021-11-02 17:36:00', 0, 56, 'NE', 23.3, 92.4, 0),
(2793, 0, '2021-11-02 17:36:31', 0, 72, 'E', 23.3, 92.4, 0),
(2794, 0, '2021-11-02 17:37:00', 0, 42, 'NE', 23.3, 92.4, 0),
(2795, 0, '2021-11-02 17:37:31', 0, 40, 'NE', 23.4, 92.5, 0),
(2796, 0, '2021-11-02 17:38:01', 0, 25, 'NE', 23.4, 92.5, 0),
(2797, 0, '2021-11-02 17:38:30', 0, 42, 'NE', 23.3, 92.4, 0),
(2798, 0, '2021-11-02 17:39:01', 0, 61, 'NE', 23.4, 92, 0),
(2799, 0, '2021-11-02 17:39:31', 0, 27, 'NE', 23.4, 92, 0),
(2800, 0, '2021-11-02 17:40:01', 0, 28, 'NE', 23.4, 92, 0),
(2801, 0, '2021-11-02 17:40:31', 0, 15, 'N', 23.4, 92, 0),
(2802, 0, '2021-11-02 17:41:01', 0, 57, 'NE', 23.4, 92, 0),
(2803, 0, '2021-11-02 17:41:31', 0, 61, 'NE', 23.4, 92, 0),
(2804, 0, '2021-11-02 17:42:01', 0, 16, 'N', 23.5, 92.1, 0),
(2805, 0, '2021-11-02 17:42:31', 0, 52, 'NE', 23.5, 92, 0),
(2806, 0, '2021-11-02 17:43:01', 0, 43, 'NE', 23.5, 92.1, 0),
(2807, 0, '2021-11-02 17:43:31', 0, 25, 'NE', 23.5, 92.1, 0),
(2808, 0, '2021-11-02 17:44:01', 0, 7, 'N', 23.5, 92.1, 0),
(2809, 0, '2021-11-02 17:44:31', 0, 34, 'NE', 23.4, 92, 0),
(2810, 0, '2021-11-02 17:45:01', 0, 59, 'NE', 23.4, 92.5, 0),
(2811, 0, '2021-11-02 17:45:31', 0, 91, 'E', 23.4, 92.6, 0),
(2812, 0, '2021-11-02 17:46:01', 0, 29, 'NE', 23.4, 92.6, 0),
(2813, 0, '2021-11-02 17:46:31', 0, 57, 'NE', 23.4, 92.6, 0),
(2814, 0, '2021-11-02 17:47:02', 0, 12, 'N', 23.5, 92.6, 0),
(2815, 0, '2021-11-02 17:47:31', 0, 28, 'NE', 23.5, 92.6, 0),
(2816, 0, '2021-11-02 17:48:02', 0, 42, 'NE', 23.5, 92.6, 0),
(2817, 0, '2021-11-02 17:48:32', 0, 36, 'NE', 23.4, 92.5, 0),
(2818, 0, '2021-11-02 17:49:02', 0, 85, 'E', 23.4, 92.6, 0),
(2819, 0, '2021-11-02 17:49:32', 0, 37, 'NE', 23.4, 92.6, 0),
(2820, 0, '2021-11-02 17:50:02', 0, 47, 'NE', 23.4, 92.5, 0),
(2821, 0, '2021-11-02 17:50:32', 0, 44, 'NE', 23.4, 92.6, 0),
(2822, 0, '2021-11-02 17:51:02', 0, 35, 'NE', 23.4, 92.5, 0),
(2823, 0, '2021-11-02 17:51:32', 0, 43, 'NE', 23.4, 92.5, 0),
(2824, 0, '2021-11-02 17:52:02', 0, 36, 'NE', 23.5, 92.6, 0),
(2825, 0, '2021-11-02 17:52:32', 0, 27, 'NE', 23.5, 92.6, 0),
(2826, 0, '2021-11-02 17:53:02', 0, 47, 'NE', 23.5, 92.6, 0),
(2827, 0, '2021-11-02 17:53:32', 0, 41, 'NE', 23.5, 92.6, 0),
(2828, 0, '2021-11-02 17:54:02', 0, 15, 'N', 23.4, 92.4, 0),
(2829, 0, '2021-11-02 17:54:32', 0, 16, 'N', 23.5, 92.6, 0),
(2830, 0, '2021-11-02 17:55:02', 0, 94, 'E', 23.5, 92.7, 0),
(2831, 0, '2021-11-02 17:55:32', 0, 31, 'NE', 23.5, 92.6, 0),
(2832, 0, '2021-11-02 17:56:02', 0, 19, 'N', 23.5, 92.6, 0),
(2833, 0, '2021-11-02 17:56:32', 0, 63, 'NE', 23.5, 92.6, 0),
(2834, 0, '2021-11-02 17:57:02', 0, 99, 'E', 23.5, 92.6, 0),
(2835, 0, '2021-11-02 17:57:32', 0, 56, 'NE', 23.5, 92.6, 0),
(2836, 0, '2021-11-02 17:58:02', 0, 70, 'E', 23.5, 92.6, 0),
(2837, 0, '2021-11-02 17:58:32', 0, 40, 'NE', 23.5, 92.6, 0),
(2838, 0, '2021-11-02 17:59:03', 0, 45, 'NE', 23.5, 92.6, 0),
(2839, 0, '2021-11-02 17:59:33', 0, 43, 'NE', 23.5, 92.7, 0),
(2840, 0, '2021-11-02 18:00:03', 0, 40, 'NE', 23.5, 92.6, 0),
(2841, 0, '2021-11-02 18:00:33', 0, 30, 'NE', 23.5, 92.6, 0),
(2842, 0, '2021-11-02 18:01:03', 0, 79, 'E', 23.5, 92.7, 0),
(2843, 0, '2021-11-02 18:01:33', 0, 28, 'NE', 23.5, 92.6, 0),
(2844, 0, '2021-11-02 18:02:03', 0, 48, 'NE', 23.5, 92.7, 0),
(2845, 0, '2021-11-02 18:02:33', 0, 56, 'NE', 23.5, 92.6, 0),
(2846, 0, '2021-11-02 18:03:03', 0, 38, 'NE', 23.5, 92.7, 0),
(2847, 0, '2021-11-02 18:03:33', 0, 30, 'NE', 23.5, 92.7, 0),
(2848, 0, '2021-11-02 18:04:03', 0, 14, 'N', 23.5, 92.7, 0),
(2849, 0, '2021-11-02 18:05:03', 0, 25, 'NE', 23.5, 92.7, 0),
(2850, 0, '2021-11-02 18:05:33', 0, 76, 'E', 23.5, 92.7, 0),
(2851, 0, '2021-11-02 18:06:03', 0, 46, 'NE', 23.5, 92.7, 0),
(2852, 0, '2021-11-02 18:06:33', 0, 83, 'E', 23.5, 92.7, 0),
(2853, 0, '2021-11-02 18:07:03', 0, 48, 'NE', 23.5, 92.7, 0),
(2854, 0, '2021-11-02 18:07:33', 0, 35, 'NE', 23.5, 92.8, 0),
(2855, 0, '2021-11-02 18:08:04', 0, 27, 'NE', 23.5, 92.8, 0),
(2856, 0, '2021-11-02 18:08:33', 0, 67, 'E', 23.5, 92.7, 0),
(2857, 0, '2021-11-02 18:09:04', 0, 53, 'NE', 23.4, 92.8, 0),
(2858, 0, '2021-11-02 18:09:33', 0, 48, 'NE', 23.5, 92.7, 0),
(2859, 0, '2021-11-02 18:10:04', 0, 68, 'E', 23.4, 92.7, 0),
(2860, 0, '2021-11-02 18:10:33', 0, 63, 'NE', 23.5, 92.8, 0),
(2861, 0, '2021-11-02 18:11:04', 0, 33, 'NE', 23.5, 92.7, 0),
(2862, 0, '2021-11-02 18:11:33', 0, 47, 'NE', 23.5, 92.8, 0),
(2863, 0, '2021-11-02 18:12:04', 0, 35, 'NE', 23.5, 92.8, 0),
(2864, 0, '2021-11-02 18:12:34', 0, 78, 'E', 23.5, 92.7, 0),
(2865, 0, '2021-11-02 18:13:04', 0, 28, 'NE', 23.4, 92.7, 0),
(2866, 0, '2021-11-02 18:13:34', 0, 21, 'N', 23.5, 92.8, 0),
(2867, 0, '2021-11-02 18:14:04', 0, 39, 'NE', 23.4, 92.7, 0),
(2868, 0, '2021-11-02 18:14:34', 0, 35, 'NE', 23.4, 92.7, 0),
(2869, 0, '2021-11-02 18:15:04', 0, 35, 'NE', 23.4, 92.7, 0),
(2870, 0, '2021-11-02 18:15:34', 0, 35, 'NE', 23.5, 92.8, 0),
(2871, 0, '2021-11-02 18:16:04', 0, 84, 'E', 23.4, 92.7, 0),
(2872, 0, '2021-11-02 18:16:34', 0, 63, 'NE', 23.4, 92.8, 0),
(2873, 0, '2021-11-02 18:17:04', 0, 40, 'NE', 23.5, 92.7, 0),
(2874, 0, '2021-11-02 18:17:34', 0, 85, 'E', 23.5, 92.8, 0),
(2875, 0, '2021-11-02 18:18:04', 0, 25, 'NE', 23.4, 92.8, 0),
(2876, 0, '2021-11-02 18:18:34', 0, 25, 'NE', 23.4, 92.8, 0),
(2877, 0, '2021-11-02 18:19:04', 0, 57, 'NE', 23.5, 92.8, 0),
(2878, 0, '2021-11-02 18:19:34', 0, 40, 'NE', 23.4, 92.8, 0),
(2879, 0, '2021-11-02 18:20:04', 0, 49, 'NE', 23.5, 92.8, 0),
(2880, 0, '2021-11-02 18:20:35', 0, 58, 'NE', 23.4, 92.8, 0),
(2881, 0, '2021-11-02 18:21:04', 0, 48, 'NE', 23.5, 92.8, 0),
(2882, 0, '2021-11-02 18:21:35', 0, 62, 'NE', 23.5, 92.9, 0),
(2883, 0, '2021-11-02 18:22:04', 0, 56, 'NE', 23.5, 92.9, 0),
(2884, 0, '2021-11-02 18:22:35', 0, 66, 'NE', 23.4, 92.8, 0),
(2885, 0, '2021-11-02 19:38:41', 0, 68, 'E', 23.6, 93.1, 0),
(2886, 0, '2021-11-02 19:39:42', 0, 99, 'E', 23.6, 93.1, 0),
(2887, 0, '2021-11-02 19:40:42', 0, 55, 'NE', 23.6, 93.1, 0),
(2888, 0, '2021-11-02 19:41:42', 0, 34, 'NE', 23.6, 93.1, 0),
(2889, 0, '2021-11-02 19:42:42', 0, 34, 'NE', 23.6, 93.1, 0),
(2890, 0, '2021-11-02 19:43:42', 0, 28, 'NE', 23.7, 93.2, 0),
(2891, 0, '2021-11-02 19:44:42', 0, 69, 'E', 23.7, 93.2, 0),
(2892, 0, '2021-11-02 19:45:12', 0, 63, 'NE', 23.7, 93.2, 0),
(2893, 0, '2021-11-02 19:45:42', 0, 53, 'NE', 23.7, 93.2, 0),
(2894, 0, '2021-11-02 19:46:12', 0, 46, 'NE', 23.7, 93.2, 0),
(2895, 0, '2021-11-02 19:46:42', 0, 44, 'NE', 23.7, 93.2, 0),
(2896, 0, '2021-11-02 19:47:12', 0, 48, 'NE', 23.7, 93.2, 0),
(2897, 0, '2021-11-02 19:48:12', 0, 60, 'NE', 23.6, 93.2, 0),
(2898, 0, '2021-11-02 19:48:43', 0, 38, 'NE', 23.6, 93.1, 0),
(2899, 0, '2021-11-02 19:49:13', 0, 31, 'NE', 23.6, 93.1, 0),
(2900, 0, '2021-11-02 19:49:42', 0, 20, 'N', 23.6, 93.2, 0),
(2901, 0, '2021-11-02 19:50:13', 0, 73, 'E', 23.6, 93.2, 0),
(2902, 0, '2021-11-02 19:50:42', 0, 85, 'E', 23.7, 93.2, 0),
(2903, 0, '2021-11-02 19:51:13', 0, 29, 'NE', 23.6, 93.1, 0),
(2904, 0, '2021-11-02 19:51:43', 0, 44, 'NE', 23.6, 93.2, 0),
(2905, 0, '2021-11-02 19:52:13', 0, 53, 'NE', 23.6, 93.2, 0),
(2906, 0, '2021-11-02 19:52:43', 0, 46, 'NE', 23.6, 93.1, 0),
(2907, 0, '2021-11-02 19:53:13', 0, 51, 'NE', 23.6, 93.1, 0),
(2908, 0, '2021-11-02 19:53:43', 0, 38, 'NE', 23.6, 93.2, 0),
(2909, 0, '2021-11-02 19:54:13', 0, 57, 'NE', 23.6, 93.2, 0),
(2910, 0, '2021-11-02 19:54:43', 0, 49, 'NE', 23.6, 93.2, 0),
(2911, 0, '2021-11-02 19:55:13', 0, 28, 'NE', 23.6, 93.1, 0),
(2912, 0, '2021-11-02 19:55:43', 0, 57, 'NE', 23.6, 93.2, 0),
(2913, 0, '2021-11-02 19:56:13', 0, 91, 'E', 23.7, 93.2, 0),
(2914, 0, '2021-11-02 19:56:43', 0, 66, 'NE', 23.7, 93.2, 0),
(2915, 0, '2021-11-02 19:57:13', 0, 62, 'NE', 23.7, 93.2, 0),
(2916, 0, '2021-11-02 19:57:43', 0, 36, 'NE', 23.7, 93.2, 0),
(2917, 0, '2021-11-02 19:58:13', 0, 52, 'NE', 23.7, 93.2, 0),
(2918, 0, '2021-11-02 19:58:43', 0, 54, 'NE', 23.7, 93.1, 0),
(2919, 0, '2021-11-02 19:59:13', 0, 30, 'NE', 23.7, 93.1, 0),
(2920, 0, '2021-11-02 19:59:44', 0, 60, 'NE', 23.7, 93.2, 0),
(2921, 0, '2021-11-02 20:00:13', 0, 24, 'NE', 23.7, 93.2, 0),
(2922, 0, '2021-11-02 20:02:44', 0, 60, 'NE', 23.7, 93.2, 0),
(2923, 0, '2021-11-02 20:03:44', 0, 60, 'NE', 23.7, 93.1, 0),
(2924, 0, '2021-11-02 20:04:14', 0, 18, 'N', 23.8, 93.1, 0),
(2925, 0, '2021-11-02 20:04:44', 0, 46, 'NE', 23.7, 93.1, 0),
(2926, 0, '2021-11-02 20:05:14', 0, 32, 'NE', 23.7, 93.1, 0),
(2927, 0, '2021-11-02 20:05:44', 0, 42, 'NE', 23.7, 93.2, 0),
(2928, 0, '2021-11-02 20:06:14', 0, 44, 'NE', 23.7, 93.2, 0),
(2929, 0, '2021-11-02 20:06:44', 0, 50, 'NE', 23.7, 93.1, 0),
(2930, 0, '2021-11-02 20:07:14', 0, 88, 'E', 23.7, 93.1, 0),
(2931, 0, '2021-11-02 20:07:44', 0, 12, 'N', 23.7, 93.1, 0),
(2932, 0, '2021-11-02 20:08:14', 0, 41, 'NE', 23.7, 93.1, 0),
(2933, 0, '2021-11-02 20:08:44', 0, 23, 'NE', 23.7, 93.2, 0),
(2934, 0, '2021-11-02 20:09:15', 0, 55, 'NE', 23.7, 93.1, 0),
(2935, 0, '2021-11-02 20:09:44', 0, 21, 'N', 23.7, 93.1, 0),
(2936, 0, '2021-11-02 20:10:15', 0, 63, 'NE', 23.7, 93.1, 0),
(2937, 0, '2021-11-02 20:10:44', 1.45, 59, 'NE', 23.7, 93.1, 0),
(2938, 0, '2021-11-02 20:11:15', 0, 51, 'NE', 23.7, 93.2, 0),
(2939, 0, '2021-11-02 20:11:44', 0, 55, 'NE', 23.7, 93.2, 0),
(2940, 0, '2021-11-02 20:12:15', 0, 22, 'NE', 23.7, 93.1, 0),
(2941, 0, '2021-11-02 20:12:45', 0, 30, 'NE', 23.7, 93.1, 0),
(2942, 0, '2021-11-02 20:13:15', 0, 35, 'NE', 23.7, 93.1, 0),
(2943, 0, '2021-11-02 20:13:45', 0, 34, 'NE', 23.6, 93, 0),
(2944, 0, '2021-11-02 20:14:15', 0, 32, 'NE', 23.6, 93, 0),
(2945, 0, '2021-11-02 20:14:45', 0, 44, 'NE', 23.7, 93.1, 0),
(2946, 0, '2021-11-02 20:15:45', 0, 25, 'NE', 23.6, 93.1, 0),
(2947, 0, '2021-11-02 20:16:45', 0, 44, 'NE', 23.7, 93.1, 0),
(2948, 0, '2021-11-02 20:17:15', 0, 36, 'NE', 23.7, 93.1, 0),
(2949, 0, '2021-11-02 20:17:45', 0, 27, 'NE', 23.7, 93.1, 0),
(2950, 0, '2021-11-02 20:18:15', 0, 28, 'NE', 23.7, 93.1, 0),
(2951, 0, '2021-11-02 20:18:45', 0, 44, 'NE', 23.7, 93, 0),
(2952, 0, '2021-11-02 20:19:15', 0, 36, 'NE', 23.7, 93.1, 0),
(2953, 0, '2021-11-02 20:19:45', 0, 56, 'NE', 23.7, 93.1, 0),
(2954, 0, '2021-11-02 20:20:15', 0, 58, 'NE', 23.7, 93, 0),
(2955, 0, '2021-11-02 20:20:45', 0, 55, 'NE', 23.7, 93.1, 0),
(2956, 0, '2021-11-02 20:21:15', 0, 47, 'NE', 23.7, 93.1, 0),
(2957, 0, '2021-11-02 20:21:46', 0, 96, 'E', 23.6, 93, 0),
(2958, 0, '2021-11-02 20:22:15', 0, 27, 'NE', 23.6, 93, 0),
(2959, 0, '2021-11-02 20:22:46', 0, 21, 'N', 23.6, 93.1, 0),
(2960, 0, '2021-11-02 20:23:15', 0, 41, 'NE', 23.6, 93, 0),
(2961, 0, '2021-11-02 20:23:46', 0, 34, 'NE', 23.6, 93, 0),
(2962, 0, '2021-11-02 20:24:15', 0, 57, 'NE', 23.6, 93.1, 0),
(2963, 0, '2021-11-02 20:24:46', 0, 17, 'N', 23.7, 93.1, 0),
(2964, 0, '2021-11-02 20:25:46', 0, 61, 'NE', 23.7, 93.1, 0),
(2965, 0, '2021-11-02 20:26:16', 0, 59, 'NE', 23.6, 93.1, 0),
(2966, 0, '2021-11-02 20:26:46', 0, 69, 'E', 23.7, 93.2, 0),
(2967, 0, '2021-11-02 20:27:16', 0, 51, 'NE', 23.7, 93.1, 0),
(2968, 0, '2021-11-02 20:27:46', 0, 49, 'NE', 23.7, 93.1, 0),
(2969, 0, '2021-11-02 20:29:16', 0, 69, 'E', 23.6, 93.1, 0),
(2970, 0, '2021-11-02 20:31:16', 0, 42, 'NE', 23.6, 93.1, 0),
(2971, 0, '2021-11-02 20:33:16', 0, 37, 'NE', 23.6, 93.1, 0),
(2972, 0, '2021-11-02 20:35:47', 0, 69, 'E', 23.6, 93.1, 0),
(2973, 0, '2021-11-02 20:36:17', 0, 60, 'NE', 23.6, 93.1, 0),
(2974, 0, '2021-11-02 20:36:47', 0, 24, 'NE', 23.6, 93.2, 0),
(2975, 0, '2021-11-02 20:37:47', 0, 36, 'NE', 23.6, 93.2, 0),
(2976, 0, '2021-11-02 20:38:47', 0, 54, 'NE', 23.6, 93.1, 0),
(2977, 0, '2021-11-02 20:40:47', 0, 62, 'NE', 23.6, 93.2, 0),
(2978, 0, '2021-11-02 20:41:17', 0, 67, 'E', 23.6, 93.2, 0),
(2979, 0, '2021-11-02 20:41:47', 0, 35, 'NE', 23.6, 93.2, 0),
(2980, 0, '2021-11-02 20:42:18', 0, 50, 'NE', 23.6, 93.2, 0),
(2981, 0, '2021-11-02 20:42:47', 0, 31, 'NE', 23.6, 93.2, 0),
(2982, 0, '2021-11-02 20:43:18', 0, 24, 'NE', 23.6, 93.2, 0),
(2983, 0, '2021-11-02 20:44:47', 0, 93, 'E', 23.7, 93.3, 0),
(2984, 0, '2021-11-02 20:46:18', 0, 45, 'NE', 23.7, 93.2, 0),
(2985, 0, '2021-11-02 20:47:48', 0, 44, 'NE', 23.7, 93.2, 0),
(2986, 0, '2021-11-02 20:48:18', 0, 66, 'NE', 23.7, 93.2, 0),
(2987, 0, '2021-11-02 20:49:18', 0, 40, 'NE', 23.7, 93.2, 0),
(2988, 0, '2021-11-02 20:50:18', 0, 58, 'NE', 23.7, 93.3, 0),
(2989, 0, '2021-11-02 20:51:18', 0, 32, 'NE', 23.6, 93.2, 0),
(2990, 0, '2021-11-02 20:54:18', 0, 14, 'N', 23.6, 93.2, 0),
(2991, 0, '2021-11-02 20:55:18', 0, 32, 'NE', 23.6, 93, 0),
(2992, 0, '2021-11-02 20:55:49', 0, 72, 'E', 23.6, 93.2, 0),
(2993, 0, '2021-11-02 20:56:49', 0, 54, 'NE', 23.6, 93.2, 0),
(2994, 0, '2021-11-02 20:57:49', 0, 23, 'NE', 23.7, 93.2, 0),
(2995, 0, '2021-11-02 20:58:49', 0, 36, 'NE', 23.6, 93.2, 0),
(2996, 0, '2021-11-02 20:59:49', 0, 54, 'NE', 23.7, 93.2, 0),
(2997, 0, '2021-11-02 21:00:49', 0, 56, 'NE', 23.6, 93.2, 0),
(2998, 0, '2021-11-02 21:02:19', 0, 41, 'NE', 23.6, 93.2, 0),
(2999, 0, '2021-11-02 21:03:19', 0, 32, 'NE', 23.6, 93.2, 0),
(3000, 0, '2021-11-02 21:04:19', 0, 68, 'E', 23.6, 93.2, 0),
(3001, 0, '2021-11-02 21:05:20', 0, 44, 'NE', 23.6, 93.2, 0),
(3002, 0, '2021-11-02 21:06:50', 0, 28, 'NE', 23.7, 93.2, 0),
(3003, 0, '2021-11-02 21:07:50', 0, 31, 'NE', 23.6, 93.2, 0),
(3004, 0, '2021-11-02 21:08:50', 0, 21, 'N', 23.6, 93.2, 0),
(3005, 0, '2021-11-02 21:10:20', 0, 62, 'NE', 23.6, 93.2, 0),
(3006, 0, '2021-11-02 21:12:20', 0, 89, 'E', 23.7, 93.3, 0),
(3007, 0, '2021-11-02 21:13:20', 0, 27, 'NE', 23.6, 93.2, 0),
(3008, 0, '2021-11-02 21:16:51', 0, 18, 'N', 23.7, 93.3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `weather_station_list`
--

CREATE TABLE `weather_station_list` (
  `id` int(3) NOT NULL,
  `rain_cal` float NOT NULL,
  `loc` varchar(100) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `desc` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `weather_station_list`
--

INSERT INTO `weather_station_list` (`id`, `rain_cal`, `loc`, `lat`, `lon`, `desc`) VALUES
(0, 5.10204, 'SRS', 0, 0, 'Prototype');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `weather_station`
--
ALTER TABLE `weather_station`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `weather_station_list`
--
ALTER TABLE `weather_station_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `weather_station`
--
ALTER TABLE `weather_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3009;

--
-- AUTO_INCREMENT untuk tabel `weather_station_list`
--
ALTER TABLE `weather_station_list`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
