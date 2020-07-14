--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodesProperties' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodesProperties`
--
SELECT `travel_time`, `distance` FROM `ResponseTimeFilterPostcodesProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodesProperties`
--
INSERT INTO `ResponseTimeFilterPostcodesProperties`(`travel_time`, `distance`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodesProperties`
--
UPDATE `ResponseTimeFilterPostcodesProperties` SET `travel_time` = ?, `distance` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodesProperties`
--
DELETE FROM `ResponseTimeFilterPostcodesProperties` WHERE 0;

