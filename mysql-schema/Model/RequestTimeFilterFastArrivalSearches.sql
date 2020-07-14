--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTimeFilterFastArrivalSearches' definition.
--


--
-- SELECT template for table `RequestTimeFilterFastArrivalSearches`
--
SELECT `many_to_one`, `one_to_many` FROM `RequestTimeFilterFastArrivalSearches` WHERE 1;

--
-- INSERT template for table `RequestTimeFilterFastArrivalSearches`
--
INSERT INTO `RequestTimeFilterFastArrivalSearches`(`many_to_one`, `one_to_many`) VALUES (?, ?);

--
-- UPDATE template for table `RequestTimeFilterFastArrivalSearches`
--
UPDATE `RequestTimeFilterFastArrivalSearches` SET `many_to_one` = ?, `one_to_many` = ? WHERE 1;

--
-- DELETE template for table `RequestTimeFilterFastArrivalSearches`
--
DELETE FROM `RequestTimeFilterFastArrivalSearches` WHERE 0;

