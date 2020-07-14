--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterResult' definition.
--


--
-- SELECT template for table `ResponseTimeFilterResult`
--
SELECT `search_id`, `locations`, `unreachable` FROM `ResponseTimeFilterResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterResult`
--
INSERT INTO `ResponseTimeFilterResult`(`search_id`, `locations`, `unreachable`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeFilterResult`
--
UPDATE `ResponseTimeFilterResult` SET `search_id` = ?, `locations` = ?, `unreachable` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterResult`
--
DELETE FROM `ResponseTimeFilterResult` WHERE 0;

