--
-- TravelTime API.
-- Prepared SQL queries for 'RequestRangeFull' definition.
--


--
-- SELECT template for table `RequestRangeFull`
--
SELECT `enabled`, `max_results`, `width` FROM `RequestRangeFull` WHERE 1;

--
-- INSERT template for table `RequestRangeFull`
--
INSERT INTO `RequestRangeFull`(`enabled`, `max_results`, `width`) VALUES (?, ?, ?);

--
-- UPDATE template for table `RequestRangeFull`
--
UPDATE `RequestRangeFull` SET `enabled` = ?, `max_results` = ?, `width` = ? WHERE 1;

--
-- DELETE template for table `RequestRangeFull`
--
DELETE FROM `RequestRangeFull` WHERE 0;

