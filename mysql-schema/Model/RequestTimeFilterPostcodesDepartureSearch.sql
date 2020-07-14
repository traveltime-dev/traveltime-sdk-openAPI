--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterPostcodesDepartureSearch' definition.
--


--
-- SELECT template for table `RequestTimeFilterPostcodesDepartureSearch`
--
SELECT `id`, `transportation`, `travel_time`, `departure_time`, `properties`, `range` FROM `RequestTimeFilterPostcodesDepartureSearch` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterPostcodesDepartureSearch`
--
INSERT INTO `RequestTimeFilterPostcodesDepartureSearch`(`id`, `transportation`, `travel_time`, `departure_time`, `properties`, `range`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTimeFilterPostcodesDepartureSearch`
--
UPDATE `RequestTimeFilterPostcodesDepartureSearch` SET `id` = ?, `transportation` = ?, `travel_time` = ?, `departure_time` = ?, `properties` = ?, `range` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterPostcodesDepartureSearch`
--
DELETE FROM `RequestTimeFilterPostcodesDepartureSearch` WHERE 0;

