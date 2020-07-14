--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeDistrictsArrivalSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeDistrictsArrivalSearch`
--
SELECT `id`, `transportation`, `travel_time`, `arrival_time`, `reachable_postcodes_threshold`, `properties`, `range` FROM `RequestTimeFilterPostcodeDistrictsArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeDistrictsArrivalSearch`
--
INSERT INTO `RequestTimeFilterPostcodeDistrictsArrivalSearch`(`id`, `transportation`, `travel_time`, `arrival_time`, `reachable_postcodes_threshold`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeDistrictsArrivalSearch`
--
UPDATE `RequestTimeFilterPostcodeDistrictsArrivalSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time` = ?, `reachable_postcodes_threshold` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeDistrictsArrivalSearch`
--
DELETE FROM `RequestTimeFilterPostcodeDistrictsArrivalSearch` WHERE 0;

