--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseDistanceBreakdownItem' definition.
--


--
-- SELECT template for table `ResponseDistanceBreakdownItem`
--
SELECT `mode`, `distance` FROM `ResponseDistanceBreakdownItem` WHERE 1;

--
-- INSERT template for table `ResponseDistanceBreakdownItem`
--
INSERT INTO `ResponseDistanceBreakdownItem`(`mode`, `distance`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseDistanceBreakdownItem`
--
UPDATE `ResponseDistanceBreakdownItem` SET `mode` = ?, `distance` = ? WHERE 1;

--
-- DELETE template for table `ResponseDistanceBreakdownItem`
--
DELETE FROM `ResponseDistanceBreakdownItem` WHERE 0;

