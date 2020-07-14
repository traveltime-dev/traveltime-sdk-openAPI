--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterDepartureSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterDepartureSearch`
--
SELECT `id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `travel_time`, `departure_time`, `properties`, `range` FROM `RequestTimeFilterDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterDepartureSearch`
--
INSERT INTO `RequestTimeFilterDepartureSearch`(`id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `travel_time`, `departure_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterDepartureSearch`
--
UPDATE `RequestTimeFilterDepartureSearch` SET `id` = ?, `departure_location_id` = ?, `arrival_location_ids` = ?, `transportation` = ?, `travel_time` = ?, `departure_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterDepartureSearch`
--
DELETE FROM `RequestTimeFilterDepartureSearch` WHERE 0;

