--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseMapInfoFeatures' definition.
--


--
-- SELECT template for table `ResponseMapInfoFeatures`
--
SELECT `public_transport`, `fares`, `postcodes` FROM `ResponseMapInfoFeatures` WHERE 1;

--
-- INSERT template for table `ResponseMapInfoFeatures`
--
INSERT INTO `ResponseMapInfoFeatures`(`public_transport`, `fares`, `postcodes`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseMapInfoFeatures`
--
UPDATE `ResponseMapInfoFeatures` SET `public_transport` = ?, `fares` = ?, `postcodes` = ? WHERE 1;

--
-- DELETE template for table `ResponseMapInfoFeatures`
--
DELETE FROM `ResponseMapInfoFeatures` WHERE 0;

