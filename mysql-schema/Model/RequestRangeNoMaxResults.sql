--
-- TravelTime API.
-- Prepared SQL queries for 'RequestRangeNoMaxResults' definition.
--


--
-- SELECT template for table `RequestRangeNoMaxResults`
--
SELECT `enabled`, `width` FROM `RequestRangeNoMaxResults` WHERE 1;

--
-- INSERT template for table `RequestRangeNoMaxResults`
--
INSERT INTO `RequestRangeNoMaxResults`(`enabled`, `width`) VALUES (?, ?);

--
-- UPDATE template for table `RequestRangeNoMaxResults`
--
UPDATE `RequestRangeNoMaxResults` SET `enabled` = ?, `width` = ? WHERE 1;

--
-- DELETE template for table `RequestRangeNoMaxResults`
--
DELETE FROM `RequestRangeNoMaxResults` WHERE 0;

