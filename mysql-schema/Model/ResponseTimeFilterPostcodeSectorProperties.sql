--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeSectorProperties' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeSectorProperties`
--
SELECT `travel_time_reachable`, `travel_time_all`, `coverage` FROM `ResponseTimeFilterPostcodeSectorProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeSectorProperties`
--
INSERT INTO `ResponseTimeFilterPostcodeSectorProperties`(`travel_time_reachable`, `travel_time_all`, `coverage`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeSectorProperties`
--
UPDATE `ResponseTimeFilterPostcodeSectorProperties` SET `travel_time_reachable` = ?, `travel_time_all` = ?, `coverage` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeSectorProperties`
--
DELETE FROM `ResponseTimeFilterPostcodeSectorProperties` WHERE 0;

