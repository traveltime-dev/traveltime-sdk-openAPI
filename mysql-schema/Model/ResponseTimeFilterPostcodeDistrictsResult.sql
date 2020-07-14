--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeDistrictsResult' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeDistrictsResult`
--
SELECT `search_id`, `districts` FROM `ResponseTimeFilterPostcodeDistrictsResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeDistrictsResult`
--
INSERT INTO `ResponseTimeFilterPostcodeDistrictsResult`(`search_id`, `districts`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeDistrictsResult`
--
UPDATE `ResponseTimeFilterPostcodeDistrictsResult` SET `search_id` = ?, `districts` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeDistrictsResult`
--
DELETE FROM `ResponseTimeFilterPostcodeDistrictsResult` WHERE 0;

