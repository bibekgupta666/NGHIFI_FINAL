-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 03:43 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nghifi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Apple', 'All kind of Apple Products.'),
(2, 'Samsung', 'All kind of Samsung Products.'),
(3, 'Dell', 'All kind of Dell Products.'),
(4, 'HP', 'All kind of HP Products.'),
(5, 'MSI', 'All kind of MSI Products'),
(6, 'Sony', 'All kinds of Sony electronics');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(225) NOT NULL,
  `customer_email` varchar(225) NOT NULL,
  `customer_pass` varchar(225) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(225) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'abc', 'abc@gmail.com', 'abc1', 'AUS', 'MEL', '0402991210', '123 King st', 'Array', ''),
(2, 'Abc', 'example@gmail.com', 'example', 'Aus', 'Melb', '042323442', '120 Spencer St, Melbourne 3000', 'Array', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `data`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 2, '2019-05-18 07:12:07', 'Samsung s10', 'product_front.jpg', 'product_hang.jpg', 'product-top.jpg', 1500, 'samsung', 'Samsung phone are great.'),
(2, 3, 5, '2019-05-18 05:42:19', 'MSI LAPTOP', 'msi1.jpg', 'msi2.jpg', 'msi3.jpg', 1200, 'msi', 'It is Msi Laptop.'),
(3, 1, 2, '2019-05-18 02:43:08', 'Google Pixel 3 XL hang', 'Google_Pixel_3XL_hang_1.jpg', 'Google_Pixel_3XL_hang_2.jpg', 'Google_Pixel_3XL_hang_3.jpg', 900, 'googlePixel3XL', 'Google Pixel 3 XL New Generation of Camera'),
(4, 5, 4, '2019-05-18 06:08:36', 'HP Pavillion 27', 'HP_Pavilion_27_1.jpg', 'HP_Pavilion_27_2.jpg', 'HP_Pavilion_27_1.jpg', 2500, 'hpPavillion27', 'HP Pavillion All in One Desktop'),
(5, 2, 1, '2019-05-18 05:40:11', 'Air Pod', 'AirPod_1.jpg', 'AirPod_2.jpg', 'AirPod_3.jpg', 250, 'airPod', 'Wireless Ear Phone'),
(6, 4, 1, '2019-05-18 05:49:58', 'IPad Air', 'Ipad_Air_1.jpg', 'Ipad_Air_2.jpg', 'Ipad_Air_3.jpg', 447, 'ipadAir', 'Powerfull and Light'),
(7, 3, 3, '2019-05-18 06:37:23', 'Dell XPS', 'Dell_XPS_1.jpg', 'Dell_XPS_2.jpg', 'Dell_XPS_3.jpg', 4000, 'dellXps', '2 in 1 Laptop'),
(8, 1, 2, '2019-06-14 01:33:12', 'Samsung Galaxy S10E', 'galaxys10e.jpg', 's10e.jpg', 'gs10eside.jpg', 1199, 'samsung', 'Samsung Galaxy S10\'s e variant which is smaller in size.'),
(10, 1, 1, '2019-06-14 01:55:47', 'iPhone 7 Plus', 'iphone7-plus-black.png', '50045074_478636.png', '516825-iphone-7-plus.jpg', 929, 'apple iphone', 'iPhone 7 Plus'),
(13, 3, 3, '2019-06-14 02:12:59', 'Dell Inspirion 15', 'LargePNG.png', 'sp17803489_sc7.jpeg', 'dell-inspiron-15-5548-review_thumb800.jpg', 1629, 'dell inspirion', 'Dell laptop'),
(17, 3, 4, '2019-06-14 02:27:50', 'HP Spectre x360', '4XJ22EA-ABU_9_1750x1285.jpg', 'c06138578_390x286.jpg', '4XJ22EA-ABU_3_390x286.jpg', 1999, 'HP spectre', 'Convertible HP Spectre'),
(18, 1, 1, '2019-06-20 09:04:51', 'iPhone X', 'SMTMQAC2RMA-1_92596f1e.jpg', 'main_photo_-_crystal_2048x2048.jpg', '51XDRzsKL9L._SY445_.jpg', 1500, 'Apple iPhone XR', 'The latest iPhone X from Apple.'),
(19, 1, 2, '2019-06-20 09:10:35', 'Samsung Galaxy Note 9', '68799.jpg', '6285918cv11d.jpg', 'samsung-led-view-cover-for-samsung-galaxy-note-9-blue-0af.jpg', 1799, 'Samsung galaxy note 9', 'Galaxy Note has always put powerful technology in the hands of those who demand more. Now, the all new Galaxy Note9 surpasses even these high expectations, focusing on what matters most in today’s always-on, mobile world.'),
(20, 1, 2, '2019-06-20 09:13:40', 'Huwawei P30', '279899-L-LO.jpg', 'pic_familyP30_md.jpg', '4.jpg', 1399, 'huwawei p30 chinese', 'Zoom in to explore the mystery of the celestial at night, watch an eagle hovering over trees or examine the delicate details of crystal. Capture the best things in the moment and create your vision for the future. The Huawei P30 Pro is accentuating a new peak of smartphone photography.'),
(21, 1, 2, '2019-06-20 09:17:31', 'Samsung Galaxy A70', 'samsung-galaxy-a70-128gb-4g-dual-sim-black.jpg', 'samsung-galaxy-a70-black.jpg', 'samsung-galaxy-a70-1.jpg', 279, 'samsung android galaxy a70', 'A display that gives more room to play The Galaxy A70s maximized 6.7-inch screen brings you even closer to the things you love by bringing it all to life on the FHD+ sAMOLED Infinity-U display. Whether streaming or watching your favorite shows, the expansive 20:9 aspect ratio is a viewing experience that takes you to new worlds. Designed for you, designed for live The Galaxy A70 has a minimal look thanks to its integrated sensors and the On-Screen Fingerprint.'),
(23, 1, 2, '2019-06-20 09:51:43', 'Samsung Galaxy s9', '81wLkQ64HXL._SX522_.jpg', 'samsung_sm_g960uzkaxaa_samsung_galaxy_s9_1394702.jpg', '50052693_572429.png', 1599, 'Samsung galaxy s9', 'The Galaxy S9 delivers an enhanced entertainment experience with powerful stereo speakers tuned by AKG, surround sound supported by Dolby Atmos and a refined edge-to-edge Infinity Display - a key staple in Samsung\'s design heritage. In addition, the Galaxy S9 comes with the SmartThings app, which unites Samsung\'s IoT services into one single, smart experience. Today\'s cameras are for more than taking pictures - they\'re for connecting and communicating.'),
(24, 2, 6, '2019-06-20 09:52:16', 'PlayStation 4 1TB', '265761-L-HI.jpg', '265764-L-HI.jpg', '265763-L-HI.jpg', 499, 'ps4 play station 4 playstation', 'Gamin console'),
(25, 2, 5, '2019-06-20 09:52:23', 'Xbox One X 1TB Console', '227296-L-HI.jpg', '227295-L-HI.jpg', '227294-L-HI.jpg', 499, 'xbox gaming console one x microsoft', 'Microsoft\'s Xbox One X built for the ultimate gaming experience.'),
(26, 2, 6, '2019-06-20 09:52:28', 'Nintendo Switch', '204501-L-HI.jpg', '204503-L-HI.jpg', '204504-L-HI.jpg', 399, 'nintendo switch console', 'best portable gaming console inthe market'),
(27, 2, 6, '2019-06-20 09:52:33', 'BB-8 App control', '261264-L-HI.jpg', '261265-L-HI.jpg', '261266-L-HI.jpg', 99, 'bb-8 star wars app control with armband', 'Introducing the Star Wars Force Band™ by Sphero. Like a true Jedi, you can now control your BB-8™ App-Enabled Droid™ with just a wave of your hand. Designed with an authentic Star Wars look and feel, the Force Band attaches to your wrist and allows you to use authentic Jedi Force gestures to operate BB-8.'),
(28, 2, 5, '2019-06-20 09:52:37', 'Sphero BOLT App Enabled Robotic Ball', '259738-L-HI.jpg', '259739-L-HI.jpg', '259740-L-HI.jpg', 99, 'robot ball robotic app', 'Sphero BOLT is an app-enabled robotic ball that provides endless opportunities to be creative and have fun while learning. Program with the Sphero Edu app from nearly any mobile or desktop device, discover awesome community-created activities, or just drive and play. BOLT was built to shine with a brilliant 8x8 LED Matrix that animates and displays real-time data. Create and customize games and learn to code by drawing on your screen, using Scratch™ blocks, or writing JavaScript text programs.'),
(29, 2, 5, '2019-06-20 09:52:41', 'Audio Technica LPW40WN Fully Manual Turntable', '278749-L-HI.jpg', '278750-L-HI.jpg', '278751-L-HI.jpg', 599, 'turntable vinyl', 'The AT-LPW40WN is a fully manual, belt-drive turntable designed to give you optimal high-fidelity audio reproduction from vinyl. It features an aesthetically pleasing anti-resonance MDF (medium density fiberboard) plinth with simulated walnut wood veneer to limit low-frequency acoustical feedback and a sensor-monitored motor to ensure accurate platter rotation speeds at 33-1/3 and 45 RPM.'),
(30, 2, 6, '2019-06-20 09:52:46', 'Pioneer DJM250 MK2 DJ Mixer', '209175-L-HI.jpg', '209174-L-HI.jpg', '209176-L-HI.jpg', 548, 'pioneer dj equipment mixer', 'The Pioneer DJM-250MK2 has inherited some of the professional features of the popular DJM-900NXS2, such as the Magvel crossfader and Sound Color FX filter. Straightforward controls, a clear layout, and dedicated 3-band isolators let you scratch and mix instinctively.'),
(31, 2, 6, '2019-06-20 09:52:51', 'DJI Spark Mini Drone + Controller Combo (Alpine White)', '268829-L-HI.jpg', '268830-L-HI.jpg', '268831-L-HI.jpg', 629, 'drone dji spark fly', 'Meet Spark, a brand-new, revolutionary mini drone that fits in the palm of your hand. Its powerful, stabilized camera uses multiple easy-to-use shooting modes for incredibly eye-catching photos and videos. With intuitive functions like QuickLaunch, FaceAware, and PalmControl, Spark gives you a truly immersive flying experience.\r\n \r\nPush your creative boundaries and order Spark today.'),
(33, 3, 1, '2019-06-20 09:54:45', '\r\nApple MacBook Pro 13-inch with Touch Bar 512GB (Silver) [2019]', '286197-L-HI.jpg', '286199-L-HI.jpg', '286198-L-HI.jpg', 2999, 'apple macbook pro retina ', 'MacBook Pro has a new eighth-generation quad-core Intel processor with Turbo Boost up to 4.1GHz. A brilliant and colourful Retina display with True Tone technology for a more true-to-life viewing experience. The latest Apple-designed keyboard. And the versatile Touch Bar for more ways to be productive. It’s Apple’s most powerful 13-inch notebook. Pushed even further.'),
(34, 3, 1, '2019-06-20 09:56:30', 'Apple MacBook Air 13-inch with Retina display 256GB (Silver)', '267431-L-HI.jpg', '267432-L-HI.jpg', '267433-L-HI.jpg', 2149, 'apple macbook air retina', 'Available in silver, space grey and gold, the new thinner and lighter MacBook Air features a stunning Retina display, Touch ID, the latest Apple-designed keyboard, and a Force Touch trackpad — all housed in an iconic wedge design made from 100 per cent recycled aluminium.2 And with all-day battery life, MacBook Air is your perfectly portable do-it-all notebook.'),
(35, 3, 1, '2019-06-20 09:58:38', 'Apple MacBook Air 13-inch with Retina display 256GB (Gold)', '267417-L-HI.jpg', '267418-L-HI.jpg', '267419-L-HI.jpg', 2149, 'apple macbook air', 'Apple Macbook Rose Gold'),
(36, 3, 4, '2019-06-20 10:11:40', 'HP Pavilion x360 14-dh0046TU 14\" 2-in-1 Touchscreen Laptop', '281170-L-HI.jpg', '281171-L-HI.jpg', '281172-L-HI.jpg', 1699, 'Key Features\r\n\r\n14\" Full HD IPS micro-edge WLED-backlit touchscreen display\r\n\r\n1920 x 1080 Resoultion\r\n\r\nIntel® Core™ i7 8565U (1.8 GHz- 4.6 GHz, 8 MB cache, 4 cores)\r\n\r\n8GB RAM\r\n\r\n256GB SSD\r\n\r\nWi-Fi 802.11 ac\r\n\r\nBluetooth 5\r\n\r\nBang & Olufsen dual speaker\r\n\r\nHP Multi-Format Digital Media Card Reader\r\n\r\nHP Wide Vision HD Camera with dual array digital microphone\r\n\r\n1 x USB 3.1 Gen 1 Type-C™\r\n\r\n2 x USB 3.1 Gen 1 Type-A\r\n\r\n1 x HDMI\r\n\r\nActive Pen included\r\n\r\nWindows 10 Home', 'Key Features\r\n\r\n14\" Full HD IPS micro-edge WLED-backlit touchscreen display\r\n\r\n1920 x 1080 Resoultion\r\n\r\nIntel® Core™ i7 8565U (1.8 GHz- 4.6 GHz, 8 MB cache, 4 cores)\r\n\r\n8GB RAM\r\n\r\n256GB SSD\r\n\r\nWi-Fi 802.11 ac\r\n\r\nBluetooth 5\r\n\r\nBang & Olufsen dual speaker\r\n\r\nHP Multi-Format Digital Media Card Reader\r\n\r\nHP Wide Vision HD Camera with dual array digital microphone\r\n\r\n1 x USB 3.1 Gen 1 Type-C™\r\n\r\n2 x USB 3.1 Gen 1 Type-A\r\n\r\n1 x HDMI\r\n\r\nActive Pen included\r\n\r\nWindows 10 Home'),
(37, 3, 3, '2019-06-20 10:10:27', 'Dell Iinspiron 14 5000 14\" 2-in-1 Laptop [Ryzen5]', '281529-L-HI.jpg', '281530-L-HI.jpg', '281531-L-HI.jpg', 1299, 'Dell laptop touch display', 'Overview\r\n\r\nWith four flexible modes your 2-in-1 is designed for ultimate convenience—laptop for typing, tablet for drawing or writing with the available Active Pen and tent or media modes for easy entertainment and gaming in small spaces. '),
(38, 4, 1, '2019-06-20 10:13:04', 'Apple iPad Pro 12.9-inch 512GB Wi-Fi (Space Grey) [3rd gen]', '267349-L-HI.jpg', '267350-L-HI.jpg', '267350-L-HI.jpg', 2049, 'IPAD PRO', 'he new 12.9-inch iPad Pro features an advanced Liquid Retina display that goes from edge to edge.1 Face ID, so you can securely unlock iPad Pro, log in to apps and pay with just a glance. The A12X Bionic chip, which is faster than most PC laptops and easily runs pro apps. All-day battery life.3 Over a million apps on the App Store, including augmented reality experiences. And the new Apple Pencil and Smart Keyboard Folio, which help you be even more creative and productive.2 It will make you rethink what iPad is capable of — and what a computer is capable of.'),
(39, 4, 1, '2019-06-20 10:14:28', 'Apple iPad Air 256GB Wi-Fi + Cellular (Space Grey)', '279438-L-HI.jpg', '279439-L-HI.jpg', '279439-L-HI.jpg', 1199, 'ipad air', 'iPad Air is thin, light and powerful. It features the A12 Bionic chip with Neural Engine, which uses real-time machine learning to transform the way you experience photos, gaming, augmented reality (AR) and more. A beautiful 10.5-inch Retina display with True Tone for easier viewing in all kinds of lighting environments.1 Support for Apple Pencil and Smart Keyboard.2 An 8-megapixel back camera and 7-megapixel FaceTime HD camera. Touch ID and Apple Pay. And with all-day battery life3, fast Wi-Fi and Gigabit-class LTE4, and over a million iPad apps on the App Store5, iPad Air is ready for any task, anywhere.'),
(40, 4, 2, '2019-06-20 10:16:09', 'Samsung Galaxy Tab A 10.1\" Wi-Fi 32GB (Black)', '283186-L-HI.jpg', '283187-L-HI.jpg', '283188-L-HI.jpg', 349, 'Next-generation fun in tablet form. With a screen and specs that make it the perfect media tablet, it\'s just 7.5mm thick underneath a premium metal finish.', 'Next-generation fun in tablet form. With a screen and specs that make it the perfect media tablet, it\'s just 7.5mm thick underneath a premium metal finish.'),
(41, 4, 2, '2019-06-20 10:17:26', 'Samsung Galaxy Tab S5e 10.5\" 4G 64GB ', '283195-L-HI.jpg', '283196-L-HI.jpg', '283197-L-HI.jpg', 849, 'Samsung galaxy tab', 'Lightweight design to keep you comfortably connected to what you enjoy most. At 5.5mm thin and weighing less than 400g. Galaxy Tab S5e is light enough to comfortably stay with you. Relax or roam free watching movies or control your home appliances using SmartThings without feeling bored or bogged down.'),
(42, 4, 4, '2019-06-20 10:19:21', 'Lenovo Tab P10 10.1\" Tablet', '266549-L-HI.jpg', '266550-L-HI.jpg', '266551-L-HI.jpg', 379, 'Lenovo tablet not yoga', 'The Lenovo P10 is the premium family tablet, with it\'s dual-glass design and powerful features - it\'s the ultimate entertainment tablet.\r\n\r\nBrilliant Full HD Display lets you see every detail, from family photos to action scenes from your favourite movies.\r\n\r\nExperience astonishing sound with four front Dolby Atmos speakers for a truly immersive experience.\r\n\r\nHandcrafted to perfection, with an incredible dual-glass design, all metal framing and narrower bezels - it\'s the ultimate premium tablet experience.'),
(43, 4, 2, '2019-06-20 10:21:02', 'Samsung Galaxy Tab A 10.1\" Wi-Fi 128GB', '283183-L-HI.jpg', '283184-L-HI.jpg', '283185-L-HI.jpg', 464, 'galaxy tab', 'Next-generation fun in tablet form. With a screen and specs that make it the perfect media tablet, it\'s just 7.5mm thick underneath a premium metal finish'),
(44, 4, 3, '2019-06-20 10:23:15', 'Wacom Cintiq Pro 13\" with Wacom Pro Pen 2', '247160-L-HI.jpg', '247161-L-HI.jpg', '247162-L-HI.jpg', 1249, 'Wacom Cintiq Pro 13\" with Wacom Pro Pen 2', 'Wacom Cintiq Pro is designed for professional artists and designers who demand an intuitive, pen-on-screen connection to their work. Whether you work on Mac or PC, Wacom Cintiq Pro featuring Wacom Pro Pen 2 is our most  advanced creative pen display ever. Live. Dare. Create.'),
(45, 5, 5, '2019-06-20 10:24:45', 'Lenovo Yoga A940 AIO 27\" Rotating 4K All-in-One PC', '281841-L-HI.jpg', '281844-L-HI.jpg', '281845-L-HI.jpg', 4499, 'lenovo desktop', 'Meet the Lenovo™ Yoga™ A940. Featuring a 27\" rotating 4K display with pen support, a content creation dial and other innovative solutions, it’s an All-in-One device engineered to provide an\r\nultimate workspace for your creativity.'),
(46, 5, 1, '2019-06-20 10:26:12', 'Apple iMac with Retina 5K display 27-inch', '279499-L-HI.jpg', '279500-L-HI.jpg', '279836-L-HI.jpg', 3099, 'Apple iMac desktop 5k', 'iMac performance is at an all-time high with new eighth-generation Intel Core processors; powerful Radeon Pro 500X-series graphics; Thunderbolt 3 (USB-C) connectivity; and stunning Retina 5K displays with 1 billion colours and 500 nits of brightness, for vibrant images and razor-sharp text.'),
(47, 5, 4, '2019-06-20 10:28:07', 'HP Pavilion 24-XA0068A 24\" A6 All-in-One PC', '284596-L-HI.jpg', '284597-L-HI.jpg', '284598-L-HI.jpg', 1299, '', 'Key Features\r\n\r\n23.8\" diagonal Full HD touch display\r\n\r\nAMD Dual-Core A6-9230 APU (2.6 GHz base frequency, up to 2.8 GHz burst frequency, 1 MB cache)\r\n\r\n8GB RAM\r\n\r\n1TB HDD 7200RPM SATA 2.5in\r\n\r\nAMD Radeon R4 Graphics\r\n\r\n3 x USB3.1 Gen1 Type A\r\n\r\n2 x USB3.1 Gen1 Type-C\r\n\r\nWi-Fi 802.11a/b/g/n/ac\r\n\r\nBluetooth 4.2\r\n\r\n3-in-1 memory card reader\r\n\r\nWireless keyboard & mouse\r\n\r\nWindows 10 Home 64'),
(48, 5, 5, '2019-06-20 10:29:23', 'Acer Aspire C27 27\" i5 All-in-One PC', '285185-L-HI.jpg', '285186-L-HI.jpg', '285187-L-HI.jpg', 1499, 'HP Desktop pavilion', 'Key Features\r\n\r\n27\" Full HD IPS display\r\n\r\n1920 x 1080 resolution\r\n\r\nIntel Core i5-8250U quad core processor  (1.6 GHz base frequency, up to 3.4 GHz burst frequency, 6MB cache)\r\n\r\n8GB DDR4 (1 x 8GB) installed\r\n\r\n128GB SSD + 1TB HDD\r\n\r\nNVIDIA GeForce MX130 2GB\r\n\r\nWi-Fi 802.11ac\r\n\r\nBluetooth\r\n\r\nHD high-sense webcam\r\n\r\n2x USB 3.1 Gen 1\r\n\r\n2x USB 2.0'),
(49, 5, 4, '2019-06-20 10:32:06', 'HP Pavilion 24-XA0069A 24\"', '285042-L-HI.jpg', '285043-L-HI.jpg', '285044-L-HI.jpg', 2299, 'hp desktop pavilion', 'Key Features\r\n\r\n23.8\" diagonal Full HD touch display\r\n\r\nIntel® Core™ i7-8700T (2.4 GHz base frequency, up to 4.6 GHz with Intel® Turbo Boost Technology, 12 MB cache, 6 cores)\r\n\r\n8GB RAM + 16GB Intel Optane memory\r\n\r\n2TB HDD storage\r\n\r\nNVIDIA GeForce MX130 graphics (2GB GDDR5)\r\n\r\n3 x USB3.1 Gen1 Type A\r\n\r\n2 x USB3.1 Gen2 Type-C\r\n\r\nWi-Fi 802.11a/b/g/n/ac\r\n\r\nBluetooth 4.2\r\n\r\nHP Truevision FHD IR camera with dual array digital microphone\r\n\r\nWireless keyboard and mouse\r\n\r\nWindows 10 Home'),
(50, 5, 3, '2019-06-20 10:35:51', 'HP 90-0068A 1TB Ryzen 3 Desktop Tower', '284574-L-HI.jpg', '284575-L-HI.jpg', '284576-L-HI.jpg', 699, 'hp desktop tower', 'Key Features\r\n\r\nAMD Ryzen™ 3 PRO 2100GE (3.2 GHz base frequency, 4 MB cache, 2 cores)\r\n\r\n4GB RAM\r\n\r\n1TB HDD 7200RPM SATA 3.5in\r\n\r\nAMD Radeon™ Vega 8 Graphics\r\n\r\n4 x USB3.1 Gen1 Type A\r\n\r\n4 x USB2.0 Type A\r\n\r\nWi-Fi 802.11a/b/g/n/ac\r\n\r\nBluetooth 4.2\r\n\r\nDVD Writer\r\n\r\nWindows 10 Home 64'),
(51, 5, 3, '2019-06-20 10:37:23', 'Dell Inspiron AMD Gaming Desktop', '267523-L-HI.jpg', '267523-L-HI.jpg', '267523-L-HI.jpg', 1999, 'Dell Inspirion Gaming tower', 'Key Features\r\n\r\nAMD Ryzen™ 7 2700X Processor (8C/16T, 20MB Cache, 4.3 GHz Max Boost)\r\n\r\n8GB RAM\r\n\r\n256GB M.2 SSD + 1TB Hard Drive\r\n\r\nAMD Radeon™ RX 580X with 8GB GDDR5 Graphics Memory\r\n\r\n1 x HDMI\r\n\r\n5 x SuperSpeed USB 3.1 Gen 1 Type-A \r\n\r\n1 x SuperSpeed USB 3.1 Gen 1 Type-C\r\n\r\n460W APFC Chassis with Lighting, Air Cooler and Optical Drive\r\n\r\nBluetooth 4.1\r\n\r\nWi-Fi 802.11ac\r\n\r\nWindows 10'),
(52, 5, 4, '2019-06-20 10:39:34', 'Lenovo IdeaCentre AIO 520 23.8\"', '283052-L-HI.jpg', '283053-L-HI.jpg', '283054-L-HI.jpg', 898, 'The Lenovo™ IdeaCentre™ AIO 520 is as elegant as it is functional. Featuring a widely adjustable borderless 24\" display and powerful performance, this all-in-one is the perfect solution for no-hassle home computing.', 'The Lenovo™ IdeaCentre™ AIO 520 is as elegant as it is functional. Featuring a widely adjustable borderless 24\" display and powerful performance, this all-in-one is the perfect solution for no-hassle home computing.'),
(53, 5, 4, '2019-06-20 10:41:08', 'HP 24-F0158A AIO 24\"', '284578-L-HI.jpg', '284579-L-HI.jpg', '284581-L-HI.jpg', 1299, 'Hp all in one', 'Key Features\r\n\r\n23.8\" Full HD Anti-Glare WLED display\r\n\r\nIntel Core i3-8130U Dual Core\r\n\r\n8GB RAM\r\n\r\n1TB HDD 7200RPM SATA 3.5in\r\n\r\nIntel UHD Graphics 620\r\n\r\n2 x USB2.0 Type A\r\n\r\n2 x USB3.1 Gen1 Type A\r\n\r\nWi-Fi 802.11a/b/g/n/ac\r\n\r\nBluetooth 4.2\r\n\r\n3-in-1 memory card reader\r\n\r\nDVD Writer\r\n\r\nWindows 10 Home 64');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Phone', 'All kinds of phones including latest releases.'),
(2, 'Accessories', 'All Kind of accessories'),
(3, 'Laptop', 'All kind of Laptop.'),
(4, 'Tablet', 'All kind of Tablet.'),
(5, 'Desktop', 'All kind of Desktop.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide1.jpg'),
(2, 'Slide number 2', 'slide2.jpg'),
(3, 'Slide number 3', 'slide3.jpg'),
(4, 'Slide number 4', 'slide4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
