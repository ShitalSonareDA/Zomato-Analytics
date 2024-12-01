select * from Restaurants;

create table countryMap
(
CountryCode int,
CountryName Varchar(50)
);

INSERT INTO CountryMap (countrycode, countryname)
VALUES 
(1, 'India'),
(14, 'Australia'),
(30, 'Canada'),
(37, 'China'),
(94, 'Indonesia'),
(148, 'Ireland'),
(162, 'Italy'),
(166, 'Japan'),
(184, 'Mexico'),
(189, 'Netherlands'),
(191, 'New Zealand'),
(208, 'Philippines'),
(214, 'Singapore'),
(215, 'Slovakia'),
(216, 'Slovenia');

Select * from countrymap;