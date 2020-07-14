--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseTimeMapBoundingBoxesResult' definition.
--


--
-- SELECT template for table `ResponseTimeMapBoundingBoxesResult`
--
SELECT `search_id`, `bounding_boxes`, `properties` FROM `ResponseTimeMapBoundingBoxesResult` WHERE 1;

--
-- INSERT template for table `ResponseTimeMapBoundingBoxesResult`
--
INSERT INTO `ResponseTimeMapBoundingBoxesResult`(`search_id`, `bounding_boxes`, `properties`) VALUES (?, ?, ?);

--
-- UPDATE template for table `ResponseTimeMapBoundingBoxesResult`
--
UPDATE `ResponseTimeMapBoundingBoxesResult` SET `search_id` = ?, `bounding_boxes` = ?, `properties` = ? WHERE 1;

--
-- DELETE template for table `ResponseTimeMapBoundingBoxesResult`
--
DELETE FROM `ResponseTimeMapBoundingBoxesResult` WHERE 0;

