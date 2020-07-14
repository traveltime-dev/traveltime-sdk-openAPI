--
-- TravelTime API.
-- Prepared SQL queries for 'RequestSupportedLocations' definition.
--


--
-- SELECT template for table `RequestSupportedLocations`
--
SELECT `locations` FROM `RequestSupportedLocations` WHERE 1;

--
-- INSERT template for table `RequestSupportedLocations`
--
INSERT INTO `RequestSupportedLocations`(`locations`) VALUES (?);

--
-- UPDATE template for table `RequestSupportedLocations`
--
UPDATE `RequestSupportedLocations` SET `locations` = ? WHERE 1;

--
-- DELETE template for table `RequestSupportedLocations`
--
DELETE FROM `RequestSupportedLocations` WHERE 0;

