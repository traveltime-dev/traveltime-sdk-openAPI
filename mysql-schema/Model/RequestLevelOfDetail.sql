--
-- TravelTime API.
-- Prepared SQL queries for 'RequestLevelOfDetail' definition.
--


--
-- SELECT template for table `RequestLevelOfDetail`
--
SELECT `scale_type`, `level` FROM `RequestLevelOfDetail` WHERE 1;

--
-- INSERT template for table `RequestLevelOfDetail`
--
INSERT INTO `RequestLevelOfDetail`(`scale_type`, `level`) VALUES (?, ?);

--
-- UPDATE template for table `RequestLevelOfDetail`
--
UPDATE `RequestLevelOfDetail` SET `scale_type` = ?, `level` = ? WHERE 1;

--
-- DELETE template for table `RequestLevelOfDetail`
--
DELETE FROM `RequestLevelOfDetail` WHERE 0;

