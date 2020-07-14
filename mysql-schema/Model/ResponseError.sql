--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseError' definition.
--


--
-- SELECT template for table `ResponseError`
--
SELECT `http_status`, `error_code`, `description`, `documentation_link`, `additional_info` FROM `ResponseError` WHERE 1;

--
-- INSERT template for table `ResponseError`
--
INSERT INTO `ResponseError`(`http_status`, `error_code`, `description`, `documentation_link`, `additional_info`) VALUES (?, ?, ?, ?, ?);

--
-- UPDATE template for table `ResponseError`
--
UPDATE `ResponseError` SET `http_status` = ?, `error_code` = ?, `description` = ?, `documentation_link` = ?, `additional_info` = ? WHERE 1;

--
-- DELETE template for table `ResponseError`
--
DELETE FROM `ResponseError` WHERE 0;

