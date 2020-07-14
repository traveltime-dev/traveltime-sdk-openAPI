--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeSectorsDepartureSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeSectorsDepartureSearch`
--
SELECT `id`, `transportation`, `travel_time`, `departure_time`, `reachable_postcodes_threshold`, `properties`, `range` FROM `RequestTimeFilterPostcodeSectorsDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeSectorsDepartureSearch`
--
INSERT INTO `RequestTimeFilterPostcodeSectorsDepartureSearch`(`id`, `transportation`, `travel_time`, `departure_time`, `reachable_postcodes_threshold`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeSectorsDepartureSearch`
--
UPDATE `RequestTimeFilterPostcodeSectorsDepartureSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `departure_time` = ?, `reachable_postcodes_threshold` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeSectorsDepartureSearch`
--
DELETE FROM `RequestTimeFilterPostcodeSectorsDepartureSearch` WHERE 0;

