--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeMapProperties' definition.
--


--
-- SELECT template for table `ResponseTimeMapProperties`
--
SELECT `is_only_walking` FROM `ResponseTimeMapProperties` WHERE 1;

--
-- INSERT template for table `ResponseTimeMapProperties`
--
INSERT INTO `ResponseTimeMapProperties`(`is_only_walking`) VALUES (?);

--
-- UPDATE template for table `ResponseTimeMapProperties`
--
UPDATE `ResponseTimeMapProperties` SET `is_only_walking` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeMapProperties`
--
DELETE FROM `ResponseTimeMapProperties` WHERE 0;

