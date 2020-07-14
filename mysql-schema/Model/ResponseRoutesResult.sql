--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseRoutesResult' definition.
--


--
-- SELECT template for table `ResponseRoutesResult`
--
SELECT `search_id`, `locations`, `unreachable` FROM `ResponseRoutesResult` WHERE 1;

--
-- INSERT template for table `ResponseRoutesResult`
--
INSERT INTO `ResponseRoutesResult`(`search_id`, `locations`, `unreachable`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseRoutesResult`
--
UPDATE `ResponseRoutesResult` SET `search_id` = ?, `locations` = ?, `unreachable` = ? WHERE 1;

--
-- DELETE template for table `ResponseRoutesResult`
--
DELETE FROM `ResponseRoutesResult` WHERE 0;

