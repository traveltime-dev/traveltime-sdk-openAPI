--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseFares' definition.
--


--
-- SELECT template for table `ResponseFares`
--
SELECT `breakdown`, `tickets_total` FROM `ResponseFares` WHERE 1;

--
-- INSERT template for table `ResponseFares`
--
INSERT INTO `ResponseFares`(`breakdown`, `tickets_total`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseFares`
--
UPDATE `ResponseFares` SET `breakdown` = ?, `tickets_total` = ? WHERE 1;

--
-- DELETE template for table `ResponseFares`
--
DELETE FROM `ResponseFares` WHERE 0;

