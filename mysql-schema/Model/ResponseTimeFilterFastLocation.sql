--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterFastLocation' definition.
--


--
-- SELECT template for table `ResponseTimeFilterFastLocation`
--
SELECT `id`, `properties` FROM `ResponseTimeFilterFastLocation` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterFastLocation`
--
INSERT INTO `ResponseTimeFilterFastLocation`(`id`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterFastLocation`
--
UPDATE `ResponseTimeFilterFastLocation` SET `id` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterFastLocation`
--
DELETE FROM `ResponseTimeFilterFastLocation` WHERE 0;

