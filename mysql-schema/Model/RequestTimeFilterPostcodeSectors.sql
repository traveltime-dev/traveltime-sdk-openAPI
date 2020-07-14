--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeSectors' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeSectors`
--
SELECT `departure_searches`, `arrival_searches` FROM `RequestTimeFilterPostcodeSectors` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeSectors`
--
INSERT INTO `RequestTimeFilterPostcodeSectors`(`departure_searches`, `arrival_searches`) VALUES (?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeSectors`
--
UPDATE `RequestTimeFilterPostcodeSectors` SET `departure_searches` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeSectors`
--
DELETE FROM `RequestTimeFilterPostcodeSectors` WHERE 0;

