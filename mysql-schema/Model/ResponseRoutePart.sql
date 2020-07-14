--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseRoutePart' definition.
--


--
-- SELECT template for table `ResponseRoutePart`
--
SELECT `id`, `type`, `mode`, `directions`, `distance`, `travel_time`, `coords`, `direction`, `road`, `turn`, `line`, `departure_station`, `arrival_station`, `departs_at`, `arrives_at`, `num_stops` FROM `ResponseRoutePart` WHERE 1;

--
-- INSERT template for table `ResponseRoutePart`
--
INSERT INTO `ResponseRoutePart`(`id`, `type`, `mode`, `directions`, `distance`, `travel_time`, `coords`, `direction`, `road`, `turn`, `line`, `departure_station`, `arrival_station`, `departs_at`, `arrives_at`, `num_stops`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ResponseRoutePart`
--
UPDATE `ResponseRoutePart` SET `id` = ?, `type` = ?, `mode` = ?, `directions` = ?, `distance` = ?, `travel_time` = ?, `coords` = ?, `direction` = ?, `road` = ?, `turn` = ?, `line` = ?, `departure_station` = ?, `arrival_station` = ?, `departs_at` = ?, `arrives_at` = ?, `num_stops` = ? WHERE 1;

--
-- DELETE template for table `ResponseRoutePart`
--
DELETE FROM `ResponseRoutePart` WHERE 0;

