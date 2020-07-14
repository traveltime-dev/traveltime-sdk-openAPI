--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseGeocodingGeoJsonFeature' definition.
--


--
-- SELECT template for table `ResponseGeocodingGeoJsonFeature`
--
SELECT `type`, `geometry`, `properties` FROM `ResponseGeocodingGeoJsonFeature` WHERE 1;

--
-- INSERT template for table `ResponseGeocodingGeoJsonFeature`
--
INSERT INTO `ResponseGeocodingGeoJsonFeature`(`type`, `geometry`, `properties`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseGeocodingGeoJsonFeature`
--
UPDATE `ResponseGeocodingGeoJsonFeature` SET `type` = ?, `geometry` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseGeocodingGeoJsonFeature`
--
DELETE FROM `ResponseGeocodingGeoJsonFeature` WHERE 0;

