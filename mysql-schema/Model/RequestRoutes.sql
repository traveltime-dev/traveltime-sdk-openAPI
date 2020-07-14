--
-- TravelTime API.
-- Prepared SQL queries for 'RequestRoutes' definition.
--


--
-- SELECT template for table `RequestRoutes`
--
SELECT `locations`, `departure_searches`, `arrival_searches` FROM `RequestRoutes` WHERE 1;

--
-- INSERT template for table `RequestRoutes`
--
INSERT INTO `RequestRoutes`(`locations`, `departure_searches`, `arrival_searches`) VALUES (?, ?, ?);

--
-- UPDATE template for table `RequestRoutes`
--
UPDATE `RequestRoutes` SET `locations` = ?, `departure_searches` = ?, `arrival_searches` = ? WHERE 1;

--
-- DELETE template for table `RequestRoutes`
--
DELETE FROM `RequestRoutes` WHERE 0;

