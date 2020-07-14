--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeMap' definition.
--


--
-- SELECT template for table `RequestTimeMap`
--
SELECT `departure_searches`, `arrival_searches`, `unions`, `intersections` FROM `RequestTimeMap` WHERE 1;

--
-- INSERT template for table `RequestTimeMap`
--
INSERT INTO `RequestTimeMap`(`departure_searches`, `arrival_searches`, `unions`, `intersections`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeMap`
--
UPDATE `RequestTimeMap` SET `departure_searches` = ?, `arrival_searches` = ?, `unions` = ?, `intersections` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeMap`
--
DELETE FROM `RequestTimeMap` WHERE 0;

