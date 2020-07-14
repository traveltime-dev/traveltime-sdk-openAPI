--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseSupportedLocation' definition.
--


--
-- SELECT template for table `ResponseSupportedLocation`
--
SELECT `id`, `map_name` FROM `ResponseSupportedLocation` WHERE 1;

--
-- INSERT template for table `ResponseSupportedLocation`
--
INSERT INTO `ResponseSupportedLocation`(`id`, `map_name`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseSupportedLocation`
--
UPDATE `ResponseSupportedLocation` SET `id` = ?, `map_name` = ? WHERE 1;

--
-- DELETE template for table `ResponseSupportedLocation`
--
DELETE FROM `ResponseSupportedLocation` WHERE 0;

