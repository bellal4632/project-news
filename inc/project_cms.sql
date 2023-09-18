-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 08:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(512) NOT NULL,
  `active` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `featured` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `description`, `images`, `active`, `user_id`, `tags`, `featured`, `created_at`) VALUES
(1, 9, 'সিলেটের করিমউল্লাহ মার্কেটে যুক্তরাজ্য প্রবাসীর দোকান দখলের অভিযোগ', 'i, ipsam quos. Deserunt accusamus eos alias mollitia distinctio cupiditate, iure dolorem eaque autem aliquid deleniti laboriosam quos rerum! Omnis iste sint aliquam magnam ducimus, neque excepturi distinctio autem vel cupiditate, reprehenderit perferendis? Repellat, neque culpa? Officiis numquam saepe autem eaque suscipit quis illum ratione, libero facilis sequi, tenetur magni', 'navy-blue-smoky-art-abstract-background.jpg', 3, 7, 'aa', 2, '2023-03-13 16:01:45'),
(2, 1, 'bhdsjc jbkjsd fbsk sjfskf sfksf', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae voluptatum quos, iusto beatae reiciendis molestias tempore dignissimos dolore, sit quidem, numquam possimus nobis libero eos? Laudantium odio ea omnis officiis ab tempore, nobis voluptatibus nisi quis in totam quae ad blanditiis dolore consectetur reprehenderit porro asperiores quo expedita ', '640f524043adb.png', 3, 7, 'xx', 2, '2023-03-13 16:41:36'),
(3, 6, 'সিলেটের করিমউল্লাহ মার্কেটে যুক্তরাজ্য প্রবাসীর দোকান দখলের অভিযোগ', 're, sit quidem, numquam possimus nobis libero eos? Laudantium odio ea omnis officiis ab tempore, nobis voluptatibus nisi quis in totam quae ad blanditiis dolore consectetur reprehenderit porro asperiores quo expedita obcaecati? Consequatur laborum nostrum totam odio veritatis, veniam esse vel molestias saepe a dolores placeat reiciendis repudiandae nihil sequi, ipsam quos. ', '640f537507be2.png', 3, 7, 'dc', 0, '2023-03-13 16:46:45'),
(4, 9, 'Bangladesh 123', 'libero facilis sequi, tenetur magni reiciendis quam! Quidem repudiandae libero temporibus maiores iste voluptatum amet non laborum sapiente! Aspernatur nisi neque veritatis, voluptate amet porro eveniet vel obcaecati perspiciatis quidem fugit temporibus, voluptates illo soluta impedit fuga. Optio neque tempore perferendis eum dolorem inventore illo, consequuntur sapiente corporis deleniti impedit obcaecati hic. Nisi libero veritatis excepturi incidunt maxime rem nam eius perferendis ut minima voluptates quo a ipsum, esse officiis itaque alias eveniet delectus? Maiores ea ipsum nisi ullam, nihil laboriosam dolorum pariatur non soluta', '640f5391f2956.png', 3, 7, 'dc', 2, '2023-03-13 16:47:13'),
(5, 7, 'সিলেটের করিমউল্লাহ মার্কেটে যুক্তরাজ্য প্রবাসীর দোকান দখলের অভিযোগ', 'ffdff', '640f5801ba30e.png', 3, 7, 'dc', 0, '2023-03-13 17:06:09'),
(7, 6, 'ডাচ্-বাংলার আরও ৫৮ লাখ টাকা উদ্ধার, মূলপরিকল্পনাকারীসহ গ্রেপ্তার আরও ৩', 'রাজধানী উত্তরায় ডাচ্-বাংলা ব্যাংকের গাড়ি থেকে সোয়া ১১ কোটি টাকা লুটের ঘটনায় আরও ৫৮ লাখ ৭ হাজার টাকা উদ্ধার হয়েছে। এছাড়া ঘটনার মূল পরিকল্পনাকারীসহ আরও তিনজনকে গ্রেপ্তার করা হয়েছে। এ নিয়ে ডাচ্-বাংলা ব্যাংকের টাকা ছিনতাইয়ের ঘটনায় ৭ কোটি ১ লাখ ৫৬ হাজার টাকা উদ্ধার হয়েছে বলে জানিয়েছে ঢাকা মহানগর গোয়েন্দা পুলিশ (ডিবি)। আজ দুপুরে ডিএমপি মিডিয়া সেন্টারে সংবাদ সম্মেলন করে এসব তথ্য জানিয়েছেন ঢাকা মহানগর গোয়েন্দা পুলিশের অতিরিক্ত কমিশনার মোহাম্মদ হারুন অর রশীদ। তিনি বলেন, গ্রেপ্তার তিনজনের মধ্যে আকাশ নামে একজনকে কিছুক্ষণ আগে খুলনা থেকে গ্রেপ্তার করা হয়েছে। তবে তার কাছ থেকে টাকা উদ্ধার করা হয়েছে কিনা সেটি তাৎক্ষণিকভাবে জানাতে পারেননি। তিনি টাকা লুটের মূল পরিকল্পনাকারীদের একজন। গতকাল ঢাকার বনানীর কড়াইল বস্তি থেকে হৃদয় নামে একজনকে গ্রেপ্তারের পর ৪৮ লাখ ৭ হাজার টাকা উদ্ধার করা হয়েছে। পরে নেত্রকোনা থেকে গ্রেপ্তার করা হয় নীরব নামে একজনকে। গ্রেপ্তারের পর তার কাছ থেকে আরও ১০ লাখ টাকা উদ্ধার করা হয়। এ নিয়ে সব মিলে ১১ জনকে গ্রেপ্তার করা হয়েছে।', '64109dc4b6710.png', 3, 6, 'cash, bank', 0, '2023-03-14 16:16:04'),
(8, 6, 'ড্রোন ধ্বংস নিয়ে রাশিয়া ও যুক্তরাষ্ট্রের প্রতিরক্ষামন্ত্রীদের ফোনালাপ, ধ্বংসাবশেষ উদ্ধার নিয়ে প্রতিযোগিতা', 'কৃষ্ণ সাগরে মার্কিন ড্রোন ধ্বংস নিয়ে রাশিয়ার প্রতিরক্ষামন্ত্রী সের্গেই শইগুর সঙ্গে কথা বলেছেন যুক্তরাষ্ট্রের প্রতিরক্ষামন্ত্রী লয়েড অস্টিন। পুরো ঘটনার জন্য ওয়াশিংটন প্রথম থেকেই মস্কোকে দায়ী করে আসছিল। এর প্রেক্ষিতেই বুধবার মস্কোর সঙ্গে কথা বলেন মার্কিন প্রতিরক্ষামন্ত্রী। তবে নির্দিষ্ট করে কী কথা হয়েছে তা সাংবাদিকদের জানাননি তিনি। এ খবর দিয়েছে আল-জাজিরা। খবরে বলা হয়, রাশিয়া ও যুক্তরাষ্ট্রের প্রতিরক্ষামন্ত্রী পর্যায়ে বৈঠক বেশ বিরল। তবে কৃষ্ণ সাগরে যুক্তরাষ্ট্রের একটি দামি এমকিউ-৯ রিপার ড্রোন ধ্বংসের পর দুই দেশের মধ্যে সরাসরি সংঘাতের আশঙ্কা সৃষ্টি হয়। এরইপ্রেক্ষিতে রাশিয়ার সঙ্গে যোগাযোগের সিদ্ধান্ত নেয় যুক্তরাষ্ট্র। গত বছরের ফেব্রুয়ারিতে ইউক্রেনে যুদ্ধ শুরু হওয়ার পর এই তৃতীয় বারের মতো  রাশিয়া ও যুক্তরাষ্ট্রের প্রতিরক্ষামন্ত্রীদের মধ্যে প্রথম কথা হয়। \r\n\r\nতবে অস্টিন পেন্টাগনের সংবাদ সম্মেলনে আলোচনার বিষয়বস্তু চেপে গেছেন। তিনি শুধু বলেন যে, মার্কিন যুক্তরাষ্ট্র সম্ভাব্য যে কোনো সংঘাতের বিষয়টিকে খুব গুরুত্ব সহকারে নেয়। এ কারণে রাশিয়ার সঙ্গে যোগাযোগের রাস্তা খোলা রাখা গুরুত্বপূর্ণ।', '6413057b75ec6.png', 3, 6, 'politics, Usa', 0, '2023-03-16 12:03:07'),
(9, 1, 'মেসির ৮০০ গোলের দিনে আর্জেন্টিনার জয়', 'বিশ্ব চ্যাম্পিয়ন হওয়ার পর প্রথম ম্যাচ খেলতে নেমে পানামাকে ২-০ গোলে হারিয়েছে আর্জেন্টিনা। নিজেদের মাঠে থিয়াগো আলমাদার গোলে এগিয়ে যাওয়ার পর দুর্দান্ত ফ্রি কিকে ব্যবধান দ্বিগুণ করেন লিওনেল মেসি। পেশাদার ক্যারিয়ারে ক্লাব ও আন্তর্জাতিক ফুটবল মিলিয়ে মেসির গোল হলো ৮০০টি। সবচেয়ে বেশি ৮৩০ গোল করে চূড়ায়আছেন তার দীর্ঘ সময়ের প্রতিদ্বন্দ্বী ক্রিশ্চিয়ানো রোনালদো। গত ডিসেম্বরে কাতারে ফ্রান্সকে হারিয়ে বিশ্বকাপ জয়ের পর প্রথমবার একসঙ্গে মাঠে আর্জেন্টিনা। ম্যাচ শুরুর আগে দর্শকদেরঅভিবাদনে আবেগ নিয়ন্ত্রণ করতে পারেননি মেসি। চোখ অশ্রুতে ছলছল করছিল, মুখে ছিল তৃপ্তির হাসি। তৃতীয় বিশ্বকাপজয়ী বীরদের বরণ করে নিতে কার্পণ্য ছিল না আর্জেন্টাইন দর্শকদের। বুয়েন্স আয়ার্স ছিল যেন উৎসবের নগরী, সেই উৎসবআরও বেড়ে গেলো দারুণ জয়ে। আর্জেন্টিনা পানামার বিপক্ষে প্রীতি ম্যাচের প্রথমার্ধ শেষ করে একরাশ হতাশা নিয়ে। ১৭মিনিটে ফ্রি কিক থেকে গোলের সুবর্ণ সুযোগ নষ্ট করেন মেসি। বাঁ পায়ের জাদুকরী শট।', '641dac9fa0b5e.png', 2, 6, 'dvddvdv', 0, '2023-03-24 13:58:55'),
(10, 1, 'মেসির ৮০০ গোলের দিনে আর্জেন্টিনার জয়', 'বিশ্ব চ্যাম্পিয়ন হওয়ার পর প্রথম ম্যাচ খেলতে নেমে পানামাকে ২-০ গোলে হারিয়েছে আর্জেন্টিনা। নিজেদের মাঠে থিয়াগো আলমাদার গোলে এগিয়ে যাওয়ার পর দুর্দান্ত ফ্রি কিকে ব্যবধান দ্বিগুণ করেন লিওনেল মেসি। পেশাদার ক্যারিয়ারে ক্লাব ও আন্তর্জাতিক ফুটবল মিলিয়ে মেসির গোল হলো ৮০০টি। সবচেয়ে বেশি ৮৩০ গোল করে চূড়ায়আছেন তার দীর্ঘ সময়ের প্রতিদ্বন্দ্বী ক্রিশ্চিয়ানো রোনালদো। গত ডিসেম্বরে কাতারে ফ্রান্সকে হারিয়ে বিশ্বকাপ জয়ের পর প্রথমবার একসঙ্গে মাঠে আর্জেন্টিনা। ম্যাচ শুরুর আগে দর্শকদেরঅভিবাদনে আবেগ নিয়ন্ত্রণ করতে পারেননি মেসি। চোখ অশ্রুতে ছলছল করছিল, মুখে ছিল তৃপ্তির হাসি। তৃতীয় বিশ্বকাপজয়ী বীরদের বরণ করে নিতে কার্পণ্য ছিল না আর্জেন্টাইন দর্শকদের। বুয়েন্স আয়ার্স ছিল যেন উৎসবের নগরী, সেই উৎসবআরও বেড়ে গেলো দারুণ জয়ে। আর্জেন্টিনা পানামার বিপক্ষে প্রীতি ম্যাচের প্রথমার্ধ শেষ করে একরাশ হতাশা নিয়ে। ১৭মিনিটে ফ্রি কিক থেকে গোলের সুবর্ণ সুযোগ নষ্ট করেন মেসি। বাঁ পায়ের জাদুকরী শট।', '641dacc013c25.png', 3, 6, 'dvddvdv', 0, '2023-03-24 13:59:28'),
(11, 9, 'সংলাপের আমন্ত্রণ জানিয়ে বিএনপিকে ইসি’র চিঠি', 'আসন্ন জাতীয় নির্বাচন নিয়ে আলোচনার জন্য বিএনপিকে আমন্ত্রণ জানিয়েছেন প্রধান নির্বাচন কমিশনার কাজী হাবিবুল আউয়াল। গতকাল  বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীরকে দেয়া এক আধা সরকারি (ডিও) চিঠিতে বিএনপি’র প্রতিনিধিদল বা প্রয়োজনে সমমনা দলগুলোর প্রতিনিধি নিয়ে নির্বাচন কমিশনে আলোচনায় বসার আমন্ত্রণ জানিয়েছেন সিইসি। চিঠি পাঠানোর বিষয়টি নিশ্চিত করেছেন নির্বাচন কমিশনার ব্রিগেডিয়ার জেনারেল (অব.) আহসান হাবিব খান। নির্বাচন কমিশন থেকে চিঠি পাওয়ার বিষয় মানবজমিনকে নিশ্চিত করেছেন বিএনপি মহাসচিব মির্জা ফখরুল ইসলাম আলমগীর। তিনি বলেন, একটি চিঠি এসেছে। তবে চিঠিটি দেখা হয়নি। ইসির আমন্ত্রণে বিএনপি আলোচনায় যাবে কি', '641db7a512364.png', 3, 6, 'dvddvdv', 0, '2023-03-24 14:45:57'),
(12, 9, 'টালমাটাল ইসরাইল, পিছু হটবেন নেতানিয়াহু!', 'টালমাটাল ইসরাইল। বিচার বিভাগের আইন সংস্কারের মধ্য দিয়ে নিজের ক্ষমতাকে আরও শক্তিশালী করতে গিয়ে মহাবিপদে প্রধানমন্ত্রী বেনিয়ামিন নেতানিয়াহু। দেশের সব শ্রেণির মানুষ তার বিরুদ্ধে একাট্টা হয়েছে। তারা ক্ষোভে ফুঁসছে। পুলিশের সঙ্গে সংঘর্ষ হচ্ছে। প্রতিরক্ষামন্ত্রী বিক্ষোভকারীদের পক্ষ নিয়ে মন্তব্য করায় তাকে তাৎক্ষণিকভাবে বরখাস্ত করেছেন নেতানিয়াহু। এর ফলে আন্দোলন প্রশমিত না হয়ে  আরও উত্তেজিত হয়ে উঠেছে। সাধারণ জনতার পাশাপাশি সেনারাও অবস্থান নিয়েছে। নেতানিয়াহুর জেরুজালেমের বাসভবনের চারদিকে অবস্থান নিয়েছে বিক্ষুব্ধ জনতা। তাদের সঙ্গে দফায় দফায় সংঘর্ষ হয়েছে। এ অবস্থায় পশ্চিমা দেশগুলো উদ্বেগ প্রকাশ করেছে। নেতানিয়াহু তার রাজনৈতিক জীবনে এমন বিরোধিতা, এমন কঠোর আন্দোলনের মুখোমুখি হননি কখনো। এ অবস্থায় তিনি যদি পিছপা না হন, যদি গোঁ ধরেই থাকেন, তাহলে পরিস্থিতি আরও ভয়াবহ হতে পারে। হয়তো তা আঁচ করতে পেরেছেন নেতানিয়াহু। তাই সোমবারই তিনি এ ইস্যুতে ভাষণ দিতে পারেন বলে ইঙ্গিত দিয়েছে ইসরাইলি মিডিয়া। অনলাইন আল জাজিরা বলছে, এমন অবস্থায় সোমবার দিনের শুরুতে উগ্র-ডানপন্থি জোটের সঙ্গে আলোচনায় বসেছিলেন তিনি। পরে বলা হয়েছে, তিনি বিচার বিভাগের আইন সংশোধন পরিকল্পনা স্থগিত করার ঘোষণা দিতে পারেন। সোমবার এ আন্দোলনে যোগ দেন তেল আবিবের বেন গুরিয়ন বিমানবন্দরের স্টাফরা। ফলে ওই বিমানবন্দর থেকে ফ্লাইট ছিল স্থগিত। এর শিকারে পরিণত হন হাজার হাজার ভ্রমণকারী। তুরস্কের জাতীয় পতাকাবাহী টার্কিশ এয়ারলাইন্স ইস্তাম্বুল ও তেল আবিবের মধ্যে সব ফ্লাইট বাতিল করে। ইসরাইলের সাবেক আইনমন্ত্রী ইয়োশি বেইলিন আল জাজিরাকে বলেছেন, আইনের সংস্কার প্রস্তাব ইসরাইলের জন্য ইতিবাচক নয়। এই প্রস্তাব আমাদের গণতন্ত্রের জন্য হুমকি। এর মধ্য দিয়ে ইসরাইলকে আরও দুর্বল করে দেয়া হচ্ছে। এমনিতেই অর্থনৈতিকভাবে ক্ষতির মুখে ইসরাইল। ওদিকে সংস্কার প্রস্তাবের বিরুদ্ধে ক্রমেই উত্তেজনা বৃদ্ধিতে উদ্বেগ প্রকাশ করেছে জার্মান সরকার। মুখপাত্র স্টিফেন হেবেস্ট্রেইট বলেছেন, ইসরাইলের প্রেসিডেন্ট হারজগ যে আহ্বান জানিয়েছেন তা অবশ্যই গুরুত্বের সঙ্গে নিতে হবে। ইসরাইলের একটি ঘনিষ্ঠ মিত্র হিসেবে আমরা সাধারণত তাদের আভ্যন্তরীণ বিষয়ে হস্তক্ষেপ করি না। তবে আমরা উদ্বেগের সঙ্গে লক্ষ্য করছি কয়েকদিনে সেখানে কি ঘটছে।\r\n ', '6421cc3ae8e11.png', 3, 6, 'dvdvdvv', 0, '2023-03-27 17:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `title_1` varchar(255) NOT NULL,
  `image_1` varchar(255) NOT NULL,
  `title_2` varchar(255) NOT NULL,
  `image_2` varchar(255) NOT NULL,
  `title_3` varchar(255) NOT NULL,
  `image_3` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`id`, `title_1`, `image_1`, `title_2`, `image_2`, `title_3`, `image_3`, `create_at`) VALUES
(1, 'a', '6410d5a8ac7a6.png', 's', '6410d5a8ad529.png', 'd', '6410d5a8ae424.png', '2023-03-14 20:14:32'),
(2, 'title 1', '641305f2f047a.png', 'title 2', '641305f2f0d1c.png', 'title 3', '641305f2f15c6.png', '2023-03-16 12:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `icon`, `created_at`) VALUES
(1, 'E-Sports', 'sportsf', '<i class=\"fa-solid fa-baseball\"></i>', '2022-12-29 13:29:13'),
(2, 'Fashion', 'fashion', '<i class=\"fa-solid fa-shirt\"></i>', '2022-12-29 13:29:26'),
(3, 'Web Design', 'web design', '<i class=\"fa-solid fa-code\"></i>', '2022-12-29 13:29:51'),
(4, 'Programming', 'programming', '<i class=\"fa-solid fa-laptop-code\"></i>', '2022-12-29 13:30:04'),
(5, 'Food', 'food', '<i class=\"fa-solid fa-bowl-food\"></i>', '2022-12-29 13:30:29'),
(6, 'Politics', 'politics', '<i class=\"fa-solid fa-flag\"></i>', '2022-12-29 14:30:12'),
(7, 'Technology', 'technology', '<i class=\"fas fa-microchip\"></i>', '2022-12-29 14:30:29'),
(8, 'Freelancing', 'freelancing', '<i class=\"fas fa-sack-dollar\"></i>', '2022-12-29 14:30:41'),
(9, 'Photography', 'photography', '<i class=\"fas fa-camera-retro\"></i>', '2023-01-23 17:44:45'),
(14, 'Technology', 'Technology', '<i class=\"fas fa-microchip\"></i>', '2023-01-27 16:09:31'),
(15, 'Medical', 'Madical', '<i class=\"fa-solid fa-suitcase-medical\"></i>', '2023-03-14 18:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `city` varchar(32) NOT NULL,
  `zip` varchar(32) NOT NULL,
  `country` varchar(32) NOT NULL,
  `state` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `pro_image`, `role`, `active`, `address`, `city`, `zip`, `country`, `state`, `created_at`) VALUES
(5, 'Md. Bellal Hossain', 'bellal129', 'admin129@gmail.com', '$2y$10$euKkenGnYN8V2osQNpIwTeg6ZGoysPLyW1tckSQjeYHaOyqkIwKra', '10203040506', 'পুলিশ-কনস্টেবল-নিয়োগ-২০২২-সার্কুলার-scaled.jpg', 1, 3, '', '', '', '', '', '2023-03-11 17:23:51'),
(6, 'Md. Bellal Hossain 563', 'bellal563', 'billalhosen563@gmail.com', '$2y$10$4luowqLCRH3SbtwDzKx3f.2WCOpyMWXDdKO05wc7aly7Nyyxq7kpa', '1111111111', '31r03j-5WcL.jpg', 1, 3, '', '', '', '', '', '2023-03-11 17:26:48'),
(7, 'Md. Bellal Hossain14', 'bellal_123', 'billalhosen_4632@gmail.com', '$2y$10$KbEe91bCyZNn6q60nS7VieN6TvkKz8CGjyVCOHM8EvBd5VGduLeTC', '12369741', 'Lionel_Messi_soccer_sports_barcelona_argentina_1920x1080.jpg', 2, 3, '', '', '', '', '', '2023-03-12 11:43:55'),
(8, 'Md. Bellal Hossain', 'bellal1234', 'billalhosen1234@gmail.com', '$2y$10$1TI/mWsGCPpsFdASYrPlGOX5CGuQrCRHyacpnd6RXmgoiuAiqd9vy', '+8801735301534', ' ', 2, 3, '', '', '', '', '', '2023-03-19 13:16:40'),
(9, 'Md. Bellal Hossain', 'billalhosen1236', 'billalhosen1236@gmail.com', '$2y$10$87Q3myTgnPaVG12aS76eUeF5AJ2Od9ap4lN0HOL6NPbgM.LAn6OKq', '+8801735301236', '6417532d7d3c8_WIP-6th-anniversary-wallpaper-dark.jpg', 1, 3, 'Satbaria, Sujanagar, Pabna', 'Pabna', '6662', 'Bangladesh', 'Pabna', '2023-03-19 18:23:41'),
(10, 'Md. Bellal Hossain 1122', 'billalhosen1122', 'billalhosen1122@gmail.com', '$2y$10$4Y2tFULs.wtN9QY9bYvGIu49C408peosZhSbo5U/UiHdmZ0FYdQ62', '+8801735301122', '64175543615fc.png', 1, 3, 'Satbaria, Sujanagar, Pabna', 'Pabna', '6662', 'Bangladesh', 'Pabna', '2023-03-19 18:32:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
