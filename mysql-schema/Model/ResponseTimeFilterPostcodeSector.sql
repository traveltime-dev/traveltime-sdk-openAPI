--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeSector' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeSector`
--
SELECT `code`, `properties` FROM `ResponseTimeFilterPostcodeSector` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeSector`
--
INSERT INTO `ResponseTimeFilterPostcodeSector`(`code`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeSector`
--
UPDATE `ResponseTimeFilterPostcodeSector` SET `code` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeSector`
--
DELETE FROM `ResponseTimeFilterPostcodeSector` WHERE 0;

