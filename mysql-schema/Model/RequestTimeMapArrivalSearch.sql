--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeMapArrivalSearch' definition.
--


--
-- SELECT template for table `RequestTimeMapArrivalSearch`
--
SELECT `id`, `coords`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range`, `level_of_detail` FROM `RequestTimeMapArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeMapArrivalSearch`
--
INSERT INTO `RequestTimeMapArrivalSearch`(`id`, `coords`, `transportation`, `travel_time`, `arrival_time`, `properties`, `range`, `level_of_detail`) VALUES (?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeMapArrivalSearch`
--
UPDATE `RequestTimeMapArrivalSearch` SET `id` = ?, `coords` = ?, `transportation` = ?, `travel_time` = ?, `arrival_time` = ?, `properties` = ?, `range` = ?, `level_of_detail` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeMapArrivalSearch`
--
DELETE FROM `RequestTimeMapArrivalSearch` WHERE 0;

