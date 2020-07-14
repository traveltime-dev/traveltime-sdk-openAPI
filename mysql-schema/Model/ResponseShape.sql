--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseShape' definition.
--


--
-- SELECT template for table `ResponseShape`
--
SELECT `shell`, `holes` FROM `ResponseShape` WHERE 1;

--
-- INSERT template for table `ResponseShape`
--
INSERT INTO `ResponseShape`(`shell`, `holes`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseShape`
--
UPDATE `ResponseShape` SET `shell` = ?, `holes` = ? WHERE 1;

--
-- DELETE template for table `ResponseShape`
--
DELETE FROM `ResponseShape` WHERE 0;

