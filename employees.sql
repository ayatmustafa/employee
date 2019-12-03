-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 02:21 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `position`, `about`, `join_date`, `img`, `created_at`, `updated_at`) VALUES
(43, 'Soluta aut qui totam.', 'Sed et tempore maxime ipsam laborum.', 'Reiciendis inventore nostrum aspernatur sapiente omnis sequi. Beatae quasi dolor atque enim ad. Omnis vel eaque voluptas omnis ea accusantium. Totam hic adipisci omnis. Est qui saepe delectus id.', '2014-03-15', '15.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(44, 'Et iste officiis et.', 'Facilis explicabo quo repellat facilis.', 'Sint voluptatem et ea et sunt asperiores quod. Voluptas quibusdam laboriosam excepturi aliquid vero non in quia. Atque odit quae inventore. Nostrum voluptas quis quia omnis. Voluptatem quod qui quam qui possimus. Sunt vel est neque non. Et tempore necessitatibus aut possimus in.', '2015-10-16', '5dcb4ad2d2693.jpg', '2019-11-12 22:01:17', '2019-11-12 22:14:10'),
(46, 'Nostrum facilis officia quasi.', 'Rerum ex sapiente vitae delectus harum.', 'Totam sit aliquid rerum reprehenderit ut ea facere aut. Non molestias magni ut aliquid dolor earum neque. Enim atque quisquam qui est. Reprehenderit deleniti aut consequuntur dolor nihil voluptatem dolore. Ut similique et nihil est voluptatum consequuntur omnis.', '2013-01-05', '13.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(47, 'Et hic eum aperiam.', 'Porro voluptas quos quisquam facilis.', 'Consequatur sunt autem unde aut. Placeat molestias dolorem iure dolores neque id. Quia voluptatem qui eaque autem quis voluptate. Repellat nesciunt iure et et ex nemo. Qui et aut cupiditate corrupti ad praesentium velit. Eos velit animi accusamus commodi ea. Et ut reiciendis aperiam.', '2016-11-27', '15.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(48, 'Magnam nobis quaerat consequatur.', 'Odit ducimus velit officia dolorem minus sit.', 'Ut aperiam eveniet autem et enim. Vel occaecati eligendi laudantium magni hic eos. Esse enim rerum eaque ab quam necessitatibus aliquam. Nam soluta placeat eius. Modi incidunt aperiam at voluptatem quo. Earum accusantium vel voluptates ratione amet.', '2015-02-26', '10.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(49, 'Numquam culpa amet dolor.', 'Dolor in earum eum amet deleniti.', 'Quisquam qui recusandae illum quasi a dolor. Et labore illo quaerat a sit. Et ex illo perspiciatis praesentium ratione. Unde aut eveniet autem quia expedita quia rerum adipisci.', '2011-04-14', '7.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(50, 'Consectetur est.', 'Molestiae nobis sed eum eum dolorem.', 'Corporis neque aperiam odit aspernatur et odio. Rem eum ut doloribus fugit dicta doloribus. Et deleniti voluptatibus aspernatur possimus. Commodi veritatis est fugiat in voluptatum. Autem labore consequatur eaque alias nihil vel cupiditate. Eum aut porro voluptas explicabo laborum deleniti.', '2015-02-26', '9.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(51, 'Sit harum dolor.', 'Et eveniet reiciendis dignissimos facere.', 'Omnis saepe animi pariatur vel qui est voluptatem. Voluptatem et vel aliquid est. Deleniti reiciendis non distinctio cupiditate eum facere est aut. Aspernatur quia dolores consectetur qui commodi cum. Qui ullam dolores accusamus inventore. Soluta magni maxime numquam nesciunt ad eos voluptate.', '2012-08-24', '12.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(52, 'Quos nobis adipisci voluptas.', 'Est sed nam nihil vitae et.', 'Nobis assumenda non tempore eaque ea. Aut voluptatem ut laborum suscipit. Vel qui vel cum a ut voluptatibus aut. Ipsum ut dignissimos laborum molestias fugiat atque in. Placeat vero in iusto pariatur nesciunt. Tempora est aut sunt ea voluptatem.', '2014-05-08', '1.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(53, 'Quibusdam ut aut dolor.', 'Quam ut et voluptatem rem.', 'Tempore corrupti beatae ducimus harum occaecati dignissimos architecto. Fugit corrupti aut cumque adipisci aut. Numquam neque aut dolor vel. Aut maxime temporibus totam. Et quo architecto et vel rerum quae occaecati. Molestiae deserunt quo molestias accusantium. Voluptatem natus sint facilis qui ducimus esse earum.', '2011-01-06', '14.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(54, 'Possimus et debitis similique quisquam.', 'Nihil minus quod officia.', 'Voluptatibus omnis illum voluptas laboriosam sint ea. Quisquam cumque est omnis omnis corrupti ipsam cumque facere. Est sed quo quo laudantium est ut et. Doloribus nemo a sit et. Aut consectetur consequatur deserunt ut et aut maiores. Cupiditate occaecati et et.', '2011-07-10', '9.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(55, 'Doloribus totam vel.', 'Minus non deserunt voluptatibus quo.', 'Maxime et facilis deleniti maxime ipsam. Provident nihil quos esse nesciunt. Nisi ut omnis deleniti aut rem accusantium. Sit nulla iure ut tenetur corrupti quo. Vel corporis ea qui nulla sint et amet minus.', '2014-03-02', '3.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(56, 'Accusantium nisi molestiae aut.', 'Sit ipsam fugiat qui fuga ipsa.', 'Sit consequatur accusantium perspiciatis omnis. Beatae tenetur eum dolor sit eius reiciendis ut vero. Illo qui asperiores sit accusamus voluptatibus aperiam. Doloribus quis impedit est omnis non atque vel.', '2015-07-04', '2.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(57, 'Adipisci consectetur.', 'Quia nulla quis ut iusto.', 'Assumenda animi expedita explicabo error. Eius cupiditate amet fuga sint ullam. Neque natus tenetur voluptatibus et dolor est. Unde nihil culpa repellat consequatur. Temporibus sit quam nostrum ut.', '2009-03-01', '6.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(58, 'Quasi cum et tempora.', 'Totam et numquam aut exercitationem.', 'Vero omnis quae voluptates aliquam sapiente natus mollitia recusandae. Ad eos asperiores et velit est deleniti minima. Placeat inventore harum voluptas nobis. Quas quos eos quo omnis voluptatibus. Fuga voluptas sint autem.', '2014-05-05', '5.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(59, 'Sint enim.', 'Eveniet debitis quaerat magnam.', 'Error atque voluptas totam id magnam beatae tempore. Et dolores blanditiis harum tempora. Et odit cumque rerum aut quae ad. Veniam dolorem in ut.', '2009-08-19', '13.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(60, 'Expedita nobis laboriosam quia.', 'Molestiae at beatae odit.', 'Saepe ipsum voluptates id tempora iure. Optio nihil cumque est non eligendi quaerat. Praesentium quia architecto voluptates ut nostrum deleniti aspernatur ut. Velit odit est quaerat. Suscipit sunt dolor voluptates consequatur. Beatae ipsa dolorem et vel porro molestias. Rerum consequatur aliquam praesentium laudantium dolore.', '2015-12-13', '17.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(61, 'Id qui totam at.', 'Doloremque eos saepe libero.', 'Omnis quaerat rem ut aliquam illo. Et molestiae ratione similique sed veniam et. Nihil omnis eum omnis ea ut inventore quis. Omnis omnis omnis sunt est illum. Consectetur officiis corporis accusantium velit.', '2015-02-12', '14.jpg', '2019-11-12 22:01:17', '2019-11-12 22:01:17'),
(62, 'Ut culpa eos aperiam.', 'Eveniet quo atque impedit ipsum non.', 'Dolores aliquam culpa aut reiciendis maiores. Aperiam sit laborum officia quasi. Debitis qui ipsam velit qui voluptatem et maiores. Quo eaque ut animi inventore. Aut dolores sequi quia ratione soluta consequatur. Non necessitatibus ad dolores velit.', '2009-01-15', '5.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(63, 'Aut sunt libero.', 'Rerum ea et omnis.', 'Enim molestiae aut veritatis. Modi quidem molestiae vel. Optio perferendis tenetur neque molestiae id rerum. Pariatur sapiente pariatur placeat maxime et autem voluptatum.', '2011-05-10', '17.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(64, 'Temporibus officiis quisquam dolorem.', 'At quibusdam qui neque eum qui est.', 'Consequatur esse similique sunt eaque non. Asperiores ea minus in sapiente illum culpa. Iste voluptas et non aut voluptate. Earum blanditiis itaque magnam possimus et ut. Molestiae et et esse fugit eaque.', '2014-05-21', '13.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(65, 'Vero qui et illum.', 'Fugiat qui et repellendus illo.', 'Dolor voluptates aut sequi nam omnis sequi illo. Alias et ipsum tenetur. Rerum quo autem autem optio ipsa enim aperiam. Labore omnis in id ratione laudantium qui consectetur. Est et corporis consequatur. Iste quaerat nihil possimus minima vel debitis.', '2016-04-23', '6.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(66, 'Temporibus ipsa sunt voluptatem.', 'Veniam id qui ratione.', 'Nam aut est sed. Totam explicabo ut non aut exercitationem quae. Asperiores ut expedita quo quo quia tenetur. Optio voluptatem omnis eaque veritatis cum quam odio. Reiciendis maxime consequatur saepe at excepturi.', '2016-05-01', '17.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(67, 'Voluptatem dolores enim repudiandae eaque.', 'Omnis ut nisi beatae ducimus est ut.', 'Explicabo sequi ad culpa harum incidunt cupiditate quia quibusdam. In nihil beatae neque quidem officia. Sunt quod vel quia possimus dolorem. Est doloribus dolorem ut aut et. Repellat voluptatibus nobis doloribus consectetur nam at.', '2010-02-19', '5.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(68, 'Quo laboriosam.', 'Consequatur similique deleniti et.', 'Ut eum officia voluptates reiciendis ipsum aliquid consequuntur. Labore dignissimos voluptatem eveniet et sequi aliquid incidunt minima. Impedit ipsa quidem et est debitis. Autem vero sunt vero in omnis maiores.', '2016-06-13', '8.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(69, 'Ipsam at.', 'Dolor quos excepturi commodi possimus commodi.', 'Minima voluptatibus in vel assumenda sit et doloribus asperiores. Ut id est ut dolorum ut culpa. Pariatur in fuga et impedit ut nisi eum. Itaque ducimus aut neque quod qui et voluptatibus.', '2009-09-03', '2.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(70, 'Quo incidunt ut vel.', 'Voluptatem quia alias impedit et.', 'Eveniet dicta officia unde similique quis quis eveniet laudantium. Vitae consequatur nostrum qui perspiciatis suscipit quas hic. Tenetur est at debitis quam vel quae deserunt maxime. Aperiam accusamus ut voluptatibus.', '2015-02-26', '12.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(71, 'Quaerat vel quidem.', 'Ad nobis et doloremque.', 'Autem nulla ut molestiae laborum. Ea perspiciatis eum expedita dolor. Aut quis et illo voluptate ullam rem tempore consequuntur. Tenetur qui soluta voluptate qui optio. Magni possimus et recusandae est excepturi repudiandae. Earum nostrum explicabo maxime vel aperiam.', '2009-12-18', '3.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(72, 'Qui incidunt sint voluptatem.', 'Quaerat non id esse numquam quibusdam.', 'Non enim dolorem rem praesentium. Quo ut possimus rem accusamus. Est qui qui enim pariatur. Explicabo voluptas qui eos illo et quo rerum. Commodi non autem non sed porro. Unde dolorem quia error alias.', '2012-05-09', '10.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(73, 'Harum dolor veritatis nam.', 'Sed corrupti sed provident.', 'Ut sunt quis error doloremque dolorem. Eveniet consequuntur unde perferendis sint laborum adipisci rem. Occaecati maiores voluptas voluptatibus ea. Vero voluptates suscipit dolor tempora consequatur dolor doloremque nulla. Rem quia nobis beatae deleniti.', '2015-08-24', '10.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(74, 'Sed recusandae id officiis.', 'Voluptas eius quis saepe.', 'Fugiat eligendi itaque ea ex aspernatur quisquam. Est id minus quo magnam temporibus eos. Dolor nisi iure fuga. Odit ullam voluptas quae. Iusto quam consectetur adipisci molestiae omnis. Labore optio veniam provident inventore soluta ut. Neque asperiores et temporibus repellat veniam.', '2015-07-14', '11.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(75, 'Eius tempore beatae.', 'Veniam dolores animi ut et quis aut.', 'Dolorum at aut sunt ipsa nobis dolor voluptatum. Dolorem culpa corrupti natus alias et perspiciatis totam. Aperiam natus facilis magnam. Ex sed tenetur dolores. Magnam quos hic provident eum. Et necessitatibus repudiandae temporibus rerum consequatur amet vel. Quia dolor maiores aut aliquam.', '2013-07-02', '1.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(76, 'Voluptas nisi debitis.', 'Temporibus quo et illum.', 'Dolor ipsa non ullam et est magni. Illo velit repudiandae magni est asperiores doloremque animi dolor. Est recusandae deserunt quia laudantium voluptatem. Eum iusto deleniti architecto eos porro occaecati.', '2015-11-27', '14.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(77, 'Eveniet cumque praesentium nesciunt.', 'Esse nostrum asperiores omnis totam voluptate itaque.', 'Optio et labore dicta corrupti. Eius fugit architecto totam nulla molestiae aliquam. Quo voluptate iure enim quam. Dolorem iusto ipsam velit quod vel repellat ut.', '2011-07-16', '12.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(78, 'Quia aut assumenda fugit labore.', 'Tempore voluptas quasi laborum.', 'Blanditiis at veniam doloremque sunt. Corporis velit ipsum molestiae id nihil quasi non. Deleniti quisquam quis tempore assumenda natus sapiente est. Est nulla omnis rerum et maxime commodi. Voluptas doloribus molestiae porro qui recusandae iste iure. Optio autem perferendis sapiente molestiae consequatur similique.', '2014-10-20', '2.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(79, 'Recusandae veritatis illum.', 'Sed veritatis aliquam rem ea atque non.', 'Omnis omnis rerum aut voluptatem occaecati. Vel est consequatur rerum placeat tempore. Illum est voluptas ut minus fugiat rerum laboriosam. Ex dicta reprehenderit exercitationem est adipisci. Aut sint consequatur expedita doloremque. Vel nisi nesciunt explicabo deserunt ex asperiores. Rerum quod dolores quaerat quidem nulla voluptate necessitatibus qui.', '2009-11-11', '3.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(80, 'Eum sequi dignissimos esse accusamus.', 'At aut consequatur provident libero saepe ipsum qui.', 'Earum quis tenetur non voluptas. Rerum eos asperiores occaecati qui excepturi. Ut aut omnis odio eligendi. Fugiat exercitationem tempore expedita. Veniam odio distinctio tempore. Maxime est dolor et dolorem reiciendis.', '2016-08-15', '9.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(81, 'Dignissimos tenetur reprehenderit dolor.', 'Repellendus optio officiis repellendus vitae sit.', 'Molestiae aut accusamus sit corporis quaerat ut nihil. Illo provident et sapiente vero mollitia ratione nemo. Sit ex quas sunt quis illum. Dolor quaerat officiis sint et repellendus. Id sint dolor optio maxime. Nihil ut impedit fugit debitis dolorem repudiandae quia. Molestias earum voluptas et rerum dignissimos.', '2012-03-08', '13.jpg', '2019-11-12 22:01:18', '2019-11-12 22:01:18'),
(82, 'Ipsam sapiente maiores.', 'Eius ea sit et veniam.', 'Asperiores nam ipsum velit dolores non minus. Possimus excepturi architecto architecto dignissimos magni illo commodi. Est et nisi nostrum cupiditate molestiae quo. Facere aperiam quis accusantium voluptas quasi.', '2009-08-02', '12.jpg', '2019-11-12 22:01:19', '2019-11-12 22:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_11_11_020300_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ayat', 'admin@gmail.com', NULL, '$2y$10$XEmtUyNaaxV.BXVPx90/vOJKZ/K3JqiLfkGSGcf0QKAchDC529T82', '5jHJK391dbxWNq1dUDv3mXYwyP6iL2NB3YcoUFEmfXD6vQPLvcC59I5lIHoB', '2019-11-24 19:20:04', '2019-11-24 19:20:04'),
(2, 'ayat mustafa', 'admin33@gmail.com', NULL, '$2y$10$wbqExfIsBbwj3LKwoWUW3eAN15NumguQFwDZHATXJCw.hOugYR3CW', NULL, '2019-11-24 20:43:25', '2019-11-24 20:43:25'),
(3, 'ayat', 'admin12@gmail.com', NULL, '$2y$10$MoE3q33GFHZPu3MsZqWdiugOWBNka/FOn8gsfwF9v5U/Ox/tMJuQq', 'FuOEc2rRV2nth9sl8FVlDmBuMQPKmC6eqI5f3DsUoefcluphrgWyoC7RoZlR', '2019-11-24 20:44:21', '2019-11-24 20:44:21'),
(4, 'ayat', 'adminn@gmail.com', NULL, '$2y$10$butazNBPJ4lpQNIJrQ1uJOtP4S4LeLg9KQD0XqsKb39U/36TVXK8S', NULL, '2019-11-27 05:33:23', '2019-11-27 05:33:23'),
(5, 'ayat', 'ayatmustafa199472@gmail.com', NULL, '$2y$10$372TNb88nNT0UrDyYszDf.1wkoTMi9/1Ys8AgUrHzRoWZNEEcPBri', NULL, '2019-12-02 21:34:52', '2019-12-02 21:34:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
