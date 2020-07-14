--
-- TravelTime API.
-- Prepared SQL queries for 'ResponseGeocodingProperties' definition.
--


--
-- SELECT template for table `ResponseGeocodingProperties`
--
SELECT `name`, `label`, `score`, `house_number`, `street`, `region`, `region_code`, `neighbourhood`, `county`, `macroregion`, `city`, `country`, `country_code`, `continent`, `postcode`, `features` FROM `ResponseGeocodingProperties` WHERE 1;

--
-- INSERT template for table `ResponseGeocodingProperties`
--
INSERT INTO `ResponseGeocodingProperties`(`name`, `label`, `score`, `house_number`, `street`, `region`, `region_code`, `neighbourhood`, `county`, `macroregion`, `city`, `country`, `country_code`, `continent`, `postcode`, `features`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

--
-- UPDATE template for table `ResponseGeocodingProperties`
--
UPDATE `ResponseGeocodingProperties` SET `name` = ?, `label` = ?, `score` = ?, `house_number` = ?, `street` = ?, `region` = ?, `region_code` = ?, `neighbourhood` = ?, `county` = ?, `macroregion` = ?, `city` = ?, `country` = ?, `country_code` = ?, `continent` = ?, `postcode` = ?, `features` = ? WHERE 1;

--
-- DELETE template for table `ResponseGeocodingProperties`
--
DELETE FROM `ResponseGeocodingProperties` WHERE 0;

