--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterFastResult' definition.
--


--
-- SELECT template for table `ResponseTimeFilterFastResult`
--
SELECT `search_id`, `locations`, `unreachable` FROM `ResponseTimeFilterFastResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterFastResult`
--
INSERT INTO `ResponseTimeFilterFastResult`(`search_id`, `locations`, `unreachable`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeFilterFastResult`
--
UPDATE `ResponseTimeFilterFastResult` SET `search_id` = ?, `locations` = ?, `unreachable` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterFastResult`
--
DELETE FROM `ResponseTimeFilterFastResult` WHERE 0;

