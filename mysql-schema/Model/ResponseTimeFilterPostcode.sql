--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeFilterPostcode' definition.
--


--
-- SELECT template for table `ResponseTimeFilterPostcode`
--
SELECT `code`, `properties` FROM `ResponseTimeFilterPostcode` WHERE 1;

--
-- INSERT template for table `ResponseTimeFilterPostcode`
--
INSERT INTO `ResponseTimeFilterPostcode`(`code`, `properties`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseTimeFilterPostcode`
--
UPDATE `ResponseTimeFilterPostcode` SET `code` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeFilterPostcode`
--
DELETE FROM `ResponseTimeFilterPostcode` WHERE 0;

