--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeMapResult' definition.
--


--
-- SELECT template for table `ResponseTimeMapResult`
--
SELECT `search_id`, `shapes`, `properties` FROM `ResponseTimeMapResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeMapResult`
--
INSERT INTO `ResponseTimeMapResult`(`search_id`, `shapes`, `properties`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeMapResult`
--
UPDATE `ResponseTimeMapResult` SET `search_id` = ?, `shapes` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeMapResult`
--
DELETE FROM `ResponseTimeMapResult` WHERE 0;

