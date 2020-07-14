--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseRoutesProperties' definition.
--


--
-- SELECT template for table `ResponseRoutesProperties`
--
SELECT `travel_time`, `distance`, `fares`, `route` FROM `ResponseRoutesProperties` WHERE 1;

--
-- INSERT template for table `ResponseRoutesProperties`
--
INSERT INTO `ResponseRoutesProperties`(`travel_time`, `distance`, `fares`, `route`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ResponseRoutesProperties`
--
UPDATE `ResponseRoutesProperties` SET `travel_time` = ?, `distance` = ?, `fares` = ?, `route` = ? WHERE 1;

--
-- DELETE template for table `ResponseRoutesProperties`
--
DELETE FROM `ResponseRoutesProperties` WHERE 0;

