--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeMapWktResult' definition.
--


--
-- SELECT template for table `ResponseTimeMapWktResult`
--
SELECT `search_id`, `shape`, `properties` FROM `ResponseTimeMapWktResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeMapWktResult`
--
INSERT INTO `ResponseTimeMapWktResult`(`search_id`, `shape`, `properties`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeMapWktResult`
--
UPDATE `ResponseTimeMapWktResult` SET `search_id` = ?, `shape` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeMapWktResult`
--
DELETE FROM `ResponseTimeMapWktResult` WHERE 0;

