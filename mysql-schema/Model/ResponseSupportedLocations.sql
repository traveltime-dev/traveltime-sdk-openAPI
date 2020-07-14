--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseSupportedLocations' definition.
--


--
-- SELECT template for table `ResponseSupportedLocations`
--
SELECT `locations`, `unsupported_locations` FROM `ResponseSupportedLocations` WHERE 1;

--
-- INSERT template for table `ResponseSupportedLocations`
--
INSERT INTO `ResponseSupportedLocations`(`locations`, `unsupported_locations`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseSupportedLocations`
--
UPDATE `ResponseSupportedLocations` SET `locations` = ?, `unsupported_locations` = ? WHERE 1;

--
-- DELETE template for table `ResponseSupportedLocations`
--
DELETE FROM `ResponseSupportedLocations` WHERE 0;

