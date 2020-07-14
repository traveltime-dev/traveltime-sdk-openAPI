--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterFastProperties' definition.
--


--
-- SELECT template for table `ResponseTimeFilterFastProperties`
--
SELECT `travel_time`, `fares` FROM `ResponseTimeFilterFastProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterFastProperties`
--
INSERT INTO `ResponseTimeFilterFastProperties`(`travel_time`, `fares`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterFastProperties`
--
UPDATE `ResponseTimeFilterFastProperties` SET `travel_time` = ?, `fares` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterFastProperties`
--
DELETE FROM `ResponseTimeFilterFastProperties` WHERE 0;

