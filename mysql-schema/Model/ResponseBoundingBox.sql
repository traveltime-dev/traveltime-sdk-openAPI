--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseBoundingBox' definition.
--


--
-- SELECT template for table `ResponseBoundingBox`
--
SELECT `envelope`, `boxes` FROM `ResponseBoundingBox` WHERE 1;

--
-- INSERT template for table `ResponseBoundingBox`
--
INSERT INTO `ResponseBoundingBox`(`envelope`, `boxes`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseBoundingBox`
--
UPDATE `ResponseBoundingBox` SET `envelope` = ?, `boxes` = ? WHERE 1;

--
-- DELETE template for table `ResponseBoundingBox`
--
DELETE FROM `ResponseBoundingBox` WHERE 0;

