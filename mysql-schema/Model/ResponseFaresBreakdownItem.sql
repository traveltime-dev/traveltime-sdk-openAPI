--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseFaresBreakdownItem' definition.
--


--
-- SELECT template for table `ResponseFaresBreakdownItem`
--
SELECT `modes`, `route_part_ids`, `tickets` FROM `ResponseFaresBreakdownItem` WHERE 1;

--
-- INSERT template for table `ResponseFaresBreakdownItem`
--
INSERT INTO `ResponseFaresBreakdownItem`(`modes`, `route_part_ids`, `tickets`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseFaresBreakdownItem`
--
UPDATE `ResponseFaresBreakdownItem` SET `modes` = ?, `route_part_ids` = ?, `tickets` = ? WHERE 1;

--
-- DELETE template for table `ResponseFaresBreakdownItem`
--
DELETE FROM `ResponseFaresBreakdownItem` WHERE 0;

