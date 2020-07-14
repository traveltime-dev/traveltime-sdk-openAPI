--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcodeSectorsResult' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcodeSectorsResult`
--
SELECT `search_id`, `sectors` FROM `ResponseTimeFilterPostcodeSectorsResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcodeSectorsResult`
--
INSERT INTO `ResponseTimeFilterPostcodeSectorsResult`(`search_id`, `sectors`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcodeSectorsResult`
--
UPDATE `ResponseTimeFilterPostcodeSectorsResult` SET `search_id` = ?, `sectors` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcodeSectorsResult`
--
DELETE FROM `ResponseTimeFilterPostcodeSectorsResult` WHERE 0;

