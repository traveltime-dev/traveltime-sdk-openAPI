--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeDistrictProperties' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeDistrictProperties`
--
SELECT `travel_time_reachable`, `travel_time_all`, `coverage` FROM `ResponseTimeFilterPostcodeDistrictProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeDistrictProperties`
--
INSERT INTO `ResponseTimeFilterPostcodeDistrictProperties`(`travel_time_reachable`, `travel_time_all`, `coverage`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeDistrictProperties`
--
UPDATE `ResponseTimeFilterPostcodeDistrictProperties` SET `travel_time_reachable` = ?, `travel_time_all` = ?, `coverage` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeDistrictProperties`
--
DELETE FROM `ResponseTimeFilterPostcodeDistrictProperties` WHERE 0;

