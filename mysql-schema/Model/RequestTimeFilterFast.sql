--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterFast' definition.
--


--
-- SELECT template for table `RequestTimeFilterFast`
--
SELECT `locations`, `arrival_searches` FROM `RequestTimeFilterFast` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterFast`
--
INSERT INTO `RequestTimeFilterFast`(`locations`, `arrival_searches`) VALUES (?, ?);

--
-- UPDATE template for table `RequestTimeFilterFast`
--
UPDATE `RequestTimeFilterFast` SET `locations` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterFast`
--
DELETE FROM `RequestTimeFilterFast` WHERE 0;

