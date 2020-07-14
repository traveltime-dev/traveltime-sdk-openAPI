--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseRoutesLocation' definition.
--


--
-- SELECT template for table `ResponseRoutesLocation`
--
SELECT `id`, `properties` FROM `ResponseRoutesLocation` WHERE 1;

--
-- INSERT template for table `ResponseRoutesLocation`
--
INSERT INTO `ResponseRoutesLocation`(`id`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseRoutesLocation`
--
UPDATE `ResponseRoutesLocation` SET `id` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseRoutesLocation`
--
DELETE FROM `ResponseRoutesLocation` WHERE 0;

