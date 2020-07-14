/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
/* SET AUTOCOMMIT = 0; */
/* START TRANSACTION; */
/* SET time_zone = "+00:00"; */

-- --------------------------------------------------------

--
-- Table structure for table `Coords` generated from model 'Coords'
--

CREATE TABLE IF NOT EXISTS `Coords` (
  `lat` DECIMAL(20, 9) NOT NULL,
  `lng` DECIMAL(20, 9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestLocation` generated from model 'RequestLocation'
--

CREATE TABLE IF NOT EXISTS `RequestLocation` (
  `id` TEXT NOT NULL,
  `coords` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestRangeFull` generated from model 'RequestRangeFull'
--

CREATE TABLE IF NOT EXISTS `RequestRangeFull` (
  `enabled` TINYINT(1) NOT NULL,
  `max_results` TINYINT UNSIGNED NOT NULL,
  `width` SMALLINT UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestRangeNoMaxResults` generated from model 'RequestRangeNoMaxResults'
--

CREATE TABLE IF NOT EXISTS `RequestRangeNoMaxResults` (
  `enabled` TINYINT(1) NOT NULL,
  `width` SMALLINT UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestRoutes` generated from model 'RequestRoutes'
--

CREATE TABLE IF NOT EXISTS `RequestRoutes` (
  `locations` JSON NOT NULL,
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestRoutesArrivalSearch` generated from model 'RequestRoutesArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestRoutesArrivalSearch` (
  `id` TEXT NOT NULL,
  `departure_location_ids` JSON NOT NULL,
  `arrival_location_id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestRoutesDepartureSearch` generated from model 'RequestRoutesDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestRoutesDepartureSearch` (
  `id` TEXT NOT NULL,
  `departure_location_id` TEXT NOT NULL,
  `arrival_location_ids` JSON NOT NULL,
  `transportation` TEXT NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestSupportedLocations` generated from model 'RequestSupportedLocations'
--

CREATE TABLE IF NOT EXISTS `RequestSupportedLocations` (
  `locations` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilter` generated from model 'RequestTimeFilter'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilter` (
  `locations` JSON NOT NULL,
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterArrivalSearch` generated from model 'RequestTimeFilterArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterArrivalSearch` (
  `id` TEXT NOT NULL,
  `departure_location_ids` JSON NOT NULL,
  `arrival_location_id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterDepartureSearch` generated from model 'RequestTimeFilterDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterDepartureSearch` (
  `id` TEXT NOT NULL,
  `departure_location_id` TEXT NOT NULL,
  `arrival_location_ids` JSON NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterFast` generated from model 'RequestTimeFilterFast'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterFast` (
  `locations` JSON NOT NULL,
  `arrival_searches` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterFastArrivalManyToOneSearch` generated from model 'RequestTimeFilterFastArrivalManyToOneSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterFastArrivalManyToOneSearch` (
  `id` TEXT NOT NULL,
  `arrival_location_id` TEXT NOT NULL,
  `departure_location_ids` JSON NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time_period` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterFastArrivalOneToManySearch` generated from model 'RequestTimeFilterFastArrivalOneToManySearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterFastArrivalOneToManySearch` (
  `id` TEXT NOT NULL,
  `departure_location_id` TEXT NOT NULL,
  `arrival_location_ids` JSON NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time_period` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterFastArrivalSearches` generated from model 'RequestTimeFilterFastArrivalSearches'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterFastArrivalSearches` (
  `many_to_one` JSON DEFAULT NULL,
  `one_to_many` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeDistricts` generated from model 'RequestTimeFilterPostcodeDistricts'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeDistricts` (
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeDistrictsArrivalSearch` generated from model 'RequestTimeFilterPostcodeDistrictsArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeDistrictsArrivalSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `reachable_postcodes_threshold` DECIMAL(20, 9) NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeDistrictsDepartureSearch` generated from model 'RequestTimeFilterPostcodeDistrictsDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeDistrictsDepartureSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `reachable_postcodes_threshold` DECIMAL(20, 9) NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeSectors` generated from model 'RequestTimeFilterPostcodeSectors'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeSectors` (
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeSectorsArrivalSearch` generated from model 'RequestTimeFilterPostcodeSectorsArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeSectorsArrivalSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `reachable_postcodes_threshold` DECIMAL(20, 9) NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodeSectorsDepartureSearch` generated from model 'RequestTimeFilterPostcodeSectorsDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodeSectorsDepartureSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `reachable_postcodes_threshold` DECIMAL(20, 9) NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodes` generated from model 'RequestTimeFilterPostcodes'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodes` (
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodesArrivalSearch` generated from model 'RequestTimeFilterPostcodesArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodesArrivalSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeFilterPostcodesDepartureSearch` generated from model 'RequestTimeFilterPostcodesDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeFilterPostcodesDepartureSearch` (
  `id` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `properties` JSON NOT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeMap` generated from model 'RequestTimeMap'
--

CREATE TABLE IF NOT EXISTS `RequestTimeMap` (
  `departure_searches` JSON DEFAULT NULL,
  `arrival_searches` JSON DEFAULT NULL,
  `unions` JSON DEFAULT NULL,
  `intersections` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeMapArrivalSearch` generated from model 'RequestTimeMapArrivalSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeMapArrivalSearch` (
  `id` TEXT NOT NULL,
  `coords` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `properties` JSON DEFAULT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTimeMapDepartureSearch` generated from model 'RequestTimeMapDepartureSearch'
--

CREATE TABLE IF NOT EXISTS `RequestTimeMapDepartureSearch` (
  `id` TEXT NOT NULL,
  `coords` TEXT NOT NULL,
  `transportation` TEXT NOT NULL,
  `travel_time` SMALLINT UNSIGNED NOT NULL,
  `departure_time` DATETIME NOT NULL,
  `properties` JSON DEFAULT NULL,
  `range` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTransportation` generated from model 'RequestTransportation'
--

CREATE TABLE IF NOT EXISTS `RequestTransportation` (
  `type` ENUM('cycling', 'driving', 'driving+train', 'public_transport', 'walking', 'coach', 'bus', 'train', 'ferry', 'driving+ferry', 'cycling+ferry') NOT NULL,
  `pt_change_delay` INT DEFAULT NULL,
  `walking_time` INT DEFAULT NULL,
  `driving_time_to_station` INT DEFAULT NULL,
  `parking_time` INT DEFAULT NULL,
  `boarding_time` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestTransportationFast` generated from model 'RequestTransportationFast'
--

CREATE TABLE IF NOT EXISTS `RequestTransportationFast` (
  `type` ENUM('public_transport', 'driving', 'driving+public_transport') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `RequestUnionOnIntersection` generated from model 'RequestUnionOnIntersection'
--

CREATE TABLE IF NOT EXISTS `RequestUnionOnIntersection` (
  `id` TEXT NOT NULL,
  `search_ids` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseBoundingBox` generated from model 'ResponseBoundingBox'
--

CREATE TABLE IF NOT EXISTS `ResponseBoundingBox` (
  `envelope` TEXT NOT NULL,
  `boxes` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseBox` generated from model 'ResponseBox'
--

CREATE TABLE IF NOT EXISTS `ResponseBox` (
  `min_lat` DECIMAL(20, 9) NOT NULL,
  `max_lat` DECIMAL(20, 9) NOT NULL,
  `min_lng` DECIMAL(20, 9) NOT NULL,
  `max_lng` DECIMAL(20, 9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseDistanceBreakdownItem` generated from model 'ResponseDistanceBreakdownItem'
--

CREATE TABLE IF NOT EXISTS `ResponseDistanceBreakdownItem` (
  `mode` TEXT NOT NULL,
  `distance` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseError` generated from model 'ResponseError'
--

CREATE TABLE IF NOT EXISTS `ResponseError` (
  `http_status` INT DEFAULT NULL,
  `error_code` INT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `documentation_link` TEXT DEFAULT NULL,
  `additional_info` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseFareTicket` generated from model 'ResponseFareTicket'
--

CREATE TABLE IF NOT EXISTS `ResponseFareTicket` (
  `type` ENUM('single', 'week', 'month', 'year') NOT NULL,
  `price` DECIMAL(20, 9) NOT NULL,
  `currency` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseFares` generated from model 'ResponseFares'
--

CREATE TABLE IF NOT EXISTS `ResponseFares` (
  `breakdown` JSON NOT NULL,
  `tickets_total` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseFaresBreakdownItem` generated from model 'ResponseFaresBreakdownItem'
--

CREATE TABLE IF NOT EXISTS `ResponseFaresBreakdownItem` (
  `modes` JSON NOT NULL,
  `route_part_ids` JSON NOT NULL,
  `tickets` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseFaresFast` generated from model 'ResponseFaresFast'
--

CREATE TABLE IF NOT EXISTS `ResponseFaresFast` (
  `tickets_total` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseGeocoding` generated from model 'ResponseGeocoding'
--

CREATE TABLE IF NOT EXISTS `ResponseGeocoding` (
  `type` TEXT NOT NULL,
  `features` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseGeocodingGeoJsonFeature` generated from model 'ResponseGeocodingGeoJsonFeature'
--

CREATE TABLE IF NOT EXISTS `ResponseGeocodingGeoJsonFeature` (
  `type` TEXT NOT NULL,
  `geometry` TEXT NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseGeocodingGeometry` generated from model 'ResponseGeocodingGeometry'
--

CREATE TABLE IF NOT EXISTS `ResponseGeocodingGeometry` (
  `type` TEXT NOT NULL,
  `coordinates` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseGeocodingProperties` generated from model 'ResponseGeocodingProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseGeocodingProperties` (
  `name` TEXT NOT NULL,
  `label` TEXT NOT NULL,
  `score` DECIMAL(20, 9) DEFAULT NULL,
  `house_number` TEXT DEFAULT NULL,
  `street` TEXT DEFAULT NULL,
  `region` TEXT DEFAULT NULL,
  `region_code` TEXT DEFAULT NULL,
  `neighbourhood` TEXT DEFAULT NULL,
  `county` TEXT DEFAULT NULL,
  `macroregion` TEXT DEFAULT NULL,
  `city` TEXT DEFAULT NULL,
  `country` TEXT DEFAULT NULL,
  `country_code` TEXT DEFAULT NULL,
  `continent` TEXT DEFAULT NULL,
  `postcode` TEXT DEFAULT NULL,
  `features` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseMapInfo` generated from model 'ResponseMapInfo'
--

CREATE TABLE IF NOT EXISTS `ResponseMapInfo` (
  `maps` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseMapInfoFeatures` generated from model 'ResponseMapInfoFeatures'
--

CREATE TABLE IF NOT EXISTS `ResponseMapInfoFeatures` (
  `public_transport` TEXT DEFAULT NULL,
  `fares` TINYINT(1) NOT NULL,
  `postcodes` TINYINT(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseMapInfoFeaturesPublicTransport` generated from model 'ResponseMapInfoFeaturesPublicTransport'
--

CREATE TABLE IF NOT EXISTS `ResponseMapInfoFeaturesPublicTransport` (
  `date_start` DATETIME NOT NULL,
  `date_end` DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseMapInfoMap` generated from model 'ResponseMapInfoMap'
--

CREATE TABLE IF NOT EXISTS `ResponseMapInfoMap` (
  `name` TEXT NOT NULL,
  `features` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoute` generated from model 'ResponseRoute'
--

CREATE TABLE IF NOT EXISTS `ResponseRoute` (
  `departure_time` DATETIME NOT NULL,
  `arrival_time` DATETIME NOT NULL,
  `parts` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoutePart` generated from model 'ResponseRoutePart'
--

CREATE TABLE IF NOT EXISTS `ResponseRoutePart` (
  `id` TEXT NOT NULL,
  `type` ENUM('basic', 'start_end', 'road', 'public_transport') NOT NULL,
  `mode` TEXT NOT NULL,
  `directions` TEXT NOT NULL,
  `distance` INT NOT NULL,
  `travel_time` INT NOT NULL,
  `coords` JSON NOT NULL,
  `direction` TEXT DEFAULT NULL,
  `road` TEXT DEFAULT NULL,
  `turn` TEXT DEFAULT NULL,
  `line` TEXT DEFAULT NULL,
  `departure_station` TEXT DEFAULT NULL,
  `arrival_station` TEXT DEFAULT NULL,
  `departs_at` TEXT DEFAULT NULL,
  `arrives_at` TEXT DEFAULT NULL,
  `num_stops` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoutes` generated from model 'ResponseRoutes'
--

CREATE TABLE IF NOT EXISTS `ResponseRoutes` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoutesLocation` generated from model 'ResponseRoutesLocation'
--

CREATE TABLE IF NOT EXISTS `ResponseRoutesLocation` (
  `id` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoutesProperties` generated from model 'ResponseRoutesProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseRoutesProperties` (
  `travel_time` INT DEFAULT NULL,
  `distance` INT DEFAULT NULL,
  `fares` TEXT DEFAULT NULL,
  `route` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseRoutesResult` generated from model 'ResponseRoutesResult'
--

CREATE TABLE IF NOT EXISTS `ResponseRoutesResult` (
  `search_id` TEXT NOT NULL,
  `locations` JSON NOT NULL,
  `unreachable` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseShape` generated from model 'ResponseShape'
--

CREATE TABLE IF NOT EXISTS `ResponseShape` (
  `shell` JSON NOT NULL,
  `holes` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseSupportedLocation` generated from model 'ResponseSupportedLocation'
--

CREATE TABLE IF NOT EXISTS `ResponseSupportedLocation` (
  `id` TEXT NOT NULL,
  `map_name` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseSupportedLocations` generated from model 'ResponseSupportedLocations'
--

CREATE TABLE IF NOT EXISTS `ResponseSupportedLocations` (
  `locations` JSON NOT NULL,
  `unsupported_locations` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilter` generated from model 'ResponseTimeFilter'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilter` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterFast` generated from model 'ResponseTimeFilterFast'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterFast` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterFastLocation` generated from model 'ResponseTimeFilterFastLocation'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterFastLocation` (
  `id` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterFastProperties` generated from model 'ResponseTimeFilterFastProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterFastProperties` (
  `travel_time` INT DEFAULT NULL,
  `fares` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterFastResult` generated from model 'ResponseTimeFilterFastResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterFastResult` (
  `search_id` TEXT NOT NULL,
  `locations` JSON NOT NULL,
  `unreachable` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterLocation` generated from model 'ResponseTimeFilterLocation'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterLocation` (
  `id` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcode` generated from model 'ResponseTimeFilterPostcode'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcode` (
  `code` TEXT NOT NULL,
  `properties` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeDistrict` generated from model 'ResponseTimeFilterPostcodeDistrict'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeDistrict` (
  `code` TEXT NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeDistrictProperties` generated from model 'ResponseTimeFilterPostcodeDistrictProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeDistrictProperties` (
  `travel_time_reachable` TEXT DEFAULT NULL,
  `travel_time_all` TEXT DEFAULT NULL,
  `coverage` DECIMAL(20, 9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeDistricts` generated from model 'ResponseTimeFilterPostcodeDistricts'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeDistricts` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeDistrictsResult` generated from model 'ResponseTimeFilterPostcodeDistrictsResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeDistrictsResult` (
  `search_id` TEXT NOT NULL,
  `districts` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeSector` generated from model 'ResponseTimeFilterPostcodeSector'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeSector` (
  `code` TEXT NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeSectorProperties` generated from model 'ResponseTimeFilterPostcodeSectorProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeSectorProperties` (
  `travel_time_reachable` TEXT DEFAULT NULL,
  `travel_time_all` TEXT DEFAULT NULL,
  `coverage` DECIMAL(20, 9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeSectors` generated from model 'ResponseTimeFilterPostcodeSectors'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeSectors` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodeSectorsResult` generated from model 'ResponseTimeFilterPostcodeSectorsResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodeSectorsResult` (
  `search_id` TEXT NOT NULL,
  `sectors` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodes` generated from model 'ResponseTimeFilterPostcodes'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodes` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodesProperties` generated from model 'ResponseTimeFilterPostcodesProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodesProperties` (
  `travel_time` INT DEFAULT NULL,
  `distance` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterPostcodesResult` generated from model 'ResponseTimeFilterPostcodesResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterPostcodesResult` (
  `search_id` TEXT NOT NULL,
  `postcodes` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterProperties` generated from model 'ResponseTimeFilterProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterProperties` (
  `travel_time` INT DEFAULT NULL,
  `distance` INT DEFAULT NULL,
  `distance_breakdown` JSON DEFAULT NULL,
  `fares` TEXT DEFAULT NULL,
  `route` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeFilterResult` generated from model 'ResponseTimeFilterResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeFilterResult` (
  `search_id` TEXT NOT NULL,
  `locations` JSON NOT NULL,
  `unreachable` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMap` generated from model 'ResponseTimeMap'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMap` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapBoundingBoxes` generated from model 'ResponseTimeMapBoundingBoxes'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapBoundingBoxes` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapBoundingBoxesResult` generated from model 'ResponseTimeMapBoundingBoxesResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapBoundingBoxesResult` (
  `search_id` TEXT NOT NULL,
  `bounding_boxes` JSON NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapProperties` generated from model 'ResponseTimeMapProperties'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapProperties` (
  `is_only_walking` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapResult` generated from model 'ResponseTimeMapResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapResult` (
  `search_id` TEXT NOT NULL,
  `shapes` JSON NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapWkt` generated from model 'ResponseTimeMapWkt'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapWkt` (
  `results` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMapWktResult` generated from model 'ResponseTimeMapWktResult'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMapWktResult` (
  `search_id` TEXT NOT NULL,
  `shape` TEXT NOT NULL,
  `properties` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTravelTimeStatistics` generated from model 'ResponseTravelTimeStatistics'
--

CREATE TABLE IF NOT EXISTS `ResponseTravelTimeStatistics` (
  `min` INT NOT NULL,
  `max` INT NOT NULL,
  `mean` INT NOT NULL,
  `median` INT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


