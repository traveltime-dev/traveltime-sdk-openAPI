--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseMapInfoFeaturesPublicTransport' definition.
--


--
-- SELECT template for table `ResponseMapInfoFeaturesPublicTransport`
--
SELECT `date_start`, `date_end` FROM `ResponseMapInfoFeaturesPublicTransport` WHERE 1;

--
-- INSERT template for table `ResponseMapInfoFeaturesPublicTransport`
--
INSERT INTO `ResponseMapInfoFeaturesPublicTransport`(`date_start`, `date_end`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseMapInfoFeaturesPublicTransport`
--
UPDATE `ResponseMapInfoFeaturesPublicTransport` SET `date_start` = ?, `date_end` = ? WHERE 1;

--
-- DELETE template for table `ResponseMapInfoFeaturesPublicTransport`
--
DELETE FROM `ResponseMapInfoFeaturesPublicTransport` WHERE 0;

