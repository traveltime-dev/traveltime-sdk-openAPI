--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseGeocodingGeometry' definition.
--


--
-- SELECT template for table `ResponseGeocodingGeometry`
--
SELECT `type`, `coordinates` FROM `ResponseGeocodingGeometry` WHERE 1;

--
-- INSERT template for table `ResponseGeocodingGeometry`
--
INSERT INTO `ResponseGeocodingGeometry`(`type`, `coordinates`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseGeocodingGeometry`
--
UPDATE `ResponseGeocodingGeometry` SET `type` = ?, `coordinates` = ? WHERE 1;

--
-- DELETE template for table `ResponseGeocodingGeometry`
--
DELETE FROM `ResponseGeocodingGeometry` WHERE 0;

