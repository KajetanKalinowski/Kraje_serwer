-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Wrz 2023, 15:36
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `swiat`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraje`
--

CREATE TABLE `kraje` (
  `name` text NOT NULL,
  `population` int(11) NOT NULL,
  `capital` text NOT NULL,
  `area` int(11) NOT NULL,
  `kontynent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci;

--
-- Zrzut danych tabeli `kraje`
--

INSERT INTO `kraje` (`name`, `population`, `capital`, `area`, `kontynent`) VALUES
('Caribbean Netherlands', 25987, 'Kralendijk', 328, 'Americas'),
('China', 1402112000, 'Beijing', 9706961, 'Asia'),
('Heard Island and McDonald Islands', 0, 'undefined', 412, 'Antarctic'),
('Cyprus', 1207361, 'Nicosia', 9251, 'Europe'),
('Guinea-Bissau', 1967998, 'Bissau', 36125, 'Africa'),
('São Tomé and Príncipe', 219161, 'São Tomé', 964, 'Africa'),
('Laos', 7275556, 'Vientiane', 236800, 'Asia'),
('Albania', 2837743, 'Tirana', 28748, 'Europe'),
('Sudan', 43849269, 'Khartoum', 1886068, 'Africa'),
('Oman', 5106622, 'Muscat', 309500, 'Asia'),
('Vatican City', 451, 'Vatican City', 0, 'Europe'),
('Nigeria', 206139587, 'Abuja', 923768, 'Africa'),
('Egypt', 102334403, 'Cairo', 1002450, 'Africa'),
('Chile', 19116209, 'Santiago', 756102, 'Americas'),
('Ivory Coast', 26378275, 'Yamoussoukro', 322463, 'Africa'),
('Cape Verde', 555988, 'Praia', 4033, 'Africa'),
('Japan', 125836021, 'Tokyo', 377930, 'Asia'),
('United States Minor Outlying Islands', 300, 'Washington DC', 34, 'Americas'),
('Spain', 47351567, 'Madrid', 505992, 'Europe'),
('Central African Republic', 4829764, 'Bangui', 622984, 'Africa'),
('Djibouti', 988002, 'Djibouti', 23200, 'Africa'),
('Denmark', 5831404, 'Copenhagen', 43094, 'Europe'),
('Russia', 144104080, 'Moscow', 17098242, 'Europe'),
('Timor-Leste', 1318442, 'Dili', 14874, 'Asia'),
('Sint Maarten', 40812, 'Philipsburg', 34, 'Americas'),
('New Zealand', 5084300, 'Wellington', 270467, 'Oceania'),
('Togo', 8278737, 'Lomé', 56785, 'Africa'),
('Antarctica', 1000, 'undefined', 14000000, 'Antarctic'),
('Malawi', 19129955, 'Lilongwe', 118484, 'Africa'),
('Azerbaijan', 10110116, 'Baku', 86600, 'Asia'),
('Barbados', 287371, 'Bridgetown', 430, 'Americas'),
('Kosovo', 1775378, 'Pristina', 10908, 'Europe'),
('Mongolia', 3278292, 'Ulan Bator', 1564110, 'Asia'),
('Saint Helena, Ascension and Tristan da Cunha', 53192, 'Jamestown', 394, 'Africa'),
('French Guiana', 254541, 'Cayenne', 83534, 'Americas'),
('Gabon', 2225728, 'Libreville', 267668, 'Africa'),
('Austria', 8917205, 'Vienna', 83871, 'Europe'),
('Saudi Arabia', 34813867, 'Riyadh', 2149690, 'Asia'),
('Samoa', 198410, 'Apia', 2842, 'Oceania'),
('Bhutan', 771612, 'Thimphu', 38394, 'Asia'),
('Republic of the Congo', 5657000, 'Brazzaville', 342000, 'Africa'),
('Fiji', 896444, 'Suva', 18272, 'Oceania'),
('Paraguay', 7132530, 'Asunción', 406752, 'Americas'),
('Åland Islands', 29458, 'Mariehamn', 1580, 'Europe'),
('Suriname', 586634, 'Paramaribo', 163820, 'Americas'),
('Turks and Caicos Islands', 38718, 'Cockburn Town', 948, 'Americas'),
('Chad', 16425859, 'N\'Djamena', 1284000, 'Africa'),
('San Marino', 33938, 'City of San Marino', 61, 'Europe'),
('Macau', 649342, 'undefined', 30, 'Asia'),
('Australia', 25687041, 'Canberra', 7692024, 'Oceania'),
('Eritrea', 5352000, 'Asmara', 117600, 'Africa'),
('Guernsey', 62999, 'St. Peter Port', 78, 'Europe'),
('Micronesia', 115021, 'Palikir', 702, 'Oceania'),
('Venezuela', 28435943, 'Caracas', 916445, 'Americas'),
('Saint Pierre and Miquelon', 6069, 'Saint-Pierre', 242, 'Americas'),
('Sierra Leone', 7976985, 'Freetown', 71740, 'Africa'),
('Ecuador', 17643060, 'Quito', 276841, 'Americas'),
('Senegal', 16743930, 'Dakar', 196722, 'Africa'),
('Libya', 6871287, 'Tripoli', 1759540, 'Africa'),
('Indonesia', 273523621, 'Jakarta', 1904569, 'Asia'),
('Bangladesh', 164689383, 'Dhaka', 147570, 'Asia'),
('Svalbard and Jan Mayen', 2562, 'Longyearbyen', -1, 'Europe'),
('Tanzania', 59734213, 'Dodoma', 945087, 'Africa'),
('Madagascar', 27691019, 'Antananarivo', 587041, 'Africa'),
('Cook Islands', 18100, 'Avarua', 236, 'Oceania'),
('Sweden', 10353442, 'Stockholm', 450295, 'Europe'),
('Honduras', 9904608, 'Tegucigalpa', 112492, 'Americas'),
('Panama', 4314768, 'Panama City', 75417, 'Americas'),
('Aruba', 106766, 'Oranjestad', 180, 'Americas'),
('North Macedonia', 2077132, 'Skopje', 25713, 'Europe'),
('Angola', 32866268, 'Luanda', 1246700, 'Africa'),
('Jersey', 100800, 'Saint Helier', 116, 'Europe'),
('Dominica', 71991, 'Roseau', 751, 'Americas'),
('Palestine', 4803269, 'Ramallah,Jerusalem', 6220, 'Asia'),
('Uzbekistan', 34232050, 'Tashkent', 447400, 'Asia'),
('Falkland Islands', 2563, 'Stanley', 12173, 'Americas'),
('Malta', 525285, 'Valletta', 316, 'Europe'),
('Lebanon', 6825442, 'Beirut', 10452, 'Asia'),
('South Georgia', 30, 'King Edward Point', 3903, 'Antarctic'),
('Georgia', 3714000, 'Tbilisi', 69700, 'Asia'),
('Italy', 59554023, 'Rome', 301336, 'Europe'),
('Maldives', 540542, 'Malé', 300, 'Asia'),
('Northern Mariana Islands', 57557, 'Saipan', 464, 'Oceania'),
('Kyrgyzstan', 6591600, 'Bishkek', 199951, 'Asia'),
('Marshall Islands', 59194, 'Majuro', 181, 'Oceania'),
('Peru', 32971846, 'Lima', 1285216, 'Americas'),
('United Arab Emirates', 9890400, 'Abu Dhabi', 83600, 'Asia'),
('Pitcairn Islands', 56, 'Adamstown', 47, 'Oceania'),
('Norway', 5379475, 'Oslo', 323802, 'Europe'),
('Nauru', 10834, 'Yaren', 21, 'Oceania'),
('Uganda', 45741000, 'Kampala', 241550, 'Africa'),
('Uruguay', 3473727, 'Montevideo', 181034, 'Americas'),
('Croatia', 4047200, 'Zagreb', 56594, 'Europe'),
('Kuwait', 4270563, 'Kuwait City', 17818, 'Asia'),
('Papua New Guinea', 8947027, 'Port Moresby', 462840, 'Oceania'),
('Ireland', 4994724, 'Dublin', 70273, 'Europe'),
('Armenia', 2963234, 'Yerevan', 29743, 'Asia'),
('Greenland', 56367, 'Nuuk', 2166086, 'Americas'),
('United States Virgin Islands', 106290, 'Charlotte Amalie', 347, 'Americas'),
('Guam', 168783, 'Hagåtña', 549, 'Oceania'),
('Israel', 9216900, 'Jerusalem', 20770, 'Asia'),
('Brunei', 437483, 'Bandar Seri Begawan', 5765, 'Asia'),
('Hungary', 9749763, 'Budapest', 93028, 'Europe'),
('Isle of Man', 85032, 'Douglas', 572, 'Europe'),
('Ukraine', 44134693, 'Kyiv', 603500, 'Europe'),
('Botswana', 2351625, 'Gaborone', 582000, 'Africa'),
('Belgium', 11555997, 'Brussels', 30528, 'Europe'),
('Tonga', 105697, 'Nuku\'alofa', 747, 'Oceania'),
('Benin', 12123198, 'Porto-Novo', 112622, 'Africa'),
('Antigua and Barbuda', 97928, 'Saint John\'s', 442, 'Americas'),
('Thailand', 69799978, 'Bangkok', 513120, 'Asia'),
('Cuba', 11326616, 'Havana', 109884, 'Americas'),
('Zambia', 18383956, 'Lusaka', 752612, 'Africa'),
('Christmas Island', 2072, 'Flying Fish Cove', 135, 'Oceania'),
('Kenya', 53771300, 'Nairobi', 580367, 'Africa'),
('Eswatini', 1160164, 'Mbabane', 17364, 'Africa'),
('New Caledonia', 271960, 'Nouméa', 18575, 'Oceania'),
('South Sudan', 11193729, 'Juba', 619745, 'Africa'),
('Poland', 37950802, 'Warsaw', 312679, 'Europe'),
('American Samoa', 55197, 'Pago Pago', 199, 'Oceania'),
('Mali', 20250834, 'Bamako', 1240192, 'Africa'),
('Nicaragua', 6624554, 'Managua', 130373, 'Americas'),
('Tokelau', 1411, 'Fakaofo', 12, 'Oceania'),
('Guatemala', 16858333, 'Guatemala City', 108889, 'Americas'),
('Jordan', 10203140, 'Amman', 89342, 'Asia'),
('Bolivia', 11673029, 'Sucre', 1098581, 'Americas'),
('Norfolk Island', 2302, 'Kingston', 36, 'Oceania'),
('Ghana', 31072945, 'Accra', 238533, 'Africa'),
('Andorra', 77265, 'Andorra la Vella', 468, 'Europe'),
('Mozambique', 31255435, 'Maputo', 801590, 'Africa'),
('Dominican Republic', 10847904, 'Santo Domingo', 48671, 'Americas'),
('British Indian Ocean Territory', 3000, 'Diego Garcia', 60, 'Africa'),
('Gibraltar', 33691, 'Gibraltar', 6, 'Europe'),
('Qatar', 2881060, 'Doha', 11586, 'Asia'),
('Philippines', 109581085, 'Manila', 342353, 'Asia'),
('Slovakia', 5458827, 'Bratislava', 49037, 'Europe'),
('Argentina', 45376763, 'Buenos Aires', 2780400, 'Americas'),
('South Africa', 59308690, 'Pretoria,Bloemfontein,Cape Town', 1221037, 'Africa'),
('Saint Kitts and Nevis', 53192, 'Basseterre', 261, 'Americas'),
('Saint Lucia', 183629, 'Castries', 616, 'Americas'),
('Rwanda', 12952209, 'Kigali', 26338, 'Africa'),
('Martinique', 378243, 'Fort-de-France', 1128, 'Americas'),
('Kazakhstan', 18754440, 'Nur-Sultan', 2724900, 'Asia'),
('Greece', 10715549, 'Athens', 131990, 'Europe'),
('Malaysia', 32365998, 'Kuala Lumpur', 330803, 'Asia'),
('Lesotho', 2142252, 'Maseru', 30355, 'Africa'),
('Faroe Islands', 48865, 'Tórshavn', 1393, 'Europe'),
('Netherlands', 16655799, 'Amsterdam', 41850, 'Europe'),
('Canada', 38005238, 'Ottawa', 9984670, 'Americas'),
('India', 1380004385, 'New Delhi', 3287590, 'Asia'),
('Syria', 17500657, 'Damascus', 185180, 'Asia'),
('Iceland', 366425, 'Reykjavik', 103000, 'Europe'),
('Monaco', 39244, 'Monaco', 2, 'Europe'),
('Iraq', 40222503, 'Baghdad', 438317, 'Asia'),
('Morocco', 36910558, 'Rabat', 446550, 'Africa'),
('Curaçao', 155014, 'Willemstad', 444, 'Americas'),
('Finland', 5530719, 'Helsinki', 338424, 'Europe'),
('Bahamas', 393248, 'Nassau', 13943, 'Americas'),
('Slovenia', 2100126, 'Ljubljana', 20273, 'Europe'),
('Bulgaria', 6927288, 'Sofia', 110879, 'Europe'),
('Jamaica', 2961161, 'Kingston', 10991, 'Americas'),
('Bahrain', 1701583, 'Manama', 765, 'Asia'),
('France', 67391582, 'Paris', 551695, 'Europe'),
('Comoros', 869595, 'Moroni', 1862, 'Africa'),
('Brazil', 212559409, 'Brasília', 8515767, 'Americas'),
('Ethiopia', 114963583, 'Addis Ababa', 1104300, 'Africa'),
('Liechtenstein', 38137, 'Vaduz', 160, 'Europe'),
('Gambia', 2416664, 'Banjul', 10689, 'Africa'),
('Niger', 24206636, 'Niamey', 1267000, 'Africa'),
('Estonia', 1331057, 'Tallinn', 45227, 'Europe'),
('Vietnam', 97338583, 'Hanoi', 331212, 'Asia'),
('Bermuda', 63903, 'Hamilton', 54, 'Americas'),
('Montenegro', 621718, 'Podgorica', 13812, 'Europe'),
('Cayman Islands', 65720, 'George Town', 264, 'Americas'),
('North Korea', 25778815, 'Pyongyang', 120538, 'Asia'),
('Luxembourg', 632275, 'Luxembourg', 2586, 'Europe'),
('Turkmenistan', 6031187, 'Ashgabat', 488100, 'Asia'),
('Palau', 18092, 'Ngerulmud', 459, 'Oceania'),
('Tunisia', 11818618, 'Tunis', 163610, 'Africa'),
('Western Sahara', 510713, 'El Aaiún', 266000, 'Africa'),
('Latvia', 1901548, 'Riga', 64559, 'Europe'),
('Cameroon', 26545864, 'Yaoundé', 475442, 'Africa'),
('Saint Martin', 38659, 'Marigot', 53, 'Americas'),
('French Southern and Antarctic Lands', 400, 'Port-aux-Français', 7747, 'Antarctic'),
('Iran', 83992953, 'Tehran', 1648195, 'Asia'),
('Mauritania', 4649660, 'Nouakchott', 1030700, 'Africa'),
('United States', 329484123, 'Washington, D.C.', 9372610, 'Americas'),
('Mauritius', 1265740, 'Port Louis', 2040, 'Africa'),
('British Virgin Islands', 30237, 'Road Town', 151, 'Americas'),
('Saint Barthélemy', 4255, 'Gustavia', 21, 'Americas'),
('United Kingdom', 67215293, 'London', 242900, 'Europe'),
('Montserrat', 4922, 'Plymouth', 102, 'Americas'),
('Trinidad and Tobago', 1399491, 'Port of Spain', 5130, 'Americas'),
('South Korea', 51780579, 'Seoul', 100210, 'Asia'),
('El Salvador', 6486201, 'San Salvador', 21041, 'Americas'),
('Taiwan', 23503349, 'Taipei', 36193, 'Asia'),
('Réunion', 840974, 'Saint-Denis', 2511, 'Africa'),
('Seychelles', 98462, 'Victoria', 452, 'Africa'),
('Serbia', 6908224, 'Belgrade', 88361, 'Europe'),
('Afghanistan', 40218234, 'Kabul', 652230, 'Asia'),
('Colombia', 50882884, 'Bogotá', 1141748, 'Americas'),
('Pakistan', 220892331, 'Islamabad', 881912, 'Asia'),
('Lithuania', 2794700, 'Vilnius', 65300, 'Europe'),
('Hong Kong', 7500700, 'City of Victoria', 1104, 'Asia'),
('DR Congo', 108407721, 'Kinshasa', 2344858, 'Africa'),
('Tuvalu', 11792, 'Funafuti', 26, 'Oceania'),
('Zimbabwe', 14862927, 'Harare', 390757, 'Africa'),
('Burkina Faso', 20903278, 'Ouagadougou', 272967, 'Africa'),
('Bosnia and Herzegovina', 3280815, 'Sarajevo', 51209, 'Europe'),
('Guadeloupe', 400132, 'Basse-Terre', 1628, 'Americas'),
('Singapore', 5685807, 'Singapore', 710, 'Asia'),
('Equatorial Guinea', 1402985, 'Malabo', 28051, 'Africa'),
('Anguilla', 13452, 'The Valley', 91, 'Americas'),
('Tajikistan', 9537642, 'Dushanbe', 143100, 'Asia'),
('Cocos (Keeling) Islands', 544, 'West Island', 14, 'Oceania'),
('Niue', 1470, 'Alofi', 260, 'Oceania'),
('Germany', 83240525, 'Berlin', 357114, 'Europe'),
('Moldova', 2617820, 'Chișinău', 33846, 'Europe'),
('Somalia', 15893219, 'Mogadishu', 637657, 'Africa'),
('Myanmar', 54409794, 'Naypyidaw', 676578, 'Asia'),
('Czechia', 10698896, 'Prague', 78865, 'Europe'),
('Romania', 19286123, 'Bucharest', 238391, 'Europe'),
('Turkey', 84339067, 'Ankara', 783562, 'Asia'),
('Belarus', 9398861, 'Minsk', 207600, 'Europe'),
('Mayotte', 226915, 'Mamoudzou', 374, 'Africa'),
('Nepal', 29136808, 'Kathmandu', 147181, 'Asia'),
('Bouvet Island', 0, 'undefined', 49, 'Antarctic'),
('Guyana', 786559, 'Georgetown', 214969, 'Americas'),
('Cambodia', 16718971, 'Phnom Penh', 181035, 'Asia'),
('Grenada', 112519, 'St. George\'s', 344, 'Americas'),
('Mexico', 128932753, 'Mexico City', 1964375, 'Americas'),
('Burundi', 11890781, 'Gitega', 27834, 'Africa'),
('French Polynesia', 280904, 'Papeetē', 4167, 'Oceania'),
('Sri Lanka', 21919000, 'Sri Jayawardenepura Kotte', 65610, 'Asia'),
('Namibia', 2540916, 'Windhoek', 825615, 'Africa'),
('Saint Vincent and the Grenadines', 110947, 'Kingstown', 389, 'Americas'),
('Yemen', 29825968, 'Sana\'a', 527968, 'Asia'),
('Guinea', 13132792, 'Conakry', 245857, 'Africa'),
('Switzerland', 8654622, 'Bern', 41284, 'Europe'),
('Kiribati', 119446, 'South Tarawa', 811, 'Oceania'),
('Costa Rica', 5094114, 'San José', 51100, 'Americas'),
('Haiti', 11402533, 'Port-au-Prince', 27750, 'Americas'),
('Vanuatu', 307150, 'Port Vila', 12189, 'Oceania'),
('Solomon Islands', 686878, 'Honiara', 28896, 'Oceania'),
('Wallis and Futuna', 11750, 'Mata-Utu', 142, 'Oceania'),
('Belize', 397621, 'Belmopan', 22966, 'Americas'),
('Puerto Rico', 3194034, 'San Juan', 8870, 'Americas'),
('Algeria', 44700000, 'Algiers', 2381741, 'Africa'),
('Liberia', 5057677, 'Monrovia', 111369, 'Africa'),
('Portugal', 10305564, 'Lisbon', 92090, 'Europe');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kraje`
--
ALTER TABLE `kraje`
  ADD UNIQUE KEY `name` (`name`) USING HASH;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
