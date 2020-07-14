--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterFastArrivalOneToManySearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterFastArrivalOneToManySearch`
--
SELECT `id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `travel_time`, `arrival_time_period`, `properties` FROM `RequestTimeFilterFastArrivalOneToManySearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterFastArrivalOneToManySearch`
--
INSERT INTO `RequestTimeFilterFastArrivalOneToManySearch`(`id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `travel_time`, `arrival_time_period`, `properties`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterFastArrivalOneToManySearch`
--
UPDATE `RequestTimeFilterFastArrivalOneToManySearch` SET `id` = ?, `departure_location_id` = ?, `arrival_location_ids` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time_period` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterFastArrivalOneToManySearch`
--
DELETE FROM `RequestTimeFilterFastArrivalOneToManySearch` WHERE 0;

