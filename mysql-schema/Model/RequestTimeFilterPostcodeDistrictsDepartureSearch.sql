--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeDistrictsDepartureSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeDistrictsDepartureSearch`
--
SELECT `id`, `transportation`, `travel_time`, `departure_time`, `reachable_postcodes_threshold`, `properties`, `range` FROM `RequestTimeFilterPostcodeDistrictsDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeDistrictsDepartureSearch`
--
INSERT INTO `RequestTimeFilterPostcodeDistrictsDepartureSearch`(`id`, `transportation`, `travel_time`, `departure_time`, `reachable_postcodes_threshold`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeDistrictsDepartureSearch`
--
UPDATE `RequestTimeFilterPostcodeDistrictsDepartureSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `departure_time` = ?, `reachable_postcodes_threshold` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeDistrictsDepartureSearch`
--
DELETE FROM `RequestTimeFilterPostcodeDistrictsDepartureSearch` WHERE 0;

