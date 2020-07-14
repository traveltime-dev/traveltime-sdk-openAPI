--
-- TravelTime API.
-- Prepared SQL queries for 'RequestUnionOnIntersection' definition.
--


--
-- SELECT template for table `RequestUnionOnIntersection`
--
SELECT `id`, `search_ids` FROM `RequestUnionOnIntersection` WHERE 1;

--
-- INSERT template for table `RequestUnionOnIntersection`
--
INSERT INTO `RequestUnionOnIntersection`(`id`, `search_ids`) VALUES (?, ?);

--
-- UPDATE template for table `RequestUnionOnIntersection`
--
UPDATE `RequestUnionOnIntersection` SET `id` = ?, `search_ids` = ? WHERE 1;

--
-- DELETE template for table `RequestUnionOnIntersection`
--
DELETE FROM `RequestUnionOnIntersection` WHERE 0;

