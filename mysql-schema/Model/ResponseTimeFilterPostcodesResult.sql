--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodesResult' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodesResult`
--
SELECT `search_id`, `postcodes` FROM `ResponseTimeFilterPostcodesResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodesResult`
--
INSERT INTO `ResponseTimeFilterPostcodesResult`(`search_id`, `postcodes`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodesResult`
--
UPDATE `ResponseTimeFilterPostcodesResult` SET `search_id` = ?, `postcodes` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodesResult`
--
DELETE FROM `ResponseTimeFilterPostcodesResult` WHERE 0;

