--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodes' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodes`
--
SELECT `departure_searches`, `arrival_searches` FROM `RequestTimeFilterPostcodes` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodes`
--
INSERT INTO `RequestTimeFilterPostcodes`(`departure_searches`, `arrival_searches`) VALUES (?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodes`
--
UPDATE `RequestTimeFilterPostcodes` SET `departure_searches` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodes`
--
DELETE FROM `RequestTimeFilterPostcodes` WHERE 0;

