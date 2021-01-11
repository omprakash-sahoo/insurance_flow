-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 08:12 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance_flow`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `crop_id` int(11) NOT NULL,
  `crop` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `botanical_name` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `climatic_feature` text DEFAULT NULL,
  `nutritional_value` text DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `production_mt` varchar(255) DEFAULT NULL,
  `perils` varchar(255) DEFAULT NULL,
  `nutrient` varchar(255) DEFAULT NULL,
  `menu_image` varchar(22) DEFAULT NULL,
  `profile_image` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`crop_id`, `crop`, `group_name`, `botanical_name`, `family`, `climatic_feature`, `nutritional_value`, `area`, `production_mt`, `perils`, `nutrient`, `menu_image`, `profile_image`) VALUES
(1, 'lemon / mandrin / sweet orange', 'Fruits', 'citrus sps.', 'rutaceae', 'Citrus fruits have a prominent place among popular, extensively grown tropical and subtropical fruits. Subtropical 500-1500 m MSL elevation. A rainfall of about 150 cm to 250 cm is required. A medium or light loam with a pH 5.5 to 6.5 would be ideal to gr', 'Citrus fruits contain considerable amounts of Vitamin C. Fruits are also good source of Vitamin and P. The mild bitterness in juice is due to the presence of glucoside called Naringin which is said to have a medicinal value. The rind of the citrus fruits is rich in pectin and essential oils.', '286', '3148', '', '', 'lemon-m.png', 'lemon-p.png'),
(2, 'grape', 'Fruits', 'vitis vinifera', 'vitaceae', 'It is a fruit of semi arid subtropical regions requiring warm dry summer and a cool rainy winter. During winter the grapes shed off their leaves and take rest. During spring they put forth new leaves and flowers. The fruits mature during summer when there', '', '139', '2920', '', '', 'grape-m.png', 'grape-p.png'),
(3, 'banana', 'Fruits', 'musa  paradisiaca', 'scitaminae', 'Banana is one of the oldest fruit known to mankind and also important food for man.Its is also called as ?Apple of paradise?. Humid tropic plant. Temperature range of 10?C to 40?C with an average of 23?C. Deep well ? drained soil with abundant organic mat', 'Rich source of energy (137 K. Ca/100g)\nIt is a good laxative.', '884', '30808', '', '', 'banana-m.png', 'banana-p.png'),
(4, 'custard apple', 'Fruits', 'annona squamosa', '', 'A warm climate (not very hot) with high humidity and milld winter will be the ideal climatic condition for the best growth.An annual rainfall of 500-750 mm is adequate ofr growth and fruiting.Annonas can be grown in varied soil right from heavy claly upto', '', '46', '401', '', '', 'custardapple-m.png', 'custard apple-p.png'),
(5, 'watermelon', 'Fruits', 'citrullus lanatus', 'cucurbitaceae', 'Water melon is a warm season crop. It cannot tolerate high cold and frost. It requires a minimum of 180C temperature for seed germination and 240to 270 C for growth and development. There should be high temperature at the time of ripening for producing go', 'Water melon contains 95% of water and is a richest iron containing cucurbitaceous crop.', '101', '2520', '', '', 'watermelon-m.png', 'watermelon-p.png'),
(6, 'ber', 'Fruits', 'zizyphus mauritiana', 'rhamnaceae', 'India ber Zizyphus mauritiana is to grow in tropical.Ber is an ideal fruit tree for arid and semiarid regions where copious irrigation is impossible. It can tolerate a high temperature of even 400C.But below freezing temperature is injurious.It can be gro', 'Ber has  5.4-8.0% sugar and 85-95 mg of Ascorbic\nacid (Vit. C) per 100g.', '50', '513', '', '', 'ber-m.png', 'ber-p.png'),
(7, 'guava', 'Fruits', 'psidium guajava', 'myrtaceae', 'It is a hardy fruit which can be grown in poor alkaline or poorly drained soils without any\nmanuring or irrigation. It can grow in soils with pH ranging from 4.5 to 7.5 but the best soils are\ndeep, friable and well drained. It is a subtropical and tropica', 'It is very rich and cheap source of vitamin C (100 to 260 mg per 100 gm of the pulp) and contains a fair amount of calcium. It makes an excellent jelly and does not lose the vitamin C in the preserved forms.', '265', '4054', '', '', 'guava-m.png', 'guava-p.png'),
(8, 'jackfruit', 'Fruits', 'artocarpus heterophyllus', 'mulberry ', 'Jack grows well and gives food yield in warm humid climate of hill slopes and hot humid\nclimate of plains. From sea level upto an elevation of 1200 M jack can be grown successfully. A\ntemperature range of 220-350 C will be ideal. It can bot tolerate frost', 'The fleshy carpel (which is botanically the perianth) is the edible portion. Hundred gram edible portion contains 19.8g carbohydrate mainly as sugars, 1.9f protein, 0.1f fat, 1.1 g fibre, 20 mg calium, 41 mg phosphorus 0.56 mg iron, 175 mg carotene (Vit. A), 0.03 mg thiamine, 0.13 mg riboflavin, 0.4mg niacin and 7 mg vitamin C.', '185', '1830', '', '', 'jackfruit-m.png', 'jackfruit-p.png'),
(9, 'mango', 'Fruits', 'mangifera indica', 'anacardiaceae', 'Mango can be grown on a wide variety of soils under varied climatic conditions. It can be\ngrown from alluvial to lateritic soils except in black cotton soil having poor drainage. It grows\nwell in soils with slightly acidic pH. It does not perform well in ', ' Mangos contain over 20 different vitamins and minerals, helping to make them a superfood. 3/4 cup of mango provides 50% of our daily vitamin C, 8% of Vitamin A and 8% of  vitamin B6.', '2258', '21822', '', '', 'mango-m.png', 'mango-p.png'),
(10, 'muskmelon', 'Fruits', 'cucumis melo', 'cucurbitaceae', 'It requires hot and dry climate. Optimum temperature 27 to 300C. short days promote female flowers. High temperature, low humidity, plenty of sun shine are essential for proper ripening, high sugar content. Plants are sensitive to low temperature and fros', '', '54', '1231', '', '', 'muskmelon-m.png', 'muskmelon-p.png'),
(11, 'papaya', 'Fruits', 'carica papaya', 'caricaceae', 'It does well in varied soil types, the best performance is observed on loams of uniform texture\nupto 1.8 m in depth. The most important requirement is that the soil should have good drainage.\nEven two to three cm of water stagnation around the tree for a ', 'Papaya is a wholesome fruit and is rich in vit-A (2000 IU/100g).', '138', '5989', '', '', 'papaya-m.png', 'papaya-p.png'),
(12, 'pineapple', 'Fruits', 'ananas sativus', 'bromeliaceae', 'Mild tropical climate as found in the humid hill slopes is best suited. Can be\ngrown in plains under shade. Elevation from 500 m to 700 m is ideal. A light well drained soil\nwith pH 5.5 to 7.0 is preferable. Heavy soils can also be used if drainage facili', '', '103', '1706', '', '', 'pineapple-m.png', 'pineapple-p.png'),
(13, 'pomegranate', 'Fruits', 'punica granatum', 'punicaceae', 'Despite adapted to a wide range of climatic conditions, pomegranate yields the best quality fruits in areas of cool winter and hot dry summer.For proper fruit development and maturity and sweetness, a temperature of 35 ? 38 0 C is needed. Under humid cond', 'Pomegranate is a rich source of carbohydrate (14.5%), protein (1.6%), calcium (10mg/100g), phosphorus (70mg/ 100g), iron (0.3 mg/100g) and vitamin C (65mg/100g)', '234', '2845', '', '', 'pomegranate-m.png', 'pomegranate-p.png'),
(14, 'sapota', 'Fruits', 'manilkhara achras', 'sapotaceae', 'Sapota being a tropical fruit crop can be grown from sea level upto 1200 M. It prefers a\nwarm and moist weather and grows in both dry and humid areas. Coastal climate is the best\nsuited. Areas with an annual rainfall of 1250-2500 mm are highly suitable. T', '', '97', '1176', '', '', 'sapota-m.png', 'sapota-p.png'),
(15, 'redgram', 'Pulses', 'cajanus cajan', 'leguminaceae', 'Pigeonpea is predominantly a crop of tropical areas mainly cultivated in semi arid regions of India. Pigeonpea can be grown with a temperature ranging from 260C to 300C in the rainy season (June to October) and 170C to 220C in the post rainy (November to ', '', '', '', '', '', 'redgram-m.png', 'redgram-p.png'),
(16, 'bengalgram', 'Pulses', 'cicer arietinum', 'leguminaceae', 'It can be grown on wide variety of soils. Sandy loam to clay loam is considered to be most suitable soil for gram cultivation. Soil having water logging problem are not suitable for cultivation. Saline alkaline soil are not suitable. pH in the range of 5.', '', '', '', '', '', 'bengalgram-m.png', 'bengalgram-p.png'),
(17, 'blackgram', 'Pulses', 'vigna mungo', 'leguminaceae', 'Black gram can be grown on variety of soils ranging from sandy soils to heavy cotton soils. The most ideal soil is a well drained loam with pH of 6.5 to 7.8. Black gram cannot be grown on alkaline and saline soils. Land is prepared like any other kharif s', 'The pulse \'Black gram\' plays an important role in Indian diet, as it contains vegetable protein and supplement to cereal based diet. It contains about 26% protein, which is almost three times that of cereals and other minerals and vitamins. Carbohydrate - 59.6%,Calcium - 154 mg/100 g,Phosphorus - 385 mg/100 g,Iron - 9.1 mg/100 g, Calorific value - 347 Kcal/100 g', '', '', '', '', 'blackgram-m.png', 'blackgram-p.png'),
(18, 'cowpea', 'Pulses', 'vigna sinensis savi.', 'leguminaceae', 'Cowpea is warm weather and semi arid crop, where temperature ranging from 200C to 300C. Minimum temperature for seed establishment is 200C and above 320C temperatures development of root is cease. For maximum production day temperature 270C and night temp', 'Protein - 22 - 24%\nCarbohydrate - 55 - 66 %\nIron - 0.005%\nCalcium - 0.08 ? 0.11 %\nEssential amino acids (lysine, leucine and phenylalanine)', '', '', '', '', 'cowpea-m.png', 'cowpea-p.png'),
(19, 'horse gram', 'Pulses', 'macrotyloma uniflorum', 'leguminaceae', 'Horsegram is extremely drought-resistant crop. It does not grow well on higher altitudes because of\ncool and wet climate. Horsegram can be cultivated up to an altitude of 1000 m above the\nsea level. The temperature range of 25-30?C and relative humidity b', '', '', '', '', '', 'horsegram-m.png', 'horse gram-p.png'),
(20, 'green gram', 'Pulses', 'vigna radiata', 'leguminaceae', 'Green gram is best suited to areas having an annual rainfall of 60 to 75 cm. It requires a hot and warm climate. Greengram is considered to be hardiest among all pulse crops and can tolerate drought to a great extent. Hence, it is successfully grown in an', '', '', '', '', '', 'greengram-m.png', 'green gram-p.png'),
(21, 'rajma', 'Pulses', '', '', '', '', '', '', '', '', 'rajma-m.png', 'rajma-p.png'),
(22, 'maize', 'cereals', 'zea mays', '', 'Maize can be grown in temperate high lands, tropical as well as sub-tropical regions. A\nmoderate temperature, adequate moisture are basic need of Maize crop. However, the crop\nis susceptive to water logging condition, which needs to be avoided.Maize requi', 'Maize is a stable cereal very popular due to its high nutritional significance enriched with abundant amount of macronutrients like starch, fibre, protein and fat along with micronutrients like vitamin B complex, ?-carotene and essential minerals, i.e. magnesium, zinc, phosphorus, copper', '', '', '', '', 'maize-m.png', 'maize-p.png'),
(23, 'paddy', 'cereals', 'oryza sativa', '', 'Paddy can be grown in wide variety of soils ranging from loam to\nsandy loam to clay loam, but clay loam soils with good water retention capacity are\nconsidered as the best.', '', '', '', '', '', 'paddy-m.png', 'paddy-p.png'),
(24, 'jowar/ sorghum', 'cereals', '', '', 'It requires hot and dry climate. Optimum temperature 27 to 300C. short days promote female flowers. High temperature, low humidity, plenty of sun shine are essential for proper ripening, high sugar content. Plants are sensitive to low temperature and fros', '', '', '', '', '', 'jowar-sorghum-m.png', 'jowar- sorghum-p.png'),
(25, 'wheat', 'cereals', '', '', '', '', '', '', '', '', 'wheat-m.png', 'wheat-p.png'),
(26, 'ragi', 'cereals', '', '', '', '', '', '', '', '', 'ragi-m.png', 'ragi-p.png'),
(27, 'turmeric', 'commercial', '', '', '', '', '', '', '', '', 'turmeric-m.png', 'turmeric-p.png'),
(28, 'tobacco', 'commercial', '', '', '', '', '', '', '', '', 'tobacco-m.png', 'tobacco-p.png'),
(29, 'cotton', 'commercial', '', '', '', '', '', '', '', '', 'cotton-m.png', 'cotton-p.png'),
(30, 'sugarcane', 'commercial', '', '', '', '', '', '', '', '', 'sugarcane-m.png', 'sugarcane-p.png'),
(31, 'rose', 'Flowers', '', '', '', '', '', '', '', '', 'rose-m.png', 'rose-p.png'),
(32, 'chrysanthemum', 'Flowers', '', '', '', '', '', '', '', '', 'chrysanthemum-m.png', 'chrysanthemum-p.png'),
(33, 'marigold', 'Flowers', '', '', '', '', '', '', '', '', 'marigold-m.png', 'marigold-p.png'),
(34, 'gerbera', 'Flowers', '', '', '', '', '', '', '', '', 'gerbera-m.png', 'gerbera-p.png'),
(35, 'gladiolus', 'Flowers', '', '', '', '', '', '', '', '', 'gladiolus-m.png', 'gladiolus-p.png'),
(36, 'jasmine', 'Flowers', '', '', '', '', '', '', '', '', 'jasmine-m.png', 'jasmine-p.png'),
(37, 'tube rose', 'Flowers', '', '', '', '', '', '', '', '', 'tuberose-m.png', 'tube rose-p.png'),
(38, 'groundnut', 'Oil seeds', '', '', '', '', '', '', '', '', 'groundnut-m.png', 'groundnut-p.png'),
(39, 'mustard', 'Oil seeds', '', '', '', '', '', '', '', '', 'mustard-m.png', 'mustard-p.png'),
(40, 'castor', 'Oil seeds', '', '', '', '', '', '', '', '', 'castor-m.png', 'castor-p.png'),
(41, 'linseed', 'Oil seeds', '', '', '', '', '', '', '', '', 'linseed-m.png', 'linseed-p.png'),
(42, 'niger', 'Oil seeds', '', '', '', '', '', '', '', '', 'niger-m.png', 'niger-p.png'),
(43, 'sunflower', 'Oil seeds', '', '', '', '', '', '', '', '', 'sunflower-m.png', 'sunflower-p.png'),
(44, 'seasmum', 'Oil seeds', '', '', '', '', '', '', '', '', 'seasmum-m.png', 'seasmum-p.png'),
(45, 'oilpalm', 'Oil seeds', '', '', '', '', '', '', '', '', 'oilpalm-m.png', 'oilpalm-p.png'),
(46, 'soyabean', 'Oil seeds', '', '', '', '', '', '', '', '', 'soyabean-m.png', 'soyabean-p.png'),
(47, 'arecanut', 'Plantation', '', '', '', '', '', '', '', '', 'arecanut-m.png', 'arecanut-p.png'),
(48, 'cashewnut', 'Plantation', '', '', '', '', '', '', '', '', 'cashewnut-m.png', 'cashewnut-p.png'),
(49, 'goosberry', 'Plantation', '', '', '', '', '', '', '', '', 'goosberry-m.png', 'goosberry-p.png'),
(50, 'tamarind', 'Plantation', '', '', '', '', '', '', '', '', 'tamarind-m.png', 'tamarind-p.png'),
(51, 'coconut', 'Plantation', '', '', '', '', '', '', '', '', 'coconut-m.png', 'coconut-p.png'),
(52, 'coffee', 'Plantation', '', '', '', '', '', '', '', '', 'coffee-m.png', 'coffee-p.png'),
(53, 'tea', 'Plantation', '', '', '', '', '', '', '', '', 'tea-m.png', 'tea-p.png'),
(54, 'ajwan', 'Spices', '', '', '', '', '', '', '', '', 'ajwan-m.png', 'ajwan-p.png'),
(55, 'cardamom', 'Spices', '', '', '', '', '', '', '', '', 'cardamom-m.png', 'cardamom-p.png'),
(56, 'cinnamom', 'Spices', '', '', '', '', '', '', '', '', 'cinnamom-m.png', 'cinnamom-p.png'),
(57, 'clove', 'Spices', '', '', '', '', '', '', '', '', 'clove-m.png', 'clove-p.png'),
(58, 'garlic', 'Spices', '', '', '', '', '', '', '', '', 'garlic-m.png', 'garlic-p.png'),
(59, 'ginger', 'Spices', '', '', '', '', '', '', '', '', 'ginger-m.png', 'ginger-p.png'),
(60, 'pepper', 'Spices', '', '', '', '', '', '', '', '', 'pepper-m.png', 'pepper-p.png'),
(61, 'safflower', 'Spices', '', '', '', '', '', '', '', '', 'safflower-m.png', 'safflower-p.png'),
(62, 'saffron', 'Spices', '', '', '', '', '', '', '', '', 'saffron-m.png', 'saffron-p.png'),
(63, 'tejpat', 'Spices', '', '', '', '', '', '', '', '', 'tejpat-m.png', 'tejpat-p.png'),
(64, 'vanilla', 'Spices', '', '', '', '', '', '', '', '', 'vanilla-m.png', 'vanilla-p.png'),
(65, 'betel leaf', 'Spices', '', '', '', '', '', '', '', '', 'betelleaf-m.png', 'betel leaf-p.png'),
(66, 'avare', 'Vegetables', '', '', '', '', '', '', '', '', 'avare-m.png', 'avare-p.png'),
(67, 'beans', 'Vegetables', '', '', '', '', '', '', '', '', 'beans-m.png', 'beans-p.png'),
(68, 'bhendi', 'Vegetables', '', '', '', '', '', '', '', '', 'bhendi-m.png', 'bhendi-p.png'),
(69, 'bottle gourd', 'Vegetables', '', '', '', '', '', '', '', '', 'bottlegourd-m.png', 'bottle gourd-p.png'),
(70, 'brinjal', 'Vegetables', '', '', '', '', '', '', '', '', 'brinjal-m.png', 'brinjal-p.png'),
(71, 'cabbage', 'Vegetables', '', '', '', '', '', '', '', '', 'cabbage-m.png', 'cabbage-p.png'),
(72, 'capsicum', 'Vegetables', '', '', '', '', '', '', '', '', 'capsicum-m.png', 'capsicum-p.png'),
(73, 'carrot', 'Vegetables', '', '', '', '', '', '', '', '', 'carrot-m.png', 'carrot-p.png'),
(74, 'cauliflower', 'Vegetables', '', '', '', '', '', '', '', '', 'cauliflower-m.png', 'cauliflower-p.png'),
(75, 'chilli', 'Vegetables', '', '', '', '', '', '', '', '', 'chilli-m.png', 'chilli-p.png'),
(76, 'cocoa', 'Vegetables', '', '', '', '', '', '', '', '', 'cocoa-m.png', 'cocoa-p.png'),
(77, 'coriander', 'Vegetables', '', '', '', '', '', '', '', '', 'coriander-m.png', 'coriander-p.png'),
(78, 'cucumber', 'Vegetables', '', '', '', '', '', '', '', '', 'cucumber-m.png', 'cucumber-p.png'),
(79, 'elephant foot? yam', 'Vegetables', '', '', '', '', '', '', '', '', 'elephantfoot?yam-m.png', 'elephant foot? yam-p.png'),
(80, 'onion', 'Vegetables', '', '', '', '', '', '', '', '', 'onion-m.png', 'onion-p.png'),
(81, 'peas', 'Vegetables', '', '', '', '', '', '', '', '', 'peas-m.png', 'peas-p.png'),
(82, 'pointed gourd', 'Vegetables', '', '', '', '', '', '', '', '', 'pointedgourd-m.png', 'pointed gourd-p.png'),
(83, 'potato', 'Vegetables', '', '', '', '', '', '', '', '', 'potato-m.png', 'potato-p.png'),
(84, 'pumpkin', 'Vegetables', '', '', '', '', '', '', '', '', 'pumpkin-m.png', 'pumpkin-p.png'),
(85, 'radish', 'Vegetables', '', '', '', '', '', '', '', '', 'radish-m.png', 'radish-p.png'),
(86, 'sweet potato', 'Vegetables', '', '', '', '', '', '', '', '', 'sweetpotato-m.png', 'sweet potato-p.png'),
(87, 'tapioca', 'Vegetables', '', '', '', '', '', '', '', '', 'tapioca-m.png', 'tapioca-p.png'),
(88, 'tomato', 'Vegetables', '', '', '', '', '', '', '', '', 'tomato-m.png', 'tomato-p.png'),
(89, 'bitter gourd', 'Vegetables', '', '', '', '', '', '', '', '', 'bittergourd-m.png', 'bitter gourd-p.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`crop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
