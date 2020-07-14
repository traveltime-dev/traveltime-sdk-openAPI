--
-- TravelTime API.
-- Prepared SQL queries for 'RequestLocation' definition.
--


--
-- SELECT template for table `RequestLocation`
--
SELECT `id`, `coords` FROM `RequestLocation` WHERE 1;

--
-- INSERT template for table `RequestLocation`
--
INSERT INTO `RequestLocation`(`id`, `coords`) VALUES (?, ?);

--
-- UPDATE template for table `RequestLocation`
--
UPDATE `RequestLocation` SET `id` = ?, `coords` = ? WHERE 1;

--
-- DELETE template for table `RequestLocation`
--
DELETE FROM `RequestLocation` WHERE 0;

