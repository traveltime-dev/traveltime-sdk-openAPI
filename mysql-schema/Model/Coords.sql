--
-- TravelTime API.
-- Prepared SQL queries for 'Coords' definition.
--


--
-- SELECT template for table `Coords`
--
SELECT `lat`, `lng` FROM `Coords` WHERE 1;

--
-- INSERT template for table `Coords`
--
INSERT INTO `Coords`(`lat`, `lng`) VALUES (?, ?);

--
-- UPDATE template for table `Coords`
--
UPDATE `Coords` SET `lat` = ?, `lng` = ? WHERE 1;

--
-- DELETE template for table `Coords`
--
DELETE FROM `Coords` WHERE 0;

