--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseFaresFast' definition.
--


--
-- SELECT template for table `ResponseFaresFast`
--
SELECT `tickets_total` FROM `ResponseFaresFast` WHERE 1;

--
-- INSERT template for table `ResponseFaresFast`
--
INSERT INTO `ResponseFaresFast`(`tickets_total`) VALUES (?);

--
-- UPDATE template for table `ResponseFaresFast`
--
UPDATE `ResponseFaresFast` SET `tickets_total` = ? WHERE 1;

--
-- DELETE template for table `ResponseFaresFast`
--
DELETE FROM `ResponseFaresFast` WHERE 0;

