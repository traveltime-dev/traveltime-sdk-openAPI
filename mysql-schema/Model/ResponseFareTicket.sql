--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseFareTicket' definition.
--


--
-- SELECT template for table `ResponseFareTicket`
--
SELECT `type`, `price`, `currency` FROM `ResponseFareTicket` WHERE 1;

--
-- INSERT template for table `ResponseFareTicket`
--
INSERT INTO `ResponseFareTicket`(`type`, `price`, `currency`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseFareTicket`
--
UPDATE `ResponseFareTicket` SET `type` = ?, `price` = ?, `currency` = ? WHERE 1;

--
-- DELETE template for table `ResponseFareTicket`
--
DELETE FROM `ResponseFareTicket` WHERE 0;

