{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Instances where

import TravelTimePlatform.Model
import TravelTimePlatform.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays
    
-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

-- * Models
 
instance Arbitrary Coords where
  arbitrary =
    Coords
      <$> arbitrary -- coordsLat :: Double
      <*> arbitrary -- coordsLng :: Double
    
instance Arbitrary RequestLocation where
  arbitrary =
    RequestLocation
      <$> arbitrary -- requestLocationId :: Text
      <*> arbitrary -- requestLocationCoords :: Coords
    
instance Arbitrary RequestRangeFull where
  arbitrary =
    RequestRangeFull
      <$> arbitrary -- requestRangeFullEnabled :: Bool
      <*> arbitrary -- requestRangeFullMaxResults :: Int
      <*> arbitrary -- requestRangeFullWidth :: Int
    
instance Arbitrary RequestRangeNoMaxResults where
  arbitrary =
    RequestRangeNoMaxResults
      <$> arbitrary -- requestRangeNoMaxResultsEnabled :: Bool
      <*> arbitrary -- requestRangeNoMaxResultsWidth :: Int
    
instance Arbitrary RequestRoutes where
  arbitrary =
    RequestRoutes
      <$> arbitrary -- requestRoutesLocations :: [RequestLocation]
      <*> arbitrary -- requestRoutesDepartureSearches :: Maybe [RequestRoutesDepartureSearch]
      <*> arbitrary -- requestRoutesArrivalSearches :: Maybe [RequestRoutesArrivalSearch]
    
instance Arbitrary RequestRoutesArrivalSearch where
  arbitrary =
    RequestRoutesArrivalSearch
      <$> arbitrary -- requestRoutesArrivalSearchId :: Text
      <*> arbitrary -- requestRoutesArrivalSearchDepartureLocationIds :: [Text]
      <*> arbitrary -- requestRoutesArrivalSearchArrivalLocationId :: Text
      <*> arbitrary -- requestRoutesArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestRoutesArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestRoutesArrivalSearchProperties :: [RequestRoutesProperty]
      <*> arbitrary -- requestRoutesArrivalSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestRoutesDepartureSearch where
  arbitrary =
    RequestRoutesDepartureSearch
      <$> arbitrary -- requestRoutesDepartureSearchId :: Text
      <*> arbitrary -- requestRoutesDepartureSearchDepartureLocationId :: Text
      <*> arbitrary -- requestRoutesDepartureSearchArrivalLocationIds :: [Text]
      <*> arbitrary -- requestRoutesDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestRoutesDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestRoutesDepartureSearchProperties :: [RequestRoutesProperty]
      <*> arbitrary -- requestRoutesDepartureSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestSupportedLocations where
  arbitrary =
    RequestSupportedLocations
      <$> arbitrary -- requestSupportedLocationsLocations :: [RequestLocation]
    
instance Arbitrary RequestTimeFilter where
  arbitrary =
    RequestTimeFilter
      <$> arbitrary -- requestTimeFilterLocations :: [RequestLocation]
      <*> arbitrary -- requestTimeFilterDepartureSearches :: Maybe [RequestTimeFilterDepartureSearch]
      <*> arbitrary -- requestTimeFilterArrivalSearches :: Maybe [RequestTimeFilterArrivalSearch]
    
instance Arbitrary RequestTimeFilterArrivalSearch where
  arbitrary =
    RequestTimeFilterArrivalSearch
      <$> arbitrary -- requestTimeFilterArrivalSearchId :: Text
      <*> arbitrary -- requestTimeFilterArrivalSearchDepartureLocationIds :: [Text]
      <*> arbitrary -- requestTimeFilterArrivalSearchArrivalLocationId :: Text
      <*> arbitrary -- requestTimeFilterArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterArrivalSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestTimeFilterArrivalSearchProperties :: [RequestTimeFilterProperty]
      <*> arbitrary -- requestTimeFilterArrivalSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterDepartureSearch where
  arbitrary =
    RequestTimeFilterDepartureSearch
      <$> arbitrary -- requestTimeFilterDepartureSearchId :: Text
      <*> arbitrary -- requestTimeFilterDepartureSearchDepartureLocationId :: Text
      <*> arbitrary -- requestTimeFilterDepartureSearchArrivalLocationIds :: [Text]
      <*> arbitrary -- requestTimeFilterDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterDepartureSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestTimeFilterDepartureSearchProperties :: [RequestTimeFilterProperty]
      <*> arbitrary -- requestTimeFilterDepartureSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterFast where
  arbitrary =
    RequestTimeFilterFast
      <$> arbitrary -- requestTimeFilterFastLocations :: [RequestLocation]
      <*> arbitrary -- requestTimeFilterFastArrivalSearches :: RequestTimeFilterFastArrivalSearches
    
instance Arbitrary RequestTimeFilterFastArrivalManyToOneSearch where
  arbitrary =
    RequestTimeFilterFastArrivalManyToOneSearch
      <$> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchId :: Text
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchArrivalLocationId :: Text
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchDepartureLocationIds :: [Text]
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchTransportation :: RequestTransportationFast
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchArrivalTimePeriod :: RequestArrivalTimePeriod
      <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchProperties :: [RequestTimeFilterFastProperty]
    
instance Arbitrary RequestTimeFilterFastArrivalOneToManySearch where
  arbitrary =
    RequestTimeFilterFastArrivalOneToManySearch
      <$> arbitrary -- requestTimeFilterFastArrivalOneToManySearchId :: Text
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchDepartureLocationId :: Text
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchArrivalLocationIds :: [Text]
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchTransportation :: RequestTransportationFast
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchArrivalTimePeriod :: RequestArrivalTimePeriod
      <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchProperties :: [RequestTimeFilterFastProperty]
    
instance Arbitrary RequestTimeFilterFastArrivalSearches where
  arbitrary =
    RequestTimeFilterFastArrivalSearches
      <$> arbitrary -- requestTimeFilterFastArrivalSearchesManyToOne :: Maybe [RequestTimeFilterFastArrivalManyToOneSearch]
      <*> arbitrary -- requestTimeFilterFastArrivalSearchesOneToMany :: Maybe [RequestTimeFilterFastArrivalOneToManySearch]
    
instance Arbitrary RequestTimeFilterPostcodeDistricts where
  arbitrary =
    RequestTimeFilterPostcodeDistricts
      <$> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearches :: Maybe [RequestTimeFilterPostcodeDistrictsDepartureSearch]
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearches :: Maybe [RequestTimeFilterPostcodeDistrictsArrivalSearch]
    
instance Arbitrary RequestTimeFilterPostcodeDistrictsArrivalSearch where
  arbitrary =
    RequestTimeFilterPostcodeDistrictsArrivalSearch
      <$> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchReachablePostcodesThreshold :: Double
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty]
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterPostcodeDistrictsDepartureSearch where
  arbitrary =
    RequestTimeFilterPostcodeDistrictsDepartureSearch
      <$> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchReachablePostcodesThreshold :: Double
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty]
      <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterPostcodeSectors where
  arbitrary =
    RequestTimeFilterPostcodeSectors
      <$> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearches :: Maybe [RequestTimeFilterPostcodeSectorsDepartureSearch]
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearches :: Maybe [RequestTimeFilterPostcodeSectorsArrivalSearch]
    
instance Arbitrary RequestTimeFilterPostcodeSectorsArrivalSearch where
  arbitrary =
    RequestTimeFilterPostcodeSectorsArrivalSearch
      <$> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchReachablePostcodesThreshold :: Double
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty]
      <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterPostcodeSectorsDepartureSearch where
  arbitrary =
    RequestTimeFilterPostcodeSectorsDepartureSearch
      <$> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchReachablePostcodesThreshold :: Double
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty]
      <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterPostcodes where
  arbitrary =
    RequestTimeFilterPostcodes
      <$> arbitrary -- requestTimeFilterPostcodesDepartureSearches :: Maybe [RequestTimeFilterPostcodesDepartureSearch]
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearches :: Maybe [RequestTimeFilterPostcodesArrivalSearch]
    
instance Arbitrary RequestTimeFilterPostcodesArrivalSearch where
  arbitrary =
    RequestTimeFilterPostcodesArrivalSearch
      <$> arbitrary -- requestTimeFilterPostcodesArrivalSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchProperties :: [RequestTimeFilterPostcodesProperty]
      <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeFilterPostcodesDepartureSearch where
  arbitrary =
    RequestTimeFilterPostcodesDepartureSearch
      <$> arbitrary -- requestTimeFilterPostcodesDepartureSearchId :: Text
      <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchTravelTime :: Int
      <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchProperties :: [RequestTimeFilterPostcodesProperty]
      <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchRange :: Maybe RequestRangeFull
    
instance Arbitrary RequestTimeMap where
  arbitrary =
    RequestTimeMap
      <$> arbitrary -- requestTimeMapDepartureSearches :: Maybe [RequestTimeMapDepartureSearch]
      <*> arbitrary -- requestTimeMapArrivalSearches :: Maybe [RequestTimeMapArrivalSearch]
      <*> arbitrary -- requestTimeMapUnions :: Maybe [RequestUnionOnIntersection]
      <*> arbitrary -- requestTimeMapIntersections :: Maybe [RequestUnionOnIntersection]
    
instance Arbitrary RequestTimeMapArrivalSearch where
  arbitrary =
    RequestTimeMapArrivalSearch
      <$> arbitrary -- requestTimeMapArrivalSearchId :: Text
      <*> arbitrary -- requestTimeMapArrivalSearchCoords :: Coords
      <*> arbitrary -- requestTimeMapArrivalSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeMapArrivalSearchTravelTime :: Int
      <*> arbitrary -- requestTimeMapArrivalSearchArrivalTime :: DateTime
      <*> arbitrary -- requestTimeMapArrivalSearchProperties :: Maybe [RequestTimeMapProperty]
      <*> arbitrary -- requestTimeMapArrivalSearchRange :: Maybe RequestRangeNoMaxResults
    
instance Arbitrary RequestTimeMapDepartureSearch where
  arbitrary =
    RequestTimeMapDepartureSearch
      <$> arbitrary -- requestTimeMapDepartureSearchId :: Text
      <*> arbitrary -- requestTimeMapDepartureSearchCoords :: Coords
      <*> arbitrary -- requestTimeMapDepartureSearchTransportation :: RequestTransportation
      <*> arbitrary -- requestTimeMapDepartureSearchTravelTime :: Int
      <*> arbitrary -- requestTimeMapDepartureSearchDepartureTime :: DateTime
      <*> arbitrary -- requestTimeMapDepartureSearchProperties :: Maybe [RequestTimeMapProperty]
      <*> arbitrary -- requestTimeMapDepartureSearchRange :: Maybe RequestRangeNoMaxResults
    
instance Arbitrary RequestTransportation where
  arbitrary =
    RequestTransportation
      <$> arbitrary -- requestTransportationType :: Text
      <*> arbitrary -- requestTransportationPtChangeDelay :: Maybe Int
      <*> arbitrary -- requestTransportationWalkingTime :: Maybe Int
      <*> arbitrary -- requestTransportationDrivingTimeToStation :: Maybe Int
      <*> arbitrary -- requestTransportationParkingTime :: Maybe Int
      <*> arbitrary -- requestTransportationBoardingTime :: Maybe Int
    
instance Arbitrary RequestTransportationFast where
  arbitrary =
    RequestTransportationFast
      <$> arbitrary -- requestTransportationFastType :: Text
    
instance Arbitrary RequestUnionOnIntersection where
  arbitrary =
    RequestUnionOnIntersection
      <$> arbitrary -- requestUnionOnIntersectionId :: Text
      <*> arbitrary -- requestUnionOnIntersectionSearchIds :: [Text]
    
instance Arbitrary ResponseBoundingBox where
  arbitrary =
    ResponseBoundingBox
      <$> arbitrary -- responseBoundingBoxEnvelope :: ResponseBox
      <*> arbitrary -- responseBoundingBoxBoxes :: [ResponseBox]
    
instance Arbitrary ResponseBox where
  arbitrary =
    ResponseBox
      <$> arbitrary -- responseBoxMinLat :: Double
      <*> arbitrary -- responseBoxMaxLat :: Double
      <*> arbitrary -- responseBoxMinLng :: Double
      <*> arbitrary -- responseBoxMaxLng :: Double
    
instance Arbitrary ResponseDistanceBreakdownItem where
  arbitrary =
    ResponseDistanceBreakdownItem
      <$> arbitrary -- responseDistanceBreakdownItemMode :: ResponseTransportationMode
      <*> arbitrary -- responseDistanceBreakdownItemDistance :: Int
    
instance Arbitrary ResponseError where
  arbitrary =
    ResponseError
      <$> arbitrary -- responseErrorHttpStatus :: Maybe Int
      <*> arbitrary -- responseErrorErrorCode :: Maybe Int
      <*> arbitrary -- responseErrorDescription :: Maybe Text
      <*> arbitrary -- responseErrorDocumentationLink :: Maybe Text
      <*> arbitrary -- responseErrorAdditionalInfo :: Maybe (Map.Map String [Text])
    
instance Arbitrary ResponseFareTicket where
  arbitrary =
    ResponseFareTicket
      <$> arbitrary -- responseFareTicketType :: Text
      <*> arbitrary -- responseFareTicketPrice :: Double
      <*> arbitrary -- responseFareTicketCurrency :: Text
    
instance Arbitrary ResponseFares where
  arbitrary =
    ResponseFares
      <$> arbitrary -- responseFaresBreakdown :: [ResponseFaresBreakdownItem]
      <*> arbitrary -- responseFaresTicketsTotal :: [ResponseFareTicket]
    
instance Arbitrary ResponseFaresBreakdownItem where
  arbitrary =
    ResponseFaresBreakdownItem
      <$> arbitrary -- responseFaresBreakdownItemModes :: [ResponseTransportationMode]
      <*> arbitrary -- responseFaresBreakdownItemRoutePartIds :: [Int]
      <*> arbitrary -- responseFaresBreakdownItemTickets :: [ResponseFareTicket]
    
instance Arbitrary ResponseFaresFast where
  arbitrary =
    ResponseFaresFast
      <$> arbitrary -- responseFaresFastTicketsTotal :: [ResponseFareTicket]
    
instance Arbitrary ResponseGeocoding where
  arbitrary =
    ResponseGeocoding
      <$> arbitrary -- responseGeocodingType :: Text
      <*> arbitrary -- responseGeocodingFeatures :: [ResponseGeocodingGeoJsonFeature]
    
instance Arbitrary ResponseGeocodingGeoJsonFeature where
  arbitrary =
    ResponseGeocodingGeoJsonFeature
      <$> arbitrary -- responseGeocodingGeoJsonFeatureType :: Text
      <*> arbitrary -- responseGeocodingGeoJsonFeatureGeometry :: ResponseGeocodingGeometry
      <*> arbitrary -- responseGeocodingGeoJsonFeatureProperties :: ResponseGeocodingProperties
    
instance Arbitrary ResponseGeocodingGeometry where
  arbitrary =
    ResponseGeocodingGeometry
      <$> arbitrary -- responseGeocodingGeometryType :: Text
      <*> arbitrary -- responseGeocodingGeometryCoordinates :: [Double]
    
instance Arbitrary ResponseGeocodingProperties where
  arbitrary =
    ResponseGeocodingProperties
      <$> arbitrary -- responseGeocodingPropertiesName :: Text
      <*> arbitrary -- responseGeocodingPropertiesLabel :: Text
      <*> arbitrary -- responseGeocodingPropertiesScore :: Maybe Double
      <*> arbitrary -- responseGeocodingPropertiesHouseNumber :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesStreet :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesRegion :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesRegionCode :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesNeighbourhood :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesCounty :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesMacroregion :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesCity :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesCountry :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesCountryCode :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesContinent :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesPostcode :: Maybe Text
      <*> arbitrary -- responseGeocodingPropertiesFeatures :: Maybe ResponseMapInfoFeatures
    
instance Arbitrary ResponseMapInfo where
  arbitrary =
    ResponseMapInfo
      <$> arbitrary -- responseMapInfoMaps :: [ResponseMapInfoMap]
    
instance Arbitrary ResponseMapInfoFeatures where
  arbitrary =
    ResponseMapInfoFeatures
      <$> arbitrary -- responseMapInfoFeaturesPublicTransport :: Maybe ResponseMapInfoFeaturesPublicTransport
      <*> arbitrary -- responseMapInfoFeaturesFares :: Bool
      <*> arbitrary -- responseMapInfoFeaturesPostcodes :: Bool
    
instance Arbitrary ResponseMapInfoFeaturesPublicTransport where
  arbitrary =
    ResponseMapInfoFeaturesPublicTransport
      <$> arbitrary -- responseMapInfoFeaturesPublicTransportDateStart :: DateTime
      <*> arbitrary -- responseMapInfoFeaturesPublicTransportDateEnd :: DateTime
    
instance Arbitrary ResponseMapInfoMap where
  arbitrary =
    ResponseMapInfoMap
      <$> arbitrary -- responseMapInfoMapName :: Text
      <*> arbitrary -- responseMapInfoMapFeatures :: ResponseMapInfoFeatures
    
instance Arbitrary ResponseRoute where
  arbitrary =
    ResponseRoute
      <$> arbitrary -- responseRouteDepartureTime :: DateTime
      <*> arbitrary -- responseRouteArrivalTime :: DateTime
      <*> arbitrary -- responseRouteParts :: [ResponseRoutePart]
    
instance Arbitrary ResponseRoutePart where
  arbitrary =
    ResponseRoutePart
      <$> arbitrary -- responseRoutePartId :: Text
      <*> arbitrary -- responseRoutePartType :: Text
      <*> arbitrary -- responseRoutePartMode :: ResponseTransportationMode
      <*> arbitrary -- responseRoutePartDirections :: Text
      <*> arbitrary -- responseRoutePartDistance :: Int
      <*> arbitrary -- responseRoutePartTravelTime :: Int
      <*> arbitrary -- responseRoutePartCoords :: [Coords]
      <*> arbitrary -- responseRoutePartDirection :: Maybe Text
      <*> arbitrary -- responseRoutePartRoad :: Maybe Text
      <*> arbitrary -- responseRoutePartTurn :: Maybe Text
      <*> arbitrary -- responseRoutePartLine :: Maybe Text
      <*> arbitrary -- responseRoutePartDepartureStation :: Maybe Text
      <*> arbitrary -- responseRoutePartArrivalStation :: Maybe Text
      <*> arbitrary -- responseRoutePartDepartsAt :: Maybe Text
      <*> arbitrary -- responseRoutePartArrivesAt :: Maybe Text
      <*> arbitrary -- responseRoutePartNumStops :: Maybe Int
    
instance Arbitrary ResponseRoutes where
  arbitrary =
    ResponseRoutes
      <$> arbitrary -- responseRoutesResults :: [ResponseRoutesResult]
    
instance Arbitrary ResponseRoutesLocation where
  arbitrary =
    ResponseRoutesLocation
      <$> arbitrary -- responseRoutesLocationId :: Text
      <*> arbitrary -- responseRoutesLocationProperties :: [ResponseRoutesProperties]
    
instance Arbitrary ResponseRoutesProperties where
  arbitrary =
    ResponseRoutesProperties
      <$> arbitrary -- responseRoutesPropertiesTravelTime :: Maybe Int
      <*> arbitrary -- responseRoutesPropertiesDistance :: Maybe Int
      <*> arbitrary -- responseRoutesPropertiesFares :: Maybe ResponseFares
      <*> arbitrary -- responseRoutesPropertiesRoute :: Maybe ResponseRoute
    
instance Arbitrary ResponseRoutesResult where
  arbitrary =
    ResponseRoutesResult
      <$> arbitrary -- responseRoutesResultSearchId :: Text
      <*> arbitrary -- responseRoutesResultLocations :: [ResponseRoutesLocation]
      <*> arbitrary -- responseRoutesResultUnreachable :: [Text]
    
instance Arbitrary ResponseShape where
  arbitrary =
    ResponseShape
      <$> arbitrary -- responseShapeShell :: [Coords]
      <*> arbitrary -- responseShapeHoles :: [[Coords]]
    
instance Arbitrary ResponseSupportedLocation where
  arbitrary =
    ResponseSupportedLocation
      <$> arbitrary -- responseSupportedLocationId :: Text
      <*> arbitrary -- responseSupportedLocationMapName :: Text
    
instance Arbitrary ResponseSupportedLocations where
  arbitrary =
    ResponseSupportedLocations
      <$> arbitrary -- responseSupportedLocationsLocations :: [ResponseSupportedLocation]
      <*> arbitrary -- responseSupportedLocationsUnsupportedLocations :: [Text]
    
instance Arbitrary ResponseTimeFilter where
  arbitrary =
    ResponseTimeFilter
      <$> arbitrary -- responseTimeFilterResults :: [ResponseTimeFilterResult]
    
instance Arbitrary ResponseTimeFilterFast where
  arbitrary =
    ResponseTimeFilterFast
      <$> arbitrary -- responseTimeFilterFastResults :: [ResponseTimeFilterFastResult]
    
instance Arbitrary ResponseTimeFilterFastLocation where
  arbitrary =
    ResponseTimeFilterFastLocation
      <$> arbitrary -- responseTimeFilterFastLocationId :: Text
      <*> arbitrary -- responseTimeFilterFastLocationProperties :: [ResponseTimeFilterFastProperties]
    
instance Arbitrary ResponseTimeFilterFastProperties where
  arbitrary =
    ResponseTimeFilterFastProperties
      <$> arbitrary -- responseTimeFilterFastPropertiesTravelTime :: Maybe Int
      <*> arbitrary -- responseTimeFilterFastPropertiesFares :: Maybe ResponseFaresFast
    
instance Arbitrary ResponseTimeFilterFastResult where
  arbitrary =
    ResponseTimeFilterFastResult
      <$> arbitrary -- responseTimeFilterFastResultSearchId :: Text
      <*> arbitrary -- responseTimeFilterFastResultLocations :: [ResponseTimeFilterFastLocation]
      <*> arbitrary -- responseTimeFilterFastResultUnreachable :: [Text]
    
instance Arbitrary ResponseTimeFilterLocation where
  arbitrary =
    ResponseTimeFilterLocation
      <$> arbitrary -- responseTimeFilterLocationId :: Text
      <*> arbitrary -- responseTimeFilterLocationProperties :: [ResponseTimeFilterProperties]
    
instance Arbitrary ResponseTimeFilterPostcode where
  arbitrary =
    ResponseTimeFilterPostcode
      <$> arbitrary -- responseTimeFilterPostcodeCode :: ModelString
      <*> arbitrary -- responseTimeFilterPostcodeProperties :: [ResponseTimeFilterPostcodesProperties]
    
instance Arbitrary ResponseTimeFilterPostcodeDistrict where
  arbitrary =
    ResponseTimeFilterPostcodeDistrict
      <$> arbitrary -- responseTimeFilterPostcodeDistrictCode :: ModelString
      <*> arbitrary -- responseTimeFilterPostcodeDistrictProperties :: ResponseTimeFilterPostcodeDistrictProperties
    
instance Arbitrary ResponseTimeFilterPostcodeDistrictProperties where
  arbitrary =
    ResponseTimeFilterPostcodeDistrictProperties
      <$> arbitrary -- responseTimeFilterPostcodeDistrictPropertiesTravelTimeReachable :: Maybe ResponseTravelTimeStatistics
      <*> arbitrary -- responseTimeFilterPostcodeDistrictPropertiesTravelTimeAll :: Maybe ResponseTravelTimeStatistics
      <*> arbitrary -- responseTimeFilterPostcodeDistrictPropertiesCoverage :: Maybe Double
    
instance Arbitrary ResponseTimeFilterPostcodeDistricts where
  arbitrary =
    ResponseTimeFilterPostcodeDistricts
      <$> arbitrary -- responseTimeFilterPostcodeDistrictsResults :: [ResponseTimeFilterPostcodeDistrictsResult]
    
instance Arbitrary ResponseTimeFilterPostcodeDistrictsResult where
  arbitrary =
    ResponseTimeFilterPostcodeDistrictsResult
      <$> arbitrary -- responseTimeFilterPostcodeDistrictsResultSearchId :: Text
      <*> arbitrary -- responseTimeFilterPostcodeDistrictsResultDistricts :: [ResponseTimeFilterPostcodeDistrict]
    
instance Arbitrary ResponseTimeFilterPostcodeSector where
  arbitrary =
    ResponseTimeFilterPostcodeSector
      <$> arbitrary -- responseTimeFilterPostcodeSectorCode :: ModelString
      <*> arbitrary -- responseTimeFilterPostcodeSectorProperties :: ResponseTimeFilterPostcodeSectorProperties
    
instance Arbitrary ResponseTimeFilterPostcodeSectorProperties where
  arbitrary =
    ResponseTimeFilterPostcodeSectorProperties
      <$> arbitrary -- responseTimeFilterPostcodeSectorPropertiesTravelTimeReachable :: Maybe ResponseTravelTimeStatistics
      <*> arbitrary -- responseTimeFilterPostcodeSectorPropertiesTravelTimeAll :: Maybe ResponseTravelTimeStatistics
      <*> arbitrary -- responseTimeFilterPostcodeSectorPropertiesCoverage :: Maybe Double
    
instance Arbitrary ResponseTimeFilterPostcodeSectors where
  arbitrary =
    ResponseTimeFilterPostcodeSectors
      <$> arbitrary -- responseTimeFilterPostcodeSectorsResults :: [ResponseTimeFilterPostcodeSectorsResult]
    
instance Arbitrary ResponseTimeFilterPostcodeSectorsResult where
  arbitrary =
    ResponseTimeFilterPostcodeSectorsResult
      <$> arbitrary -- responseTimeFilterPostcodeSectorsResultSearchId :: Text
      <*> arbitrary -- responseTimeFilterPostcodeSectorsResultSectors :: [ResponseTimeFilterPostcodeSector]
    
instance Arbitrary ResponseTimeFilterPostcodes where
  arbitrary =
    ResponseTimeFilterPostcodes
      <$> arbitrary -- responseTimeFilterPostcodesResults :: [ResponseTimeFilterPostcodesResult]
    
instance Arbitrary ResponseTimeFilterPostcodesProperties where
  arbitrary =
    ResponseTimeFilterPostcodesProperties
      <$> arbitrary -- responseTimeFilterPostcodesPropertiesTravelTime :: Maybe Int
      <*> arbitrary -- responseTimeFilterPostcodesPropertiesDistance :: Maybe Int
    
instance Arbitrary ResponseTimeFilterPostcodesResult where
  arbitrary =
    ResponseTimeFilterPostcodesResult
      <$> arbitrary -- responseTimeFilterPostcodesResultSearchId :: Text
      <*> arbitrary -- responseTimeFilterPostcodesResultPostcodes :: [ResponseTimeFilterPostcode]
    
instance Arbitrary ResponseTimeFilterProperties where
  arbitrary =
    ResponseTimeFilterProperties
      <$> arbitrary -- responseTimeFilterPropertiesTravelTime :: Maybe Int
      <*> arbitrary -- responseTimeFilterPropertiesDistance :: Maybe Int
      <*> arbitrary -- responseTimeFilterPropertiesDistanceBreakdown :: Maybe [ResponseDistanceBreakdownItem]
      <*> arbitrary -- responseTimeFilterPropertiesFares :: Maybe ResponseFares
      <*> arbitrary -- responseTimeFilterPropertiesRoute :: Maybe ResponseRoute
    
instance Arbitrary ResponseTimeFilterResult where
  arbitrary =
    ResponseTimeFilterResult
      <$> arbitrary -- responseTimeFilterResultSearchId :: Text
      <*> arbitrary -- responseTimeFilterResultLocations :: [ResponseTimeFilterLocation]
      <*> arbitrary -- responseTimeFilterResultUnreachable :: [Text]
    
instance Arbitrary ResponseTimeMap where
  arbitrary =
    ResponseTimeMap
      <$> arbitrary -- responseTimeMapResults :: [ResponseTimeMapResult]
    
instance Arbitrary ResponseTimeMapBoundingBoxes where
  arbitrary =
    ResponseTimeMapBoundingBoxes
      <$> arbitrary -- responseTimeMapBoundingBoxesResults :: [ResponseTimeMapBoundingBoxesResult]
    
instance Arbitrary ResponseTimeMapBoundingBoxesResult where
  arbitrary =
    ResponseTimeMapBoundingBoxesResult
      <$> arbitrary -- responseTimeMapBoundingBoxesResultSearchId :: Text
      <*> arbitrary -- responseTimeMapBoundingBoxesResultBoundingBoxes :: [ResponseBoundingBox]
      <*> arbitrary -- responseTimeMapBoundingBoxesResultProperties :: ResponseTimeMapProperties
    
instance Arbitrary ResponseTimeMapProperties where
  arbitrary =
    ResponseTimeMapProperties
      <$> arbitrary -- responseTimeMapPropertiesIsOnlyWalking :: Maybe Bool
    
instance Arbitrary ResponseTimeMapResult where
  arbitrary =
    ResponseTimeMapResult
      <$> arbitrary -- responseTimeMapResultSearchId :: Text
      <*> arbitrary -- responseTimeMapResultShapes :: [ResponseShape]
      <*> arbitrary -- responseTimeMapResultProperties :: ResponseTimeMapProperties
    
instance Arbitrary ResponseTimeMapWkt where
  arbitrary =
    ResponseTimeMapWkt
      <$> arbitrary -- responseTimeMapWktResults :: [ResponseTimeMapWktResult]
    
instance Arbitrary ResponseTimeMapWktResult where
  arbitrary =
    ResponseTimeMapWktResult
      <$> arbitrary -- responseTimeMapWktResultSearchId :: Text
      <*> arbitrary -- responseTimeMapWktResultShape :: Text
      <*> arbitrary -- responseTimeMapWktResultProperties :: ResponseTimeMapProperties
    
instance Arbitrary ResponseTravelTimeStatistics where
  arbitrary =
    ResponseTravelTimeStatistics
      <$> arbitrary -- responseTravelTimeStatisticsMin :: Int
      <*> arbitrary -- responseTravelTimeStatisticsMax :: Int
      <*> arbitrary -- responseTravelTimeStatisticsMean :: Int
      <*> arbitrary -- responseTravelTimeStatisticsMedian :: Int
    



instance Arbitrary E'Type where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type2 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type3 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'Type4 where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestArrivalTimePeriod where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestRoutesProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeFilterFastProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeFilterPostcodeDistrictsProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeFilterPostcodeSectorsProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeFilterPostcodesProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeFilterProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary RequestTimeMapProperty where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary ResponseTransportationMode where
  arbitrary = arbitraryBoundedEnum
