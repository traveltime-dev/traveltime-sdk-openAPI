--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodeDistricts' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodeDistricts`
--
SELECT `departure_searches`, `arrival_searches` FROM `RequestTimeFilterPostcodeDistricts` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodeDistricts`
--
INSERT INTO `RequestTimeFilterPostcodeDistricts`(`departure_searches`, `arrival_searches`) VALUES (?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodeDistricts`
--
UPDATE `RequestTimeFilterPostcodeDistricts` SET `departure_searches` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodeDistricts`
--
DELETE FROM `RequestTimeFilterPostcodeDistricts` WHERE 0;

