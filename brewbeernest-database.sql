-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 02, 2019 at 08:54 PM
-- Server version: 5.6.20-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brewbeernest`
--

-- --------------------------------------------------------

--
-- Table structure for table `beers`
--

CREATE TABLE IF NOT EXISTS `beers` (
  `beer_id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` double(4,2) NOT NULL,
  `alcohol_percentage` double(3,1) NOT NULL,
  `volume` int(3) NOT NULL,
  `style` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `stock` int(2) NOT NULL,
  `img_ref` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beers`
--

INSERT INTO `beers` (`beer_id`, `name`, `price`, `alcohol_percentage`, `volume`, `style`, `description`, `stock`, `img_ref`) VALUES
(1, 'Jupiler', 1.50, 5.2, 33, 'Pilsner', 'A pilsner very common in Belgium.', 20, 'jupiler.jpg'),
(2, 'Achel Blond', 2.80, 8.0, 33, 'Trappist/Blond Abbey', 'A pale, strong, fruity, hoppy Trappist ale from one of Belgium’s six official abbey breweries. Achel 8° is hard to find even in Belgium; in the U.S. it’s up there with the rarest of beers. This blond, flavorful beer is a surprisingly refreshing brew at 8 percent alcohol by volume. It is lightly filtered, b', 20, 'achel-blond.jpg'),
(3, 'Chimay Blue', 2.90, 9.0, 33, 'Trappist/Dark Ale', 'Chimay Blue is principally distinguished by its character of a strong beer. This is a beer whose fragrance of fresh yeast with a light, flowery rosy touch is especially pleasant. Its flavour, noticed when tasting it, only accentuates the pleasant sensations perceived in the aroma , while revealing a light but pleasant touch of roasted malt. This top fermented Trappist beer, refermented in the bottle, is not pasteurised.', 20, 'chimay-blue.jpg'),
(4, 'Chimay Red', 2.25, 7.0, 33, 'Trappist', 'Chimay Red is noted for its coppery colour which makes it particularly attractive. Topped with a creamy head, it gives off a light, fruity apricot aroma produced by the fermentation. The taste perceived in the mouth is a balance confirming the fruity nuances noticed in the fragrance. Its taste, which imparts a silky sensation to the tongue, is made refreshing by a light touch of bitterness. To the palate, the taster perceives a pleasant astringency which complements the flavour qualities of this beer very harmoniously. This top fermented Trappist beer, refermented in the bottle, is not pasteurised.', 20, 'chimay-rood.jpg'),
(5, 'Chimay Dorée', 2.25, 4.8, 33, 'Trappist', 'Historically not sold in the commerce. Only available at Auberge de Poteaupré, Chimay, Belgium, as "Speciale De Poteaupré". This beer is usually reserved for the use of the Chimay Trappists. Since June 2007 on draught at Poteaupré. Since 2015 also in bottles widely available as Chimay Dorée.', 20, 'chimay-doree.jpg'),
(6, 'Chimay Wit', 2.35, 8.0, 33, 'Trappist/Tripel', 'Chimay Tripel, with its typical golden colour, its slightly hazy appearance and its fine head is especially characterised by its aroma which results from an agreeable combination of fresh hops and yeast. The beer’s flavour, as sensed in the mouth, comes from the smell of hops: above all it is the fruity notes of muscat and raisins that give this beer a particularly attractive aroma. The aroma complements the touch of bitterness. There is no acidity, but an after-bitterness which melts in the mouth.', 20, 'chimay-wit.jpg'),
(7, 'Rochefort 10', 3.49, 11.3, 33, 'Trappist/Abbey', 'The top product from the Rochefort Trappist brewery. Dark color, full and very impressive taste. Strong plum, raisin, and black currant palate, with ascending notes of vinousness and other complexities.', 20, 'rochefort 10.png'),
(8, 'La Chouffe Blonde', 2.49, 8.0, 33, 'Blonde', 'Golden beer that is slightly hazy with a robust head, featuring a spicy aroma with lots of citrus and coriander, which are also present in the taste.', 20, 'la-chouffe-blonde.png'),
(9, 'St. Bernardus Tripel', 2.49, 8.0, 33, 'Blonde/Tripel', 'A recognised variety of abbey beer, this strong aromatic Tripel has fruity and floral scents. Sweet aromas from the malt give this beer a very soft character. A slight bitterness provides more depth to this complex beer.', 20, 'st-bernardus-tripel.png'),
(10, 'Malheur 10', 2.59, 10.0, 33, 'Blonde', 'Golden colour with a big white head. This is a beer with an extraordinary balance, full-bodied, full of sweet aroma’s of apricots, yellow apples and ripe pears.', 20, 'malheur-10.png'),
(11, 'Cornet', 2.19, 8.5, 33, 'Blonde', 'Strong Blond beer brewed in honour of Salomon de Maldeghem, a knight who lived in the 11th century. Golden coloured with a big white head. Subtile vanilla-taste coming from the fresh oak chips.', 20, 'cornet.png'),
(12, '3 Fonteinen Schaarbeekse', 3.00, 6.0, 75, 'Fruit', 'Schaarbeekse Kriek follows the same process of Oude Kriek. This Kriek is made exclusively with hand-picked local wild Schaarbeekse sour cherries.', 20, '3-fonteinen-schaarbeekse-kriek.png'),
(14, 'Rochefort 8', 2.80, 9.2, 33, 'Ale/Strong Dark', 'The lower gravity cousin to Rochefort 10. Nicknamed "Spéciale" (’The Special’), this beer is the most recent production. The Rochefort 8 has a more tawny colour and a more pronounced aroma, with an even richer fruitiness (a slight undertone of fig?) and a little more spiced dryness, like that of a cake, which gives a balanced finish to the final notes.', 20, 'rochefort 8.png'),
(13, 'Orval', 2.99, 6.2, 33, 'Pale-Ale', 'The Orval Trappist brewery makes only one beer for the general public. It has an intensely aromatic and dry character. Between the first and second fermentations there is also an additional dry-hopping process. Through this the beer acquires its pronounced hoppy aroma and extra dry taste.', 20, 'orval.png'),
(15, 'Westvleteren Blond', 4.00, 5.8, 33, 'Pale-Ale', 'Westvleteren Blond is the basic beer for the monks’ own consumption, since 1999, when the former 6° dark ale (red cap) was finally discarded, after the 4° had already gone that path.', 20, 'westvleteren-blond.png'),
(16, 'Westmalle Tripel', 2.80, 9.5, 33, 'Tripel', 'A strong, dry and spicy Trappist ale.The product of a secondary fermentation lasting 5 weeks. This is a complex ale with a fruity aroma and a nice nuanced hop scent. It is soft and creamy in the mouth, with a bitter touch carried by the fruity aroma. An exceptional ale, with a great deal of finesse and elegance, and with a splendid long after taste.', 20, 'westmalle-tripel.png'),
(59, 'St. Bernardus Pater 8', 2.99, 8.0, 33, 'Dark Ale', 'Brown beer with a hearty and creamy head. This beer is complex with spicy and fruity aromas. The malt aromas are definitely the focal point — an abbey beer with a nice balance.', 20, 'st bernardus-8.png'),
(58, 'St. Bernardus Pater 6', 2.59, 6.7, 33, 'Dark Ale', 'The Beer pours in a hazelnut brown colour and builds a dense foam. Nutty and caramelly aromas come first to the nose, followed by a slide aromas of fried fruit on the tongue. The beer is astonishingly light for a Belgian Dubbel', 20, 'st bernardus-6.png'),
(57, 'Rodenbach Classic', 1.79, 5.2, 25, 'Sour Beer', 'Brownred color with almost no head. Fruity aroma’s of cherries. Soft vanilla-tones from the wood. Taste is fruity sour with sweetness in the background. This beer has a lot of wine-tones.', 20, 'rodenbach-classic.png'),
(56, 'Rochefort 6', 2.79, 7.5, 33, 'Trappist/Abbey', 'Reddish-brown Trappist beer with a pale head. The earthy tones and yeast aromas are striking, while the caramel, roasted malt and dried fruit provide ample sweetness.', 20, 'rochefort-rochefort 6.png'),
(54, 'Leffe Brune', 1.79, 6.5, 33, 'Dubbel/Dark-Ale', 'Reddish-brown abbey beer with a dense creamy head. Roasted malt, caramel and toast along with a soft bitterness characterise this Dubbel.', 20, 'leffe-brune.png'),
(55, 'Leffe Tripel', 2.69, 2.7, 33, 'Tripel', 'Dark golden color, slightly orange. Big white, off-white head. Taste is sweet, alcoholic, fruity, spiced with coriander.', 20, 'leffe-tripel.png'),
(53, 'Leffe Blonde', 1.65, 6.6, 33, 'Blonde', 'Between a clear, dark yellow-gold and an amber, with a hearty, full white head, this is an accessible fruity blonde with a subtle bitter note. Leffe Blond is a recognised variety of abbey beer.', 20, 'leffe-blonde.png'),
(52, 'Kwak', 2.79, 8.4, 33, 'Blonde', 'Copper-coloured with a full, creamy head, this beer is world famous owing to the traditional coachman''s glass in a wooden stand in which it is served. Includes warm, sweet aromas of malt, caramel and toffee, and a subtly spicy, bitter aftertaste.', 20, 'kwak.png'),
(51, 'Boon Kriek', 2.99, 4.0, 38, 'Fruit', 'Red beer with a modest head that disappears quickly. Aromas of cherry emanate from the glass and there is a subtly interplay between fresh sourness and sweetness. Also features a very fruity aftertaste.', 20, 'kriek-boon.png'),
(50, 'Lindemans Kriek', 1.49, 3.5, 25, 'Fruit', 'Deep cherry red colour with a pinkish red foam. The aroma consists of cherries and a sweet tone of marzipan, while the finish is freshly sour and fruity.', 20, 'lindemans-kriek.png'),
(48, 'Hoegaarden', 1.50, 4.9, 33, 'White Ale', 'Unfiltered Belgian White, flavored with coriander and orange peel, creating a sweet & sour taste.', 20, 'hoegaarden.png'),
(49, 'Wilderen Kriek', 2.19, 3.5, 33, 'Fruit', 'Red colour with a pink head. Brewed with lambic beer, matured on wooden vessels. The smell and the taste are full of cherries and red fruit. Drink it cold.', 20, 'wilderen-kriek.png'),
(47, 'Grimbergen Tripel', 2.49, 9.0, 33, 'Tripel', 'Dark yellow with a delicate, generous white head. This classic Tripel—a recognised variety of abbey beer—is full of fruit and spice and has a sweet alcoholic character.', 20, 'grimbergen-triple.png'),
(46, 'Grimbergen Dubbel', 1.99, 6.5, 33, 'Dark Ale', 'Reddish-brown abbey beer full of sweet tones of toast bread and especially caramel. The complex nature can be summarised as sweet and bitter.', 20, 'grimbergen-dubbel.png'),
(45, 'Grimbergen Blonde', 1.85, 6.7, 33, 'Trappist/Abbey', 'This Blond is full-bodied and sweet. Aroma’s of sweet, yellow fruit and a characterful bitterness.', 20, 'grimbergen-blond.png'),
(44, 'Gouden Carolus Tripel', 2.99, 9.0, 33, 'Tripel', 'Clear, gold-coloured beer with a very generous, firm head. Aromas of fruit, malt, herbs and yeast. This beer has a very complex flavour and has won prestigious awards, including gold in the European Beer Star.', 20, 'gouden-carolus-tripel.png'),
(43, 'Gouden Carolus Classic', 2.79, 8.5, 33, 'Strong Dark Ale', 'Clear, brown beer with a light-brown head. This aromatic beer has won many international awards. Incorporates delicious, soft, sweet notes of toffee, malt, caramel and dried fruit that linger on the palate.', 20, 'gouden-carolus-classic.png'),
(42, 'Duvel Tripel Hop', 2.49, 9.5, 33, 'Tripel/Hoppy', 'An extra variety of hops is added to this traditional Duvel. This beer also has a high alcohol content but remains very drinkable due to the fresh, sour citrus aromas, among others.', 20, 'duvel-tripel-hop.png'),
(41, 'Duvel', 2.19, 8.5, 33, 'Blonde', 'Light yellow coloured, slightly cloudy with a fantastic, rich, white head. The aroma is fresh with lemon, lime and spicy tones. The fresh flavour incorporates citrus fruit, fresh fruit, the sweetness of alcohol and a hoppy spiciness that is somewhat peppery. Despite the alcohol content, this is a fresh, drinkable beer.', 20, 'duvel.png'),
(40, 'Delirium Tremens', 2.99, 8.5, 33, 'Blonde', 'Golden color, clear, big white head. It’s a classic Belgian beer with strong carbonation, lots of alcohol, fruity yeast-tones and a sweet aftertaste.', 20, 'delirium_tremens.png'),
(39, 'Delirium Red', 2.79, 8.0, 33, 'Fruit', 'Cherryred beer with a red head. Taste of sweet sunriped cherries. This is a strong fruitbeer with a firm but soft sweetness.', 20, 'delirium-red.png'),
(38, 'Delirium Nocturnum', 3.29, 8.5, 33, 'Strong Dark Ale', 'Dark red beer brewed according to Belgian tradition: accessible and strong in one. Flavours of dried fruit, caramel and chocolate. Fairly sweet taste with a spicy touch of licorice and coriander. The finish is warm and smooth.', 20, 'delirium_nocturnum.png'),
(37, 'Delirium Argentum', 3.19, 7.0, 33, 'IPA', 'Amber colored beer, brewed in honor of the 25th anniversary of Delirium. Just like the Tremens a spicy beer, but also a clear hop touch, which gives citrus aromas and a bitter aftertaste, which is in balance with the sweetness. An IPA in a Belgian way.', 20, 'delirium_argentum.png'),
(36, 'De Koninck Tripel', 2.39, 8.0, 33, 'Tripel', 'Nice Tripel, golden color, clear with a big white diminishing head. Aroma’s are fruity, malty and alcoholic. Medium carbonation.', 20, 'de-koninck-triple.png'),
(35, 'De Koninck APA', 2.39, 5.2, 33, 'Antwaarpse Pale Ale', 'An excellent beer from De Koninck, very smooth & balance whilst seeming quite refreshing too. Easy to drink with a nice caramel sweetness from the start & some good nutty flavours.', 20, 'de-koninck-apa.png'),
(34, 'Cuvée des Trolls', 1.75, 7.0, 33, 'Blonde', 'Yellow, misty with a stable big white head. Full body with fruity aroma’s of citrus and sweet yellow fruit. Most sweet with a refreshing sourness and a yeasty character.', 20, 'cuvee_des_trolls.png'),
(33, 'Corsendonk Pater Dubbel', 2.20, 6.5, 33, 'Dubbel/Dark-Ale', 'Dark-brown beer with a creamy head. Tones of caramel, dried fruit, toast and a hint of "roasting" offer a lot of sweetness. The aftertaste of dried fruit lingers in the mouth.', 20, 'corsendonk-pater-dubbel.png'),
(32, 'Corsendonk Agnus Tripel', 2.49, 7.5, 33, 'Blonde/Tripel', 'Belgian Tripel with a generous white "hat". The taste starts with fresh, citrus tones, after which almost perfume-like, hoppy aromas incorporate more floral tones.', 20, 'corsendonk-agnus-tripel.png'),
(31, 'La Chouffe Soleil', 2.30, 6.0, 33, 'Blonde', 'Pale yellow, cloudy beer with a very generous white head. Lemon, lime and a peppery spiciness make this beer extremely refreshing and easy to drink.', 20, 'la-chouffe-soleil.png'),
(30, 'La Chouffe Houblon', 2.55, 9.0, 33, 'IPA', 'Golden yellow beer with a large, reasonably frothy head and predominantly malty aromas. The taste is sweet, slightly caramel and aromatically hoppy. A pleasant bitterness lingers on the palate.', 20, 'la-chouffe-houblon.png'),
(29, 'La Chouffe Red', 2.30, 8.0, 33, 'Fruit', 'Cherry Chouffe is based on Mc Chouffe encriched with sugar and sweetener. For lovers of sweet fruitbeer!', 20, 'la-chouffe-cherry.png'),
(28, 'La Chouffe Bok', 2.45, 6.5, 33, 'Bock', 'La Chouffe Bok is a seasonal beer brewed especially for the Netherlands. La Chouffe Bok stands out thanks to its coppery robe, its fresh, fruity nose and a pleasant roundness in the mouth, ending with a hint of bitterness.', 20, 'la-chouffe-bok.png'),
(27, 'Bush Blonde', 2.55, 10.5, 33, 'Blonde', 'Strong blond beer with a big white head. Complex fruity aroma’s with a round Belgian sweetness.', 20, 'bush-blonde.png'),
(26, 'Bush Amber', 2.99, 12.0, 33, 'Blonde', 'Ambercolored, heart warming, alcoholic, full of sweet tones of roasted malt and caramel. Full bodied beer with a strong sweet and long-lasting aftertaste.', 20, 'bush-amber.png'),
(25, 'Straffe Hendrik Quadrupel', 3.00, 11.0, 33, 'Quadruppel', 'Full quad of city brewery De Halve Maan from Bruges. Aromas of chocolate, caramel, red and dried fruit combine beautifully with the sweetish start. The slightly spicy character makes it complex, the finish is softly bitter and warming.', 20, 'straffe-hendrik-quadruppel.png'),
(24, 'Straffe Hendrik Tripel', 3.00, 9.0, 33, 'Tripel', 'Worldfamous Tripel, orange colour with a big off-white head. Fruity, yeasty and spicy aroma’s with for example orange. Full bodied, alcoholic, modest bitterness and a great balance.', 20, 'straffe-hendrik-tripel.png'),
(23, 'Bertinchamps Triple', 7.88, 8.0, 50, 'Tripel', 'A traditional & authentic old style Belgium beer, pure malt, hops, without spices or additives. A smooth, slightly amber & cloudy beer. Soft with a invigorating bitterness in the aftertaste, voluptuous, refreshing, with discreet hints of caramel.', 20, 'bertinchamps-tripel.png'),
(22, 'Bertinchamps Brune', 6.56, 7.0, 50, 'Dubbel', 'A traditional & authentic old style Belgium beer, pure malt and hops, without spices or additives. Black colored, creamy beer’s foam. Well balanced, coffee touch with the sweetness of Moka. Subtle touch of bitter chocolate at the end, with a dry and nice-tasting final note.', 20, 'bertinchamps_brown.png'),
(21, 'Bertinchamps Blonde', 5.59, 6.2, 50, 'Blonde', 'A traditional & authentic old style Belgium beer, pure malt and hops, without spices or additives. A floral nose of freshly cut straw, aromas of grilled cereals with a of hint of pepper. Well balanced with a subtle touch of bitterness at the end. The beer’s foam is dense and consistent. A light refreshing beer to be savoured.', 20, 'bertinchamps_blonde.png'),
(20, 'Barbar Blonde', 3.20, 8.0, 33, 'Ale-Strong Pale', 'Deep blonde in colour, Barbãr’s creamy head gives off a powerful aroma, unobtrusively scented with honey and accompanied by a bouquet of floral, spicy and citrus notes.', 20, 'barbar.png'),
(19, 'Affligem Tripel', 1.59, 9.0, 30, 'Tripel', 'Blonde abbey beer with a delicate white head. Refreshing and full of fruity flavours with citrus and tropical undertones. Features a pleasantly bitter aftertaste.', 20, 'affligem-tripel.png'),
(18, 'Affligem Dubbel', 1.19, 6.8, 30, 'Trappist/Abbey', 'A reddish-brown Abbey beer, clear with a creamy head. Its toasted malt and caramel aromas give it a full, well-rounded flavour and the unique, spicy character provides more depth.', 20, 'affligem_dubbel.png'),
(17, 'Affligem Blonde', 1.29, 6.8, 30, 'Blonde', 'Golden blond abbey beer with a fine white foam collar. Refreshing and full of aromas of citrus and tropical fruit. Pleasantly bitter in the aftertaste.', 20, 'affligem_blond.png'),
(60, 'St. Bernardus Pater 10', 2.99, 10.0, 33, 'Dark Ale', ' Complex in terms of taste, this beer creates a very nice balance between sweetness and bitterness, with a long-lasting aftertaste of caramel and raisins.', 20, 'st bernardus-10.png'),
(61, 'St. Bernardus Wit', 1.99, 5.5, 33, 'White', 'Pale yellow, hazy with a nice white head. Developed with Pierre Celis, the godfather of the Belgian witbier. Fresh, thirst quenching with aroma’s of citrusfruit and fresh coriander.', 20, 'st bernardus-wit.png'),
(62, 'Tripel Karmeliet', 2.89, 8.4, 33, 'Blonde', 'Brewed with three grains—barley, oats and wheat— this beer pours a luminous gold and has a generous foamy head. This internationally distinguished beer offers a great balance between sweet, fruity, bitter and spicy tastes.', 20, 'tripel-karmeliet.png'),
(63, 'Vedett Blonde', 2.19, 5.2, 33, 'Lager/Pils', 'Color is yellow, light, clear. Beer has a soapy white head. Fresh aroma’s of lemon en lime. In the aftertaste there is a fresh sourness and some bitterness.', 20, 'vedett-blonde.png'),
(64, 'Vedett IPA', 2.39, 5.5, 33, 'IPA', 'Darkgolden, orange color. Misty, big white head. Fruit dominates the nose. There is citrusfruit and sweet tropical fruit. Some sweet tones of caramel. The fine hoppy bitterness gives balance.', 20, 'vedett-ipa.png'),
(65, 'Vedett Session IPA', 1.79, 2.7, 33, 'IPA', 'Very light-footed, refreshing Session IPA with only 2,7% alcohol. Beautiful fruite nose with a light, sparkling body. The finish is fresh and slightly bitter.', 20, 'vedett-session-ipa.png'),
(66, 'Vedett White', 2.19, 4.7, 33, 'White', 'Refreshing witbier with citrus tones and a subtile spiciness and a coriander touch.', 20, 'vedett-white.png'),
(67, 'Verboden Vrucht', 2.49, 8.5, 33, 'Strong Dark Ale', 'Traditionally brewed with a mysterious blend of dark malts and flavored with spices, it undergoes a slow second fermentation in the bottle so it matures into a delicious tasting beer with a complex flavor and a wonderful flavor balance between sweet and dry.', 20, 'verboden-vrucht.png');

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE IF NOT EXISTS `card_details` (
  `card_number` bigint(16) NOT NULL,
  `security_code` int(3) NOT NULL,
  `expiry_date` date NOT NULL,
  `pin_code` int(4) NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`card_number`, `security_code`, `expiry_date`, `pin_code`, `user_id`) VALUES
(1234123412341234, 123, '2020-10-01', 1111, 2),
(9999888877776666, 121, '2028-07-01', 1111, 5),
(3213541111111111, 111, '2019-11-01', 1454, 4),
(1111222333555566, 168, '2022-02-01', 3456, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(4) NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` date NOT NULL,
  `user_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `delivery_date`, `user_id`) VALUES
(1, '2019-05-02 12:02:00', '2019-05-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_lines`
--

CREATE TABLE IF NOT EXISTS `order_lines` (
  `quantity` int(2) NOT NULL,
  `beer_id` int(4) NOT NULL,
  `order_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_lines`
--

INSERT INTO `order_lines` (`quantity`, `beer_id`, `order_id`) VALUES
(4, 3, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(4) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `account_type` char(7) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address_line` varchar(40) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `account_type`, `username`, `password`, `address_line`, `postcode`, `date_of_birth`) VALUES
(1, NULL, 'AdminTest', 'adminTest@gmail.com', 'ADMN_AC', 'adminTest', '123456789abc', NULL, NULL, NULL),
(2, 'Ernest', 'Vanmosuinck', 'ernestvmo@gmail.com', 'CLNT_AC', 'ernest@123', 'ernest@123', '123 Address Line', 'FK38SN', '2003-04-08'),
(3, 'Jane', 'Doe', 'jad@here.com', 'CLNT_AC', 'Jdoe', 'Password!', '123 home street', 'FK2 9AN', '1984-12-13'),
(4, 'John', 'Doe', 'j@gmail.com', 'CLNT_AC', 'ErnestTest@', 'ErnestTest@', '22 Portal Road', 'FK3 8SN', '1999-10-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beers`
--
ALTER TABLE `beers`
 ADD PRIMARY KEY (`beer_id`), ADD UNIQUE KEY `name` (`name`), ADD UNIQUE KEY `img_ref` (`img_ref`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
 ADD PRIMARY KEY (`card_number`), ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`), ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `order_lines`
--
ALTER TABLE `order_lines`
 ADD KEY `fk_order_id` (`order_id`), ADD KEY `fk_beer_id` (`beer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
