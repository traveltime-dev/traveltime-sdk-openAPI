--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeSectorsArrivalSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeSectorsArrivalSearch`
--
SELECT `id`, `transportation`, `travel_time`, `arrival_time`, `reachable_postcodes_threshold`, `properties`, `range` FROM `RequestTimeFilterPostcodeSectorsArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeSectorsArrivalSearch`
--
INSERT INTO `RequestTimeFilterPostcodeSectorsArrivalSearch`(`id`, `transportation`, `travel_time`, `arrival_time`, `reachable_postcodes_threshold`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeSectorsArrivalSearch`
--
UPDATE `RequestTimeFilterPostcodeSectorsArrivalSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time` = ?, `reachable_postcodes_threshold` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeSectorsArrivalSearch`
--
DELETE FROM `RequestTimeFilterPostcodeSectorsArrivalSearch` WHERE 0;

