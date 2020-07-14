--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilter' definition.
--


--
-- SELECT template for table `RequestTimeFilter`
--
SELECT `locations`, `departure_searches`, `arrival_searches` FROM `RequestTimeFilter` WHERE 1;

--
-- INSERT template for table `RequestTimeFilter`
--
INSERT INTO `RequestTimeFilter`(`locations`, `departure_searches`, `arrival_searches`) VALUES (?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilter`
--
UPDATE `RequestTimeFilter` SET `locations` = ?, `departure_searches` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilter`
--
DELETE FROM `RequestTimeFilter` WHERE 0;

