--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterLocation' definition.
--


--
-- SELECT template for table `ResponseTimeFilterLocation`
--
SELECT `id`, `properties` FROM `ResponseTimeFilterLocation` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterLocation`
--
INSERT INTO `ResponseTimeFilterLocation`(`id`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterLocation`
--
UPDATE `ResponseTimeFilterLocation` SET `id` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterLocation`
--
DELETE FROM `ResponseTimeFilterLocation` WHERE 0;

