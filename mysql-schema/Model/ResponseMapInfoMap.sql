--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseMapInfoMap' definition.
--


--
-- SELECT template for table `ResponseMapInfoMap`
--
SELECT `name`, `features` FROM `ResponseMapInfoMap` WHERE 1;

--
-- INSERT template for table `ResponseMapInfoMap`
--
INSERT INTO `ResponseMapInfoMap`(`name`, `features`) VALUES (?, ?);

--
-- UPDATE template for table `ResponseMapInfoMap`
--
UPDATE `ResponseMapInfoMap` SET `name` = ?, `features` = ? WHERE 1;

--
-- DELETE template for table `ResponseMapInfoMap`
--
DELETE FROM `ResponseMapInfoMap` WHERE 0;

