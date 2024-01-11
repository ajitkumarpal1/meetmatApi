-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 10:20 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r_bigness`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `sr_no` int(16) NOT NULL,
  `group_id` int(16) NOT NULL,
  `member_id` int(16) NOT NULL,
  `type` varchar(6) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`sr_no`, `group_id`, `member_id`, `type`, `comment`, `date_time`) VALUES
(17, 65, 225, 'string', 'aa', '2021-04-28 01:03:21'),
(18, 65, 225, 'string', 'aasdfs', '2021-04-28 01:08:52'),
(19, 65, 83, 'string', 'hello', '2021-04-28 02:57:59'),
(20, 66, 83, 'string', 'aaa', '2021-04-28 02:59:29'),
(21, 65, 225, 'string', 'sss', '2021-04-28 03:04:49'),
(22, 65, 225, 'string', 'sss', '2021-04-28 03:04:52'),
(23, 65, 225, 'string', 'c', '2021-04-28 03:08:18'),
(24, 66, 225, 'string', 'dd', '2021-04-28 03:16:04'),
(25, 66, 225, 'string', '  ', '2021-04-28 03:16:44'),
(27, 66, 225, 'string', 'd', '2021-04-28 03:18:43'),
(29, 66, 225, 'string', 'f', '2021-04-28 03:21:07'),
(31, 65, 225, 'string', 'x', '2021-04-28 03:22:11'),
(32, 65, 225, 'string', 'x', '2021-04-28 03:23:01'),
(68, 66, 83, 'string', 'hh', '2021-05-05 19:46:33'),
(69, 66, 83, 'string', 'aj', '2021-05-05 19:48:33'),
(70, 66, 83, 'string', 'hh', '2021-05-05 19:49:18'),
(71, 66, 83, 'string', 'gg', '2021-05-05 19:50:14'),
(106, 71, 83, 'string', 'this group is criated by me', '2021-05-07 19:47:46'),
(107, 72, 83, 'string', 'this group is criated by me', '2021-05-07 19:56:40'),
(108, 67, 225, 'string', 'm', '2021-05-09 19:34:31'),
(109, 66, 225, 'string', 'h\n', '2021-05-09 19:46:08'),
(110, 74, 225, 'string', 'this group is criated by me', '2021-05-17 13:38:04'),
(111, 66, 225, 'string', 'hello okok boy\n', '2021-05-27 19:04:36'),
(112, 66, 83, 'string', 'kya he', '2021-05-27 19:04:44'),
(113, 75, 83, 'string', 'this group is criated by me', '2021-05-27 21:53:40'),
(114, 74, 225, 'string', 'hey\n', '2021-06-12 16:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `field`
--

CREATE TABLE `field` (
  `sr_no` int(16) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `join_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `field`
--

INSERT INTO `field` (`sr_no`, `field_name`, `join_id`) VALUES
(1502, 'Automotive and Transport', 0),
(1503, 'Automotive', 0),
(1504, 'Automotive Aftermarket', 0),
(1505, 'Automotive Finance', 0),
(1506, 'Automotive Leasing and Rental', 0),
(1507, 'Automotive Manufacturing', 0),
(1508, 'Automotive Parts', 0),
(1509, 'Automotive Batteries', 0),
(1510, 'Automotive Body, Trim and Glass', 0),
(1511, 'Automotive Commodities', 0),
(1512, 'Automotive Drivetrain and Transmission Components', 0),
(1513, 'Automotive Fuel Systems', 0),
(1514, 'Automotive Interior Components', 0),
(1515, 'Automotive Seats and Components', 0),
(1516, 'Automotive Materials', 0),
(1517, 'Automotive Safety', 0),
(1518, 'Automotive Tires', 0),
(1519, 'Brake Systems and Components', 0),
(1520, 'Engines and Engine Parts', 0),
(1521, 'Exhaust Systems and Components', 0),
(1522, 'Filters', 0),
(1523, 'Seatbelts and Airbags', 0),
(1524, 'Steering Systems and Components', 0),
(1525, 'Suspension Systems and Components', 0),
(1526, 'Telematics and Vehicle Electronics', 0),
(1527, 'Automotive Climate Control Systems', 0),
(1528, 'Automotive Sensors', 0),
(1529, 'In Car Entertainment Systems', 0),
(1530, 'Automotive Repair', 0),
(1531, 'Automotive Sales', 0),
(1532, 'Car Fleet', 0),
(1533, 'Cars', 0),
(1534, 'Commercial Vehicles', 0),
(1535, 'Trucks', 0),
(1536, 'Electric and Hybrid Vehicles', 0),
(1537, 'Emergency Vehicles', 0),
(1538, 'Motorcycles', 0),
(1539, 'RVs and Mobile Homes', 0),
(1540, 'Used Vehicles', 0),
(1541, 'Commercial Aerospace', 0),
(1542, 'Aircraft', 0),
(1543, 'Aircraft Parts', 0),
(1544, 'Airport Security', 0),
(1545, 'Airports and Air Traffic Control', 0),
(1546, 'Aviation Freight and Cargo', 0),
(1547, 'Avionics', 0),
(1548, 'Space Systems, Satellites and Launchers', 0),
(1549, 'Unmanned Aerial Vehicles (UAVs) - Drones', 0),
(1550, 'Maritime', 0),
(1551, 'Fishing Vessels and Equipment', 0),
(1552, 'Ports and Harbors', 0),
(1553, 'Sea and Water Freight', 0),
(1554, 'Shipbuilding and Ship Parts', 0),
(1555, 'Private Transport Services', 0),
(1556, 'Public Transport', 0),
(1557, 'Rail', 0),
(1558, 'Rail Transport Vehicles', 0),
(1559, 'Business and Finance', 1),
(1560, 'Banking', 1),
(1561, 'Commercial Banking', 1),
(1562, 'Credit and Loans', 1),
(1563, 'Foreign Exchange', 1),
(1564, 'Investment Banking', 1),
(1565, 'Wealth Management', 1),
(1566, 'Mortgages', 1),
(1567, 'Online Banking', 1),
(1568, 'Retail Banking', 1),
(1569, 'ATM', 1),
(1570, 'Bank Cards', 1),
(1571, 'Credit Cards', 1),
(1572, 'Debit Cards', 1),
(1573, 'Pensions', 1),
(1574, 'Personal Finance', 1),
(1575, 'Business', 1),
(1576, 'Accounting', 1),
(1577, 'Payroll', 1),
(1578, 'Tax', 1),
(1579, 'Advertising and Marketing', 1),
(1580, 'Branding', 1),
(1581, 'Demographics', 1),
(1582, 'Direct Marketing', 1),
(1583, 'Marketing Lists', 1),
(1584, 'Online Advertising', 1),
(1585, 'Outdoor Advertising', 1),
(1586, 'Business Communication and Presentation', 1),
(1587, 'Consulting and Outsourcing', 1),
(1588, 'Corporate Governance', 1),
(1589, 'CRM (Customer Relationship Management)', 1),
(1590, 'Facilities Management', 1),
(1591, 'Franchise', 1),
(1592, 'Management', 1),
(1593, 'Leadership and Motivation', 1),
(1594, 'Operations Research and Decision Making', 1),
(1595, 'Organizational Theory and Behavior', 1),
(1596, 'Production and Quality Management', 1),
(1597, 'Project Management', 1),
(1598, 'Mergers and Acquisitions', 1),
(1599, 'Nonprofit Sector', 1),
(1600, 'Personnel and Human Resources', 1),
(1601, 'Professional Development and Training', 1),
(1602, 'IT Training', 1),
(1603, 'Recruitment and Employment Agencies', 1),
(1604, 'Public Relations', 1),
(1605, 'Economics', 1),
(1606, 'International Trade', 1),
(1607, 'Macroeconomics', 1),
(1608, 'Microeconomics', 1),
(1609, 'Finance', 1),
(1610, 'Capital Markets', 1),
(1611, 'Derivatives', 1),
(1612, 'Hedge Funds', 1),
(1613, 'Securitization', 1),
(1614, 'Corporate Finance', 1),
(1615, 'Islamic Finance', 1),
(1616, 'Leasing', 1),
(1617, 'Private Equity', 1),
(1618, 'Project Finance', 1),
(1619, 'Venture Capital', 1),
(1620, 'Insurance', 1),
(1621, 'Automotive Insurance', 1),
(1622, 'Health Insurance', 1),
(1623, 'Life Insurance', 1),
(1624, 'Property Insurance', 1),
(1625, 'Reinsurance', 1),
(1626, 'Travel Insurance', 1),
(1627, 'Legal', 1),
(1628, 'Bankruptcy', 1),
(1629, 'Commercial Law', 1),
(1630, 'Construction Law', 1),
(1631, 'Criminal Law', 1),
(1632, 'Employment Law', 1),
(1633, 'Human Rights Law', 1),
(1634, 'Intellectual Property', 1),
(1635, 'Patents', 1),
(1636, 'International Law', 1),
(1637, 'Medical Law', 1),
(1638, 'Property Law', 1),
(1639, 'Property', 1),
(1640, 'Agents and Brokers', 1),
(1641, 'Commercial Property', 1),
(1642, 'Residential Property', 1),
(1643, 'Chemicals and Materials', 2),
(1644, 'Adhesives and Sealants', 2),
(1645, 'Acrylic Adhesives', 2),
(1646, 'Construction Adhesives', 2),
(1647, 'Epoxy Adhesives', 2),
(1648, 'Advanced Materials', 2),
(1649, 'Ceramics', 2),
(1650, 'Clay and Porcelain', 2),
(1651, 'Chemicals', 2),
(1652, 'Agrochemicals and Fertilizers', 2),
(1653, 'Fertilizer', 2),
(1654, 'Catalysts', 2),
(1655, 'Chemical Auxiliary Agents', 2),
(1656, 'Cosmetic Chemicals', 2),
(1657, 'Detergent Chemicals', 2),
(1658, 'Disinfectants', 2),
(1659, 'Dyes and Pigments', 2),
(1660, 'Dyestuff Intermediates', 2),
(1661, 'Pigments', 2),
(1662, 'Electronic Chemicals', 2),
(1663, 'Explosives', 2),
(1664, 'Feed Additives', 2),
(1665, 'Flame Retardants', 2),
(1666, 'Food Additive Chemicals', 2),
(1667, 'Fragrance, Flavor and Aroma Chemicals', 2),
(1668, 'Aldehydes', 2),
(1669, 'Essential Oils', 2),
(1670, 'Esters', 2),
(1671, 'Fuel Additives', 2),
(1672, 'Hair Care Chemicals', 2),
(1673, 'Industrial and Specialty Gases', 2),
(1674, 'Lubricants and Greases', 2),
(1675, 'Oilfield Chemicals', 2),
(1676, 'Oral Care Chemicals', 2),
(1677, 'Organic Acids', 2),
(1678, 'Paints and Coatings', 2),
(1679, 'Electrical Insulating Varnishes', 2),
(1680, 'Petrochemicals', 2),
(1681, 'Plastic Additives', 2),
(1682, 'Refrigerants', 2),
(1683, 'Rubber Auxiliary Agents', 2),
(1684, 'Silicones', 2),
(1685, 'Solvents', 2),
(1686, 'Surfactants', 2),
(1687, 'Water Treatment Chemicals', 2),
(1688, 'Composites', 2),
(1689, 'Glass', 2),
(1690, 'Safety Glass', 2),
(1691, 'Metals and Minerals', 2),
(1692, 'Carbonate Minerals', 2),
(1693, 'Chalk', 2),
(1694, 'Ferrous Metals', 2),
(1695, 'Iron and Steel', 2),
(1696, 'Non Ferrous Metals', 2),
(1697, 'Aluminum', 2),
(1698, 'Copper', 2),
(1699, 'Nickel', 2),
(1700, 'Precious Metals', 2),
(1701, 'Salts', 2),
(1702, 'Wire and Cables', 2),
(1703, 'Nanomaterials', 2),
(1704, 'Packaging', 2),
(1705, 'Beverage Packaging', 2),
(1706, 'Food Packaging', 2),
(1707, 'Labels', 2),
(1708, 'Metal Packaging', 2),
(1709, 'Paper and Board Packaging', 2),
(1710, 'Pharmaceutical Packaging', 2),
(1711, 'Plastic Packaging', 2),
(1712, 'Plastics', 2),
(1713, 'Bioplastics', 2),
(1714, 'Engineering Plastics', 2),
(1715, 'Plastic Films', 2),
(1716, 'Plastic Resins', 2),
(1717, 'Polyurethanes', 2),
(1718, 'Pulp and Paper', 2),
(1719, 'Recycling and Recycled Materials', 2),
(1720, 'Rubber', 2),
(1721, 'Textiles', 2),
(1722, 'Animal Textiles', 2),
(1723, 'Mineral Textiles', 2),
(1724, 'Plant Textiles', 2),
(1725, 'Synthetic Textiles', 2),
(1726, 'Technical Textiles', 2),
(1727, 'Wax', 2),
(1728, 'Wood and Wood Products', 3),
(1729, 'Arts and Crafts Supplies', 3),
(1730, 'Baby and Child Products', 3),
(1731, 'Clothing', 3),
(1732, 'Apparel Accessories', 3),
(1733, 'Baby and Childrenswear', 3),
(1734, 'Footwear', 3),
(1735, 'Handbags, Purses and Wallets', 3),
(1736, 'Jewelry and Watches', 3),
(1737, 'Luggage and Travel Bags', 3),
(1738, 'Menswear', 3),
(1739, 'Sportswear', 3),
(1740, 'Womenswear', 3),
(1741, 'Lingerie and Hosiery', 3),
(1742, 'Workwear', 3),
(1743, 'Consumer Electronics', 3),
(1744, 'Audio Equipment', 3),
(1745, 'Cameras and Camera Equipment', 3),
(1746, 'Car Electronics and GPS', 3),
(1747, 'Computer Accessories', 3),
(1748, 'Desktop Computers and Monitors', 3),
(1749, 'Laptops and Notebooks', 3),
(1750, 'Lighting Equipment', 3),
(1751, 'Smartphones and Mobile Devices', 3),
(1752, 'Tablets and E-Readers', 3),
(1753, 'Televisions and Television Services', 3),
(1754, 'Video Games and Consoles', 3),
(1755, 'Wearable Technology', 3),
(1756, 'Consumer Services', 3),
(1757, 'Fitness Centers and Health Clubs', 3),
(1758, 'Florists', 3),
(1759, 'Funeral Services', 3),
(1760, 'Hair and Beauty Services', 3),
(1761, 'Interior Design and Decorative Arts', 3),
(1762, 'Landscaping Services', 3),
(1763, 'Laundromats and Dry Cleaners', 3),
(1764, 'Pet Care and Services', 3),
(1765, 'Photography Services', 3),
(1766, 'Household', 3),
(1767, 'Do It Yourself', 3),
(1768, 'Furniture', 3),
(1769, 'Beds and Bedding', 3),
(1770, 'Chairs and Seats', 3),
(1771, 'Office Furniture', 3),
(1772, 'Gardening Supplies and Equipment', 3),
(1773, 'Home Security and Safety', 3),
(1774, 'Household Appliances', 3),
(1775, 'Household Cleaners', 3),
(1776, 'Air Fresheners', 3),
(1777, 'Laundry Care and Detergents', 3),
(1778, 'Office Supplies and Equipment', 3),
(1779, 'Stationery and Greeting Cards', 3),
(1780, 'Pest Control Products', 3),
(1781, 'Media and Entertainment', 3),
(1782, 'Broadcast', 3),
(1783, 'Radio Broadcasting', 3),
(1784, 'Cable Television', 3),
(1785, 'Entertainment', 3),
(1786, 'Film and Motion Picture', 3),
(1787, 'Gambling', 3),
(1788, 'Casinos', 3),
(1789, 'Online Gambling', 3),
(1790, 'Gaming', 3),
(1791, 'Multimedia', 3),
(1792, 'Music', 3),
(1793, 'Publishing and Printing', 3),
(1794, 'Books and Ebooks', 3),
(1795, 'Magazines and Periodicals', 3),
(1796, 'Newspapers', 3),
(1797, 'Video on Demand', 3),
(1798, 'Video, DVD and Blu-ray', 3),
(1799, 'Personal Care Products', 3),
(1800, 'Baby Care Products', 3),
(1801, 'Cosmetics', 3),
(1802, 'Depilatories', 3),
(1803, 'Eye Care and Eyewear', 3),
(1804, 'Feminine Hygiene Products', 3),
(1805, 'Fragrances', 3),
(1806, 'Deodorants and Anti Perspirants', 3),
(1807, 'Hair Care Products', 3),
(1808, 'Mens Grooming Products', 3),
(1809, 'Oral Care Products', 3),
(1810, 'Skin Care Products', 3),
(1811, 'Sun Care Products', 3),
(1812, 'Soap, Bath and Shower Products', 3),
(1813, 'Retail', 3),
(1814, 'Convenience Stores and Service Stations', 3),
(1815, 'Department Stores', 3),
(1816, 'Discount Retail', 3),
(1817, 'Drugstores and Pharmacies', 3),
(1818, 'Duty Free', 3),
(1819, 'Electronic Device Retailing', 3),
(1820, 'Electronic Retailing, Mail Order and Catalogs', 3),
(1821, 'Food and Grocery Retailing', 3),
(1822, 'Furniture Retailing', 3),
(1823, 'Home Centers and Hardware Stores', 3),
(1824, 'Supermarkets', 3),
(1825, 'Superstores', 3),
(1826, 'Sporting Goods and Equipment', 3),
(1827, 'Angling and Hunting Equipment', 3),
(1828, 'Bikes and Cycling Equipment', 3),
(1829, 'Golf Equipment', 3),
(1830, 'Tennis and Racket Sports Equipment', 3),
(1831, 'Toys', 3),
(1832, 'Travel and Tourism', 3),
(1833, 'Air Travel', 3),
(1834, 'Business Travel', 3),
(1835, 'Hotels and Travel Accomodation', 3),
(1836, 'Medical Tourism', 3),
(1837, 'Travel Intermediaries', 3),
(1838, 'Energy and Natural Resources', 4),
(1839, 'Biofuels', 4),
(1840, 'Combined Heat and Power (CHP)', 4),
(1841, 'Electricity', 4),
(1842, 'Generators', 4),
(1843, 'Smart Grid', 4),
(1844, 'Energy Maps', 4),
(1845, 'Energy Storage', 4),
(1846, 'Battery Technology', 4),
(1847, 'Fuel Cells', 4),
(1848, 'Environmental', 4),
(1849, 'Air Purification', 4),
(1850, 'Carbon Emissions and Capture', 4),
(1851, 'Waste Management', 4),
(1852, 'Fossil Fuels', 4),
(1853, 'Coal', 4),
(1854, 'Gas', 4),
(1855, 'LNG (Liquefied Natural Gas)', 4),
(1856, 'LPG (Liquefied Petroleum Gas)', 4),
(1857, 'Natural Gas', 4),
(1858, 'Oil', 4),
(1859, 'Gasoline and Diesel', 4),
(1860, 'Oilfield Equipment and Services', 4),
(1861, 'Oil and Gas Exploration and Production', 4),
(1862, 'Mining', 4),
(1863, 'Coal Mining', 4),
(1864, 'Gold and Silver Mining', 4),
(1865, 'Iron Ore Mining', 4),
(1866, 'Mining Equipment', 4),
(1867, 'Uranium Mining', 4),
(1868, 'Nuclear Power', 4),
(1869, 'Pipelines', 4),
(1870, 'Renewable Energy', 4),
(1871, 'Geothermal Energy', 4),
(1872, 'Hydro Power', 4),
(1873, 'Solar Power', 4),
(1874, 'Photovoltaics', 4),
(1875, 'Wind Power', 4),
(1876, 'Utilities', 4),
(1877, 'Water', 4),
(1878, 'Water Treatment', 4),
(1879, 'Food and Beverage', 5),
(1880, 'Agriculture', 5),
(1881, 'Agribusiness', 5),
(1882, 'Animal Feedstuffs', 5),
(1883, 'Aquaculture', 5),
(1884, 'Commercial Fishing', 5),
(1885, 'Crop Farming', 5),
(1886, 'Seeds', 5),
(1887, 'Forestry', 5),
(1888, 'Livestock', 5),
(1889, 'Beverage', 5),
(1890, 'Alcoholic Beverages', 5),
(1891, 'Beer', 5),
(1892, 'Brandy', 5),
(1893, 'Cider', 5),
(1894, 'Spirits', 5),
(1895, 'Gin', 5),
(1896, 'Rum', 5),
(1897, 'Tequila', 5),
(1898, 'Vodka', 5),
(1899, 'Whiskey', 5),
(1900, 'Wine', 5),
(1901, 'Bottled Water', 5),
(1902, 'Hot Drinks', 5),
(1903, 'Coffee', 5),
(1904, 'Tea', 5),
(1905, 'Juice', 5),
(1906, 'Soft Drinks', 5),
(1907, 'Sport, Energy and Functional Drinks', 5),
(1908, 'Food', 5),
(1909, 'Baby Food', 5),
(1910, 'Baked Goods', 5),
(1911, 'Breakfast Cereals', 5),
(1912, 'Canned Food', 5),
(1913, 'Cereals, Grains and Pulses', 5),
(1914, 'Condiments and Dressings', 5),
(1915, 'Dairy Products', 5),
(1916, 'Butter', 5),
(1917, 'Cheese', 5),
(1918, 'Milk and Cream', 5),
(1919, 'Yogurt', 5),
(1920, 'Desserts', 5),
(1921, 'Fast Food and Take Out', 5),
(1922, 'Fish and Seafood', 5),
(1923, 'Frozen Food', 5),
(1924, 'Ice Cream', 5),
(1925, 'Fruit and Vegetables', 5),
(1926, 'Health Food and Sports Nutrition', 5),
(1927, 'Nutraceuticals and Weight Loss', 5),
(1928, 'Jellies, Preserves and Spreads', 5),
(1929, 'Meat, Poultry and Eggs', 5),
(1930, 'Nuts, Seeds and Dried Fruit', 5),
(1931, 'Oils and Fats', 5),
(1932, 'Organic Foods', 5),
(1933, 'Pasta and Noodles', 5),
(1934, 'Pet Food', 5),
(1935, 'Pizza', 5),
(1936, 'Processed Food', 5),
(1937, 'Rice and Rice Products', 5),
(1938, 'Snacks and Confectionery', 5),
(1939, 'Chocolate and Cocoa Products', 5),
(1940, 'Savory Snacks', 5),
(1941, 'Soup', 5),
(1942, 'Food Ingredients', 5),
(1943, 'Food Additives', 5),
(1944, 'Spices and Seasonings', 5),
(1945, 'Sugar and Sweeteners', 5),
(1946, 'Food Processing', 5),
(1947, 'Food Safety', 5),
(1948, 'Food Service', 5),
(1949, 'Catering', 5),
(1950, 'Restaurants, Bars and Cafés', 5),
(1951, 'Vending Machines', 5),
(1952, 'Tobacco', 5),
(1953, 'E-Cigarettes', 5),
(1954, 'Government and Public Sector', 6),
(1955, 'Government', 6),
(1956, 'Local Government', 6),
(1957, 'International Relations', 6),
(1958, 'Public Sector', 6),
(1959, 'Education', 6),
(1960, 'Higher and Further Education', 6),
(1961, 'Philosophy and Theory of Education', 6),
(1962, 'Special Education Needs Teaching', 6),
(1963, 'Teaching Skills and Equipment', 6),
(1964, 'Healthcare', 7),
(1965, 'Biotechnology', 7),
(1966, 'Bioinformatics', 7),
(1967, 'Biomarkers', 7),
(1968, 'Biomaterials', 7),
(1969, 'Enzymes', 7),
(1970, 'Genomics', 7),
(1971, 'Nanomedicine', 7),
(1972, 'Proteomics', 7),
(1973, 'Stem Cells', 7),
(1974, 'Healthcare Services', 7),
(1975, 'Animal Healthcare/Veterinary', 7),
(1976, 'Blood Banking', 7),
(1977, 'Clinical Skills', 7),
(1978, 'Dental', 7),
(1979, 'Diagnostics', 7),
(1980, 'Cholesterol Testing', 7),
(1981, 'Coagulation and Hemostasis Testing', 7),
(1982, 'Drug Abuse Screening', 7),
(1983, 'Glucose Testing', 7),
(1984, 'Home Testing and Home Healthcare', 7),
(1985, 'In Vitro Diagnostics', 7),
(1986, 'Molecular Diagnostics', 7),
(1987, 'Infectious Disease Testing', 7),
(1988, 'In-Office Testing', 7),
(1989, 'Laboratory Testing', 7),
(1990, 'Point-of-Care Diagnostics', 7),
(1991, 'Hospital Management', 7),
(1992, 'E-Healthcare', 7),
(1993, 'Healthcare Analytics', 7),
(1994, 'Hospital Information Systems', 7),
(1995, 'Healthcare Administration', 7),
(1996, 'Other Healthcare Facilities', 7),
(1997, 'Managed Care', 7),
(1998, 'Nursing', 7),
(1999, 'Optical', 7),
(2000, 'Surgical Procedures', 7),
(2001, 'Therapeutic Area', 7),
(2002, 'Allergy and Immunology', 7),
(2003, 'Alternative and Complementary Medicine', 7),
(2004, 'Anatomy', 7),
(2005, 'Cardiology', 7),
(2006, 'Clinical Therapies', 7),
(2007, 'Dermatology', 7),
(2008, 'Endocrinology', 7),
(2009, 'Gastroenterology', 7),
(2010, 'Hematology', 7),
(2011, 'Hepatology', 7),
(2012, 'Intensive Care and Emergency Medicine', 7),
(2013, 'Maternal and Neonatal Care', 7),
(2014, 'Mental Health', 7),
(2015, 'Neurology', 7),
(2016, 'Nuclear Medicine and Radiopharmacology', 7),
(2017, 'Oncology', 7),
(2018, 'Palliative Care', 7),
(2019, 'Pediatrics', 7),
(2020, 'Pulmonary Medicine', 7),
(2021, 'Sports Medicine and Physiotherapy', 7),
(2022, 'Urology and Nephrology', 7),
(2023, 'Womens Health', 7),
(2024, 'Wound Care', 7),
(2025, 'Laboratory Equipment', 7),
(2026, 'Medical Devices', 7),
(2027, 'Cardiovascular Devices', 7),
(2028, 'Catheters', 7),
(2029, 'Diabetes Devices', 7),
(2030, 'Dialysis', 7),
(2031, 'ENT Devices', 7),
(2032, 'Hearing Aids and Implants', 7),
(2033, 'Hospital Disposables', 7),
(2034, 'Medical Device Coatings', 7),
(2035, 'Medical Imaging', 7),
(2036, 'Computed Tomography', 7),
(2037, 'Contrast Media', 7),
(2038, 'Endoscopy', 7),
(2039, 'Magnetic Resonance Imaging (MRI)', 7),
(2040, 'Mammography', 7),
(2041, 'Radiography', 7),
(2042, 'Ultrasound', 7),
(2043, 'Medical Plastics', 7),
(2044, 'Medical Textiles', 7),
(2045, 'Needles and Syringes', 7),
(2046, 'Neurology Devices', 7),
(2047, 'Orthopedic Devices', 7),
(2048, 'Patient Monitoring Equipment', 7),
(2049, 'Respiratory Devices', 7),
(2050, 'Stents', 7),
(2051, 'Surgical Devices', 7),
(2052, 'Wheelchairs and Mobility Aids', 7),
(2053, 'Humanities Books', 8),
(2054, 'Library and Information Science', 8),
(2055, 'Political Science', 8),
(2056, 'Psychology', 8),
(2057, 'Society and Social Sciences', 8),
(2058, 'Sociology', 8),
(2059, 'Manufacturing and Construction', 9),
(2060, 'Construction', 9),
(2061, 'Architecture and Urban Planning', 9),
(2062, 'Building Materials', 9),
(2063, 'Brick', 9),
(2064, 'Cement and Concrete', 9),
(2065, 'Doors and Windows', 9),
(2066, 'Flooring', 9),
(2067, 'Insulation', 9),
(2068, 'Stone', 9),
(2069, 'Tile', 9),
(2070, 'Commercial Building Construction', 9),
(2071, 'Elevators and Escalators', 9),
(2072, 'Fire Protection Materials and Devices', 9),
(2073, 'Hand Tools', 9),
(2074, 'Heavy Machinery', 9),
(2075, 'Cranes and Lifting Equipment', 9),
(2076, 'Excavation and Earthmoving Equipment', 9),
(2077, 'Road Construction Equipment', 9),
(2078, 'HVAC (Heating, Ventilation, and Air Conditioning)', 9),
(2079, 'Infrastructure Construction', 9),
(2080, 'Road and Highway Construction', 9),
(2081, 'Plumbing Fixtures', 9),
(2082, 'Residential Construction', 9),
(2083, 'Specialty Trade Contractors', 9),
(2084, 'Engineering', 9),
(2085, 'Chemical Engineering', 9),
(2086, 'Civil Engineering', 9),
(2087, 'Electrical Engineering', 9),
(2088, 'Microelectromechanical Systems (MEMS)', 9),
(2089, 'Mechanical Engineering', 9),
(2090, 'Manufacturing and Industry', 9),
(2091, '3D Printing', 9),
(2092, 'Heat Exchangers and Cooling Towers', 9),
(2093, 'Industrial Automation', 9),
(2094, 'Industrial Ovens', 9),
(2095, 'Industrial Refrigeration', 9),
(2096, 'Logistics', 9),
(2097, 'Supply Chain Management', 9),
(2098, 'Machinery', 9),
(2099, 'Agricultural Machinery and Equipment', 9),
(2100, 'Forestry Machinery and Equipment', 9),
(2101, 'Tractors', 9),
(2102, 'Compressors', 9),
(2103, 'Industrial Machinery', 9),
(2104, 'Textile Machinery', 9),
(2105, 'Machine Parts', 9),
(2106, 'Bearings', 9),
(2107, 'Belt and Chain Drives', 9),
(2108, 'Electrical Switches', 9),
(2109, 'Fasteners', 9),
(2110, 'Pipes', 9),
(2111, 'Valves', 9),
(2112, 'Machine Tools', 9),
(2113, 'Motors', 9),
(2114, 'Pumps', 9),
(2115, 'Turbines', 9),
(2116, 'Material Handling Equipment', 9),
(2117, 'Conveyors', 9),
(2118, 'Forklifts', 9),
(2119, 'Process Industry', 9),
(2120, 'Security Services', 9),
(2121, 'Military Aerospace and Defense', 10),
(2122, 'Ammunition', 10),
(2123, 'Biodefense', 10),
(2124, 'C4ISR', 10),
(2125, 'Homeland Defense', 10),
(2126, 'Infantry Weapons and Equipment', 10),
(2127, 'Military Aircraft', 10),
(2128, 'Military Logistics', 10),
(2129, 'Military Unmanned Systems', 10),
(2130, 'Missiles and Missiles Technology', 10),
(2131, 'Naval Vessels', 10),
(2132, 'Radar Systems', 10),
(2133, 'Tanks and Armored Vehicles', 10),
(2134, 'Pharmaceuticals', 11),
(2135, 'Anesthetic Drugs', 11),
(2136, 'Animal Pharmaceuticals', 11),
(2137, 'Antibiotics', 11),
(2138, 'Biopharmaceuticals', 11),
(2139, 'Biosimilars and Biosuperiors', 11),
(2140, 'Vaccines', 11),
(2141, 'Cancer Vaccines', 11),
(2142, 'Clinical Trials', 11),
(2143, 'Drug Delivery', 11),
(2144, 'Infusions and Injectables', 11),
(2145, 'Inhalers and Nebulisers', 11),
(2146, 'Transdermal and Transmucosal Drug Delivery', 11),
(2147, 'Drug Discovery', 11),
(2148, 'Drugs by Therapeutic Area', 11),
(2149, 'Addiction Disorders Drugs', 11),
(2150, 'Analgesics', 11),
(2151, 'Anti-Obesity Drugs', 11),
(2152, 'Cardiovascular Drugs', 11),
(2153, 'Central Nervous System Drugs', 11),
(2154, 'Alzheimers Disease Drugs', 11),
(2155, 'Dermatological Drugs', 11),
(2156, 'Acne Drugs', 11),
(2157, 'Psoriasis Drugs', 11),
(2158, 'Endocrine and Metabolic Disorders Drugs', 11),
(2159, 'Diabetes Drugs', 11),
(2160, 'Gastrointestinal Drugs', 11),
(2161, 'Hematological Drugs', 11),
(2162, 'Immune Disorders Drugs', 11),
(2163, 'Allergy Drugs', 11),
(2164, 'Immunosuppressive Drugs', 11),
(2165, 'Infectious Diseases Drugs', 11),
(2166, 'HIV/AIDS Drugs', 11),
(2167, 'Liver and Kidney Disorders Drugs', 11),
(2168, 'Mental Disorders Drugs', 11),
(2169, 'Anxiety Drugs', 11),
(2170, 'Schizophrenia Drugs', 11),
(2171, 'Musculoskeletal Disorders Drugs', 11),
(2172, 'Optical Disorders Drugs', 11),
(2173, 'Respiratory Drugs', 11),
(2174, 'Asthma Drugs', 11),
(2175, 'Bronchitis Drugs', 11),
(2176, 'Sexual and Reproductive Health Drugs', 11),
(2177, 'Urological Disorders Drugs', 11),
(2178, 'Generic Drugs', 11),
(2179, 'Oncology Drugs', 11),
(2180, 'Bladder Cancer Drugs', 11),
(2181, 'Brain Cancer Drugs', 11),
(2182, 'Breast Cancer Drugs', 11),
(2183, 'Cervical Cancer Drugs', 11),
(2184, 'Colon Cancer Drugs', 11),
(2185, 'Kidney Cancer Drugs', 11),
(2186, 'Leukemia Drugs', 11),
(2187, 'Liver Cancer Drugs', 11),
(2188, 'Lung Cancer Drugs', 11),
(2189, 'Lymphoma Drugs', 11),
(2190, 'Ovarian Cancer Drugs', 11),
(2191, 'Pancreatic Cancer Drugs', 11),
(2192, 'Prostate Cancer Drugs', 11),
(2193, 'Skin Cancer Drugs', 11),
(2194, 'Thyroid Cancer Drugs', 11),
(2195, 'Uterine Cancer Drugs', 11),
(2196, 'Over the Counter (OTC) Drugs', 11),
(2197, 'Cough and Cold Drugs', 11),
(2198, 'Pharmaceutical Intermediates', 11),
(2199, 'Pharmaceutical Manufacturing', 11),
(2200, 'Pharmacoeconomics', 11),
(2201, 'Vitamins and Dietary Supplements', 11),
(2202, 'Science Books', 12),
(2203, 'Biology and Life Sciences', 12),
(2204, 'Biochemistry', 12),
(2205, 'Botany and Plant Sciences', 12),
(2206, 'Cellular Biology and Cytology', 12),
(2207, 'Developmental Biology', 12),
(2208, 'Earth Sciences', 12),
(2209, 'Genetics', 12),
(2210, 'Marine Biology', 12),
(2211, 'Microbiology', 12),
(2212, 'Molecular Biology', 12),
(2213, 'Neurosciences', 12),
(2214, 'Zoology and Animal Sciences', 12),
(2215, 'Chemistry', 12),
(2216, 'Analytical Chemistry', 12),
(2217, 'Inorganic Chemistry', 12),
(2218, 'Organic Chemistry', 12),
(2219, 'Physical Chemistry', 12),
(2220, 'Geography', 12),
(2221, 'Mathematics', 12),
(2222, 'Applied mathematics', 12),
(2223, 'Calculus and Mathematical Analysis', 12),
(2224, 'Geometry', 12),
(2225, 'Mathematical Foundations', 12),
(2226, 'Probability and statistics', 12),
(2227, 'Physics', 12),
(2228, 'Atomic and molecular physics', 12),
(2229, 'Biophysics', 12),
(2230, 'Classical Mechanics', 12),
(2231, 'Electricity, electromagnetism and magnetism', 12),
(2232, 'Materials and States of Matter', 12),
(2233, 'Optical physics', 12),
(2234, 'Quantum physics and Quantum Mechanics', 12),
(2235, 'Telecommunications and Computing', 13),
(2236, 'Computing and Technology', 13),
(2237, 'Artificial Intelligence', 13),
(2238, 'Machine Learning and Data Mining', 13),
(2239, 'Natural Language Processing', 13),
(2240, 'Biometrics', 13),
(2241, 'Computing', 13),
(2242, 'High Performance Computing', 13),
(2243, 'Computing Services', 13),
(2244, 'Hardware', 13),
(2245, 'Processing Units', 13),
(2246, 'Tablet and Mobile Device Hardware', 13),
(2247, 'Internet of Things and M2M', 13),
(2248, 'IT Security', 13),
(2249, 'Nanotechnology', 13),
(2250, 'Optoelectronics', 13),
(2251, 'Lasers', 13),
(2252, 'LED (Light Emitting Diodes)', 13),
(2253, 'OLED (Organic Light Emitting Diodes)', 13),
(2254, 'Physical Access Control', 13),
(2255, 'Point of Sale Equipment', 13),
(2256, 'Printed Electronics', 13),
(2257, 'RFID', 13),
(2258, 'Mobile and Contactless Payments', 13),
(2259, 'Near Field Communication', 13),
(2260, 'Robotics', 13),
(2261, 'Semiconductor', 13),
(2262, 'Sensors', 13),
(2263, 'Acoustic Sensors', 13),
(2264, 'Capacitive Sensors', 13),
(2265, 'Gas and Chemical Sensors', 13),
(2266, 'Motion Sensors', 13),
(2267, 'Optical Sensors', 13),
(2268, 'Temperature and Heat Sensors', 13),
(2269, 'Vibration Sensors', 13),
(2270, 'Wireless Sensors', 13),
(2271, 'Smart Cards', 13),
(2272, 'Software', 13),
(2273, 'Animation Software', 13),
(2274, 'CAD, CAM and CAE Software', 13),
(2275, 'Global Positioning Systems Software', 13),
(2276, 'Operating Systems', 13),
(2277, 'Programming Languages', 13),
(2278, 'Software Design and Development', 13),
(2279, 'Software Testing', 13),
(2280, 'Video Surveillance', 13),
(2281, 'Virtual and Augmented Reality', 13),
(2282, 'Data Storage and Management', 13),
(2283, 'Big Data', 13),
(2284, 'Cloud Computing and Storage', 13),
(2285, 'Data Analytics', 13),
(2286, 'Data Centers', 13),
(2287, 'Information Management', 13),
(2288, 'Internet and E-Commerce', 13),
(2289, 'Bitcoin', 13),
(2290, 'Content Management', 13),
(2291, 'E-Business', 13),
(2292, 'M-Commerce', 13),
(2293, 'Social Media', 13),
(2294, 'Website and Application Development', 13),
(2295, 'Telecommunications and Networks', 13),
(2296, 'Broadband', 13),
(2297, 'Call Centres', 13),
(2298, 'Enterprise Mobility Management', 13),
(2299, 'Fixed Line Telecoms', 13),
(2300, 'Networks', 13),
(2301, 'Home Networks', 13),
(2302, 'Mobile Networks', 13),
(2303, 'Satellite Communications', 13),
(2304, 'Telecommunications Equipment', 13),
(2305, 'Networking Equipment', 13),
(2306, 'Unified Communications', 13),
(2307, 'VoIP and Videoconferencing', 13),
(2308, 'Wireless Telecommunications', 13),
(2310, 'Bluetooth', 13),
(2311, 'Location Based Services', 13),
(2312, 'Mobile Content', 13),
(2313, 'SMS and MMS', 13),
(2314, 'WiFi and WiMax', 13),
(2315, 'Wireless Broadband', 13),
(2316, 'WLAN', 13),
(2317, 'Temperature and Heat Sensors', 13),
(2318, 'Vibration Sensors', 13),
(2319, 'Wireless Sensors', 13),
(2320, 'Smart Cards', 13),
(2321, 'Software', 13),
(2322, 'Animation Software', 13),
(2323, 'CAD, CAM and CAE Software', 13),
(2324, 'Global Positioning Systems Software', 13),
(2325, 'Operating Systems', 13),
(2326, 'Programming Languages', 13),
(2327, 'Software Design and Development', 13),
(2328, 'Software Testing', 13),
(2329, 'Video Surveillance', 13),
(2330, 'Virtual and Augmented Reality', 13),
(2331, 'Data Storage and Management', 13),
(2332, 'Big Data', 13),
(2333, 'Cloud Computing and Storage', 13),
(2334, 'Data Analytics', 13),
(2335, 'Data Centers', 13),
(2336, 'Information Management', 13),
(2337, 'Internet and E-Commerce', 13),
(2338, 'Bitcoin', 13),
(2339, 'Content Management', 13),
(2340, 'E-Business', 13),
(2341, 'M-Commerce', 13),
(2342, 'Social Media', 13),
(2343, 'Website and Application Development', 13),
(2344, 'Telecommunications and Networks', 13),
(2345, 'Broadband', 13),
(2346, 'Call Centres', 13),
(2347, 'Enterprise Mobility Management', 13),
(2348, 'Fixed Line Telecoms', 13),
(2349, 'Networks', 13),
(2350, 'Home Networks', 13),
(2351, 'Mobile Networks', 13),
(2352, 'Satellite Communications', 13),
(2353, 'Telecommunications Equipment', 13),
(2354, 'Networking Equipment', 13),
(2355, 'Unified Communications', 13),
(2356, 'VoIP and Videoconferencing', 13),
(2357, 'Wireless Telecommunications', 13),
(2358, '4G and 5G', 13),
(2359, 'Bluetooth', 13),
(2360, 'Location Based Services', 13),
(2361, 'Mobile Content', 13),
(2362, 'SMS and MMS', 13),
(2363, 'WiFi and WiMax', 13),
(2364, 'Wireless Broadband', 13);

-- --------------------------------------------------------

--
-- Table structure for table `followe`
--

CREATE TABLE `followe` (
  `userID` int(16) NOT NULL,
  `followeID` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `followe`
--

INSERT INTO `followe` (`userID`, `followeID`) VALUES
(225, 0),
(225, 1),
(225, 10),
(225, 65),
(225, 83),
(232, 65);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `group_id` int(16) NOT NULL,
  `creat_id` int(16) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `admin_ids` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `member_ids` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `creat_id`, `group_name`, `admin_ids`, `date_time`, `member_ids`) VALUES
(65, 225, 'jay sarde maa', '225', '2021-04-27 22:37:36', '225,83,'),
(66, 225, 'ram', '225', '2021-04-27 22:56:09', '225,83,'),
(67, 225, 'uuy', '225', '2021-04-29 22:15:15', '225,83,65,'),
(72, 83, 'new', '83', '2021-05-07 19:56:40', '83,82,'),
(74, 225, 'new 2.0', '225', '2021-05-17 13:38:04', '225,65,'),
(75, 83, 'ram', '83', '2021-05-27 21:53:40', '83,225,');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE `group_member` (
  `sr_no` int(16) NOT NULL,
  `group_id` int(16) NOT NULL,
  `group_member` int(16) NOT NULL,
  `add_date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`sr_no`, `group_id`, `group_member`, `add_date_time`) VALUES
(141, 65, 225, '0000-00-00 00:00:00'),
(142, 65, 83, '0000-00-00 00:00:00'),
(143, 66, 225, '0000-00-00 00:00:00'),
(144, 66, 83, '2021-05-07 19:53:56'),
(145, 67, 225, '0000-00-00 00:00:00'),
(146, 67, 83, '0000-00-00 00:00:00'),
(147, 67, 65, '0000-00-00 00:00:00'),
(166, 72, 83, '0000-00-00 00:00:00'),
(167, 72, 82, '0000-00-00 00:00:00'),
(168, 74, 225, '0000-00-00 00:00:00'),
(169, 74, 65, '0000-00-00 00:00:00'),
(170, 75, 83, '0000-00-00 00:00:00'),
(171, 75, 225, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `like_list`
--

CREATE TABLE `like_list` (
  `sr_no` int(16) NOT NULL,
  `userID` int(16) NOT NULL,
  `productID` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `like_list`
--

INSERT INTO `like_list` (`sr_no`, `userID`, `productID`) VALUES
(34, 0, 46),
(25, 225, 37),
(28, 225, 46),
(32, 225, 51),
(31, 225, 54),
(26, 225, 73),
(33, 225, 74);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `productID` int(16) NOT NULL,
  `user` int(16) NOT NULL,
  `sr_no` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`productID`, `user`, `sr_no`) VALUES
(81, 225, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_message`
--

CREATE TABLE `personal_message` (
  `sr_no` int(16) NOT NULL,
  `pm` varchar(500) NOT NULL,
  `get_id` int(16) NOT NULL,
  `send_id` int(16) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `stats` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_message`
--

INSERT INTO `personal_message` (`sr_no`, `pm`, `get_id`, `send_id`, `time`, `stats`) VALUES
(24, 'hello', 225, 83, '2021-06-11 22:12:08', ''),
(25, 'hello who are you', 83, 225, '2021-06-11 22:12:36', ''),
(26, 'i am your frand', 225, 83, '2021-06-11 22:13:00', ''),
(28, 'chat is working properly', 225, 83, '2021-06-11 22:20:38', ''),
(29, 'its look fine ', 83, 225, '2021-06-11 22:20:58', ''),
(30, 'i am intrested inlaman3', 225, 225, '2021-06-12 14:12:25', ''),
(31, 'kya', 0, 225, '2021-06-12 14:15:00', ''),
(80, 'hey kool', 225, 225, '2021-06-13 18:44:48', ''),
(114, '', 83, 0, '2021-06-13 20:04:38', ''),
(115, 'hello', 0, 83, '2021-06-13 20:04:50', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(16) NOT NULL,
  `product_pic` varchar(200) NOT NULL,
  `product_name` varchar(33) NOT NULL,
  `product_details` text NOT NULL,
  `mrp` int(9) NOT NULL,
  `quantity` int(5) NOT NULL,
  `uplod_date` datetime NOT NULL DEFAULT current_timestamp(),
  `userID` int(16) NOT NULL,
  `retail_price` int(9) NOT NULL,
  `nop` int(1) NOT NULL,
  `product_fild` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `product_pic`, `product_name`, `product_details`, `mrp`, `quantity`, `uplod_date`, `userID`, `retail_price`, `nop`, `product_fild`) VALUES
(36, '1617702736.jpg,1617702736.jpg,1617702736.jpg,', '12', 'ghgngngtnh\ndghg\ndfgddggd', 0, 212, '2021-04-06 00:00:00', 212, 100, 3, '0'),
(37, '1617702736.jpg,1617702736.jpg,1617702736.jpg,', 'dfsdfsd2', 'fsdf', 0, 1, '2021-04-06 00:00:00', 225, 0, 0, '0'),
(46, '01617715787.jpg,', 'laman2', '', 0, 0, '2021-04-06 00:00:00', 225, 0, 1, '0'),
(47, '01617715894.jpg,', 'laman3', '', 0, 0, '2021-04-06 00:00:00', 225, 0, 1, '0'),
(48, '1617716168.jpg,1617716168.jpg,1617716168.jpg,', '14', 'ghgngngtnh\ndghg\ndfgddggd', 0, 212, '2021-04-06 00:00:00', 212, 100, 3, '0'),
(49, '01617716523.jpg,11617716523.jpg,21617716523.jpg,', '15', 'ghgngngtnh\ndghg\ndfgddggd', 0, 212, '2021-04-06 00:00:00', 212, 100, 3, '0'),
(50, '01617716663.jpg,11617716663.jpg,21617716663.jpg,', '16', 'ghgngngtnh<br>\r\ndghg\r\ndfgddggd', 0, 212, '2021-04-06 00:00:00', 212, 100, 3, '0'),
(51, '01617716761.jpg,', '', '', 0, 0, '2021-04-06 00:00:00', 225, 0, 1, '0'),
(53, '01618146632.jpg,', 'abcd7', 'wqccqwc\nqwqw\nqwqqq', 4, 5, '2021-04-11 18:40:32', 225, 0, 1, ''),
(54, '01618394804.jpg,', 'ajit7', 'ajit', 1, 1, '2021-04-14 15:36:44', 225, 0, 1, ''),
(56, '01618395619.jpg,11618395619.jpg,21618395619.jpg,', 'ajit', 'ajit', 1, 1, '2021-04-14 15:50:19', 225, 0, 3, ''),
(57, '01618412144.jpg,', '18', '1', 1, 1, '2021-04-14 20:25:44', 225, 0, 1, ''),
(59, '01619445652.jpg,', 'asd', 'asd', 1, 1, '2021-04-26 19:30:52', 225, 0, 1, ''),
(60, '01619511960.jpg,', 'a,s,', 'a,s,', 1, 1, '2021-04-27 13:56:00', 225, 0, 1, ''),
(63, '01619512125.jpg,11619512125.jpg,21619512125.jpg,', '18', 'ghgngngtnh\ndghg\ndfgddggd', 0, 212, '2021-04-27 13:58:45', 212, 100, 3, ''),
(64, '01619512239.jpg,11619512239.jpg,21619512239.jpg,', '19', 'ghgngngtnh\ndghg\ndfgddggd', 0, 212, '2021-04-27 14:00:39', 212, 100, 3, ''),
(65, '01619512277.jpg,', 'ful', 'ful dsfdsfsfs    ffsdf fdsf sfd dsf dsf dfdfsdfsf sdf sdf sdff sdf sdf sf f sdfsdf sf ', 1, 1, '2021-04-27 14:01:17', 225, 0, 1, ''),
(69, '01619714346.jpg,11619714346.jpg,21619714346.jpg,31619714346.jpg,41619714346.jpg,', 'asdf', 'ljmkmjimjo', 7897, 809898, '2021-04-29 22:09:06', 225, 0, 5, ''),
(71, '01620143073.jpg,', '66', 'gfg', 1, 1, '2021-05-04 21:14:33', 225, 0, 1, ''),
(72, '01620143156.jpg,', '777', 'tyt', 1, 1, '2021-05-04 21:15:56', 225, 0, 1, ''),
(73, '01620145446.jpg,', '44', '', 0, 0, '2021-05-04 21:54:06', 225, 0, 1, ''),
(74, '01620197771.jpg,11620197771.jpg,21620197771.jpg,', 'ful', 'ful dsfdsfsfs    ffsdf fdsf sfd dsf dsf dfdfsdfsf sdf sdf sdff sdf sdf sf f sdfsdf sf ', 1, 1, '2021-05-05 12:26:11', 83, 0, 3, ''),
(75, '01622122585.PNG,11622122585.PNG,', 'bile mon', 'kuch nahi', 1000, 3, '2021-05-27 19:06:25', 225, 0, 2, ''),
(76, '01623597835.PNG,', 'ss', 'fdgfd \nfgdfgdfg\nfgdgdgd', 100, 1, '2021-06-13 20:53:55', 83, 0, 1, ''),
(78, '01623597986.PNG,', 'ssr', ' dfgd', 11, 1, '2021-06-13 20:56:26', 83, 0, 1, ''),
(79, '01623598040.PNG,', 'ssr1', ' dfgd', 11, 1, '2021-06-13 20:57:20', 83, 0, 1, ''),
(80, '01623598066.PNG,11623598066.PNG,', 'ww', 'dcdczs', 1, 1, '2021-06-13 20:57:46', 83, 0, 2, ''),
(81, '01623598387.PNG,', 'ssw', 'vxfcvsd', 1, 1, '2021-06-13 21:03:07', 83, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `productrating`
--

CREATE TABLE `productrating` (
  `sr_no` int(16) NOT NULL,
  `from_rating_id` int(16) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `productID` int(16) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productrating`
--

INSERT INTO `productrating` (`sr_no`, `from_rating_id`, `rating`, `comment`, `productID`, `date_time`) VALUES
(19, 225, 4, 'wwww', 49, '2021-05-04 23:09:53'),
(21, 83, 3, 'avrage not too good', 49, '2021-05-04 23:53:29'),
(22, 83, 4, 'kk', 56, '2021-05-05 12:28:29'),
(24, 225, 3, ' hey', 75, '2021-05-27 19:07:05'),
(25, 225, 1, 'thik thak he', 47, '2021-05-27 19:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `sr_no` int(20) NOT NULL,
  `userID` int(16) NOT NULL,
  `search_string` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`sr_no`, `userID`, `search_string`) VALUES
(49, 83, ''),
(53, 83, 'ajit'),
(55, 83, 'ok ok'),
(41, 83, 'undefined'),
(7, 225, ''),
(30, 225, '12'),
(37, 225, '225'),
(8, 225, 'a'),
(9, 225, 'ajit'),
(51, 225, 'ok ok'),
(44, 225, 'sri krishna');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(16) NOT NULL,
  `full_name` varchar(32) NOT NULL,
  `profil_type` varchar(25) NOT NULL,
  `comp_name` varchar(31) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `addres` varchar(60) NOT NULL,
  `pic_cod` int(8) NOT NULL,
  `landmark` varchar(20) NOT NULL,
  `profil_pic` varchar(200) NOT NULL,
  `password` varchar(30) NOT NULL,
  `field` varchar(15) NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `interest` varchar(70) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `full_name`, `profil_type`, `comp_name`, `email`, `contact_no`, `latitude`, `longitude`, `country`, `state`, `city`, `addres`, `pic_cod`, `landmark`, `profil_pic`, `password`, `field`, `registration_date`, `interest`, `gender`) VALUES
(0, 'sri krishna', 'customer', 'ram@gmail.com', 'krshna@gmail.com', '1234567890', 'undefined', 'undefined', 'Option 3', 'Option 3', 'Not Applicable / NA', 'ghkjh', 7, 'jkhk', 'http://localhost/reachbisiness/pics/1622386188.PNG', '108', '', '2021-03-30 17:17:00', 'jkhjkj', 'Male'),
(65, 'sri ram', 'ram@gmail.', 'ram@gmail.com', 'ram@gmail.com', '778', 'undefined', 'undefined', 'undefined', 'Option 2', '2', '2', 2, '2', 'http://localhost/reachbisiness/pics/1617543034.jpg', '108', '2', '2021-04-02 15:34:48', '2', 'Male'),
(82, 'shiv snkar', '', '', 'snkar@gmail.com', '', '', '', '', '', '', '', 0, '', '', '1108', '', '2021-04-03 22:30:08', '', ''),
(83, 'ok ok boy', '', '', 'nul', '', 'undefined', 'undefined', '', '', '', '', 0, '', 'http://localhost/reachbisiness/pics/1620400867.jpg', 'Password', '4G and 5G', '2021-04-03 22:31:13', '', ''),
(84, 'shivsa', '', '', 'shiva@.com', '', '', '', '', '', '', '', 0, '', '', 'Password', '', '2021-04-03 22:33:01', '', ''),
(85, 'shiva', '', '', 'shiva@gmail.com', '', '', '', '', '', '', '', 0, '', '', '108', '', '2021-04-03 22:36:43', '', ''),
(212, 'a', 'customer', 'a', 'a', '1', 'undefined', 'undefined', 'Option 3', 'Option 3', 'Not Applicable / NA', '11', 1, '1', 'http://localhost/reachbisiness/pics/1618659327.jpg', 'a', '1', '2021-04-17 17:04:18', '1', 'Femail'),
(225, 'Ajit kumar pal', 'retailer', '2', 'palajit29@gmail.com', 'fff', 'undefined', 'undefined', 'Option 2', 'Option 2', '2', '2', 2, '2', 'http://localhost/reachbisiness/pics/1617696877.jpg', 'Password', '4G and 5G', '2021-04-05 21:36:19', '2', 'Others');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `followe`
--
ALTER TABLE `followe`
  ADD PRIMARY KEY (`userID`,`followeID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `creat_id` (`creat_id`,`group_name`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `like_list`
--
ALTER TABLE `like_list`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `userID` (`userID`,`productID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`productID`,`user`),
  ADD UNIQUE KEY `sr_no` (`sr_no`);

--
-- Indexes for table `personal_message`
--
ALTER TABLE `personal_message`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD UNIQUE KEY `product_name` (`product_name`,`userID`);

--
-- Indexes for table `productrating`
--
ALTER TABLE `productrating`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `from_rating_id` (`from_rating_id`,`productID`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`sr_no`),
  ADD UNIQUE KEY `userID` (`userID`,`search_string`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`(15));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `field`
--
ALTER TABLE `field`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2366;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `group_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `group_member`
--
ALTER TABLE `group_member`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `like_list`
--
ALTER TABLE `like_list`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_message`
--
ALTER TABLE `personal_message`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `productrating`
--
ALTER TABLE `productrating`
  MODIFY `sr_no` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `sr_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
