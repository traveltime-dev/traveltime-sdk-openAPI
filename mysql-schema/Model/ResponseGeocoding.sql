--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseGeocoding' definition.
--


--
-- SELECT template for table `ResponseGeocoding`
--
SELECT `type`, `features` FROM `ResponseGeocoding` WHERE 1;

--
-- INSERT template for table `ResponseGeocoding`
--
INSERT INTO `ResponseGeocoding`(`type`, `features`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseGeocoding`
--
UPDATE `ResponseGeocoding` SET `type` = ?, `features` = ? WHERE 1;

--
-- DELETE template for table `ResponseGeocoding`
--
DELETE FROM `ResponseGeocoding` WHERE 0;

