--
-- TravelTime API.
-- Prepared SQL queries for 'RequestRoutesDepartureSearch' definition.
--


--
-- SELECT template for table `RequestRoutesDepartureSearch`
--
SELECT `id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `departure_time`, `properties`, `range` FROM `RequestRoutesDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestRoutesDepartureSearch`
--
INSERT INTO `RequestRoutesDepartureSearch`(`id`, `departure_location_id`, `arrival_location_ids`, `transportation`, `departure_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestRoutesDepartureSearch`
--
UPDATE `RequestRoutesDepartureSearch` SET `id` = ?, `departure_location_id` = ?, `arrival_location_ids` = ?, `transportation` = ?, `departure_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestRoutesDepartureSearch`
--
DELETE FROM `RequestRoutesDepartureSearch` WHERE 0;

