--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterProperties' definition.
--


--
-- SELECT template for table `ResponseTimeFilterProperties`
--
SELECT `travel_time`, `distance`, `distance_breakdown`, `fares`, `route` FROM `ResponseTimeFilterProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterProperties`
--
INSERT INTO `ResponseTimeFilterProperties`(`travel_time`, `distance`, `distance_breakdown`, `fares`, `route`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ResponseTimeFilterProperties`
--
UPDATE `ResponseTimeFilterProperties` SET `travel_time` = ?, `distance` = ?, `distance_breakdown` = ?, `fares` = ?, `route` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterProperties`
--
DELETE FROM `ResponseTimeFilterProperties` WHERE 0;

