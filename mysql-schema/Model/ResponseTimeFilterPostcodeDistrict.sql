--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeDistrict' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeDistrict`
--
SELECT `code`, `properties` FROM `ResponseTimeFilterPostcodeDistrict` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeDistrict`
--
INSERT INTO `ResponseTimeFilterPostcodeDistrict`(`code`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeDistrict`
--
UPDATE `ResponseTimeFilterPostcodeDistrict` SET `code` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeDistrict`
--
DELETE FROM `ResponseTimeFilterPostcodeDistrict` WHERE 0;

