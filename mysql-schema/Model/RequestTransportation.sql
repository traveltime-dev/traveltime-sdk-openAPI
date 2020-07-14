--
-- TravelTime API.
-- Prepared SQL queries for 'RequestTransportation' definition.
--


--
-- SELECT template for table `RequestTransportation`
--
SELECT `type`, `pt_change_delay`, `walking_time`, `driving_time_to_station`, `parking_time`, `boarding_time` FROM `RequestTransportation` WHERE 1;

--
-- INSERT template for table `RequestTransportation`
--
INSERT INTO `RequestTransportation`(`type`, `pt_change_delay`, `walking_time`, `driving_time_to_station`, `parking_time`, `boarding_time`) VALUES (?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `RequestTransportation`
--
UPDATE `RequestTransportation` SET `type` = ?, `pt_change_delay` = ?, `walking_time` = ?, `driving_time_to_station` = ?, `parking_time` = ?, `boarding_time` = ? WHERE 1;

--
-- DELETE template for table `RequestTransportation`
--
DELETE FROM `RequestTransportation` WHERE 0;

