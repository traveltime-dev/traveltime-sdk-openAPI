--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTravelTimeStatistics' definition.
--


--
-- SELECT template for table `ResponseTravelTimeStatistics`
--
SELECT `min`, `max`, `mean`, `median` FROM `ResponseTravelTimeStatistics` WHERE 1;

--
-- INSERT template for table `ResponseTravelTimeStatistics`
--
INSERT INTO `ResponseTravelTimeStatistics`(`min`, `max`, `mean`, `median`) VALUES (?, ?, ?, ?);

--
-- UPDATE template for table `ResponseTravelTimeStatistics`
--
UPDATE `ResponseTravelTimeStatistics` SET `min` = ?, `max` = ?, `mean` = ?, `median` = ? WHERE 1;

--
-- DELETE template for table `ResponseTravelTimeStatistics`
--
DELETE FROM `ResponseTravelTimeStatistics` WHERE 0;

