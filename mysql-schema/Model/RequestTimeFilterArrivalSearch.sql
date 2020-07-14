--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterArrivalSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterArrivalSearch`
--
SELECT `id`, `departure_location_ids`, `arrival_location_id`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range` FROM `RequestTimeFilterArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterArrivalSearch`
--
INSERT INTO `RequestTimeFilterArrivalSearch`(`id`, `departure_location_ids`, `arrival_location_id`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterArrivalSearch`
--
UPDATE `RequestTimeFilterArrivalSearch` SET `id` = ?, `departure_location_ids` = ?, `arrival_location_id` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterArrivalSearch`
--
DELETE FROM `RequestTimeFilterArrivalSearch` WHERE 0;

