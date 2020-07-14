--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodesArrivalSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodesArrivalSearch`
--
SELECT `id`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range` FROM `RequestTimeFilterPostcodesArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodesArrivalSearch`
--
INSERT INTO `RequestTimeFilterPostcodesArrivalSearch`(`id`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodesArrivalSearch`
--
UPDATE `RequestTimeFilterPostcodesArrivalSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodesArrivalSearch`
--
DELETE FROM `RequestTimeFilterPostcodesArrivalSearch` WHERE 0;

