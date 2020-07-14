--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseRoute' definition.
--


--
-- SELECT template for table `ResponseRoute`
--
SELECT `departure_time`, `arrival_time`, `parts` FROM `ResponseRoute` WHERE 1;

--
-- INSERT template for table `ResponseRoute`
--
INSERT INTO `ResponseRoute`(`departure_time`, `arrival_time`, `parts`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseRoute`
--
UPDATE `ResponseRoute` SET `departure_time` = ?, `arrival_time` = ?, `parts` = ? WHERE 1;

--
-- DELETE template for table `ResponseRoute`
--
DELETE FROM `ResponseRoute` WHERE 0;

