--
-- TravelTime API.
-- Prepared SQL queries for 'RequestRoutesArrivalSearch' definition.
--


--
-- SELECT template for table `RequestRoutesArrivalSearch`
--
SELECT `id`, `departure_location_ids`, `arrival_location_id`, `transportation`, `arrival_time`, `properties`, `range` FROM `RequestRoutesArrivalSearch` WHERE 1;

--
-- INSERT template for table `RequestRoutesArrivalSearch`
--
INSERT INTO `RequestRoutesArrivalSearch`(`id`, `departure_location_ids`, `arrival_location_id`, `transportation`, `arrival_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestRoutesArrivalSearch`
--
UPDATE `RequestRoutesArrivalSearch` SET `id` = ?, `departure_location_ids` = ?, `arrival_location_id` = ?, `transportation` = ?, `arrival_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestRoutesArrivalSearch`
--
DELETE FROM `RequestRoutesArrivalSearch` WHERE 0;

