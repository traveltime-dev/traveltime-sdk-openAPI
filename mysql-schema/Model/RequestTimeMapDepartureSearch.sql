--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeMapDepartureSearch' definition.
--


--
-- SELECT template for table `RequestTimeMapDepartureSearch`
--
SELECT `id`, `coords`, `transportation`, `travel_time`, `departure_time`, `properties`, `range` FROM `RequestTimeMapDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeMapDepartureSearch`
--
INSERT INTO `RequestTimeMapDepartureSearch`(`id`, `coords`, `transportation`, `travel_time`, `departure_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeMapDepartureSearch`
--
UPDATE `RequestTimeMapDepartureSearch` SET `id` = ?, `coords` = ?, `transportation` = ?, `travel_time` = ?, `departure_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeMapDepartureSearch`
--
DELETE FROM `RequestTimeMapDepartureSearch` WHERE 0;

