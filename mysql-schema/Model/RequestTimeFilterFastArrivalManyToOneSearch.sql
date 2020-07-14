--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterFastArrivalManyToOneSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterFastArrivalManyToOneSearch`
--
SELECT `id`, `arrival_location_id`, `departure_location_ids`, `transportation`, `travel_time`, `arrival_time_period`, `properties` FROM `RequestTimeFilterFastArrivalManyToOneSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterFastArrivalManyToOneSearch`
--
INSERT INTO `RequestTimeFilterFastArrivalManyToOneSearch`(`id`, `arrival_location_id`, `departure_location_ids`, `transportation`, `travel_time`, `arrival_time_period`, `properties`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterFastArrivalManyToOneSearch`
--
UPDATE `RequestTimeFilterFastArrivalManyToOneSearch` SET `id` = ?, `arrival_location_id` = ?, `departure_location_ids` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time_period` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterFastArrivalManyToOneSearch`
--
DELETE FROM `RequestTimeFilterFastArrivalManyToOneSearch` WHERE 0;

