--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseBox' definition.
--


--
-- SELECT template for table `ResponseBox`
--
SELECT `min_lat`, `max_lat`, `min_lng`, `max_lng` FROM `ResponseBox` WHERE 1;

--
-- INSERT template for table `ResponseBox`
--
INSERT INTO `ResponseBox`(`min_lat`, `max_lat`, `min_lng`, `max_lng`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ResponseBox`
--
UPDATE `ResponseBox` SET `min_lat` = ?, `max_lat` = ?, `min_lng` = ?, `max_lng` = ? WHERE 1;

--
-- DELETE template for table `ResponseBox`
--
DELETE FROM `ResponseBox` WHERE 0;

