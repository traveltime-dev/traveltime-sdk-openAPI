{-# OPTIONS_GHC -fno-warn-unused-imports -fno-warn-unused-matches #-}

module Instances where

import TravelTime.Model
import TravelTime.Core

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
    
arbitraryReduced :: Arbitrary a => Int -> Gen a
arbitraryReduced n = resize (n `div` 2) arbitrary

arbitraryReducedMaybe :: Arbitrary a => Int -> Gen (Maybe a)
arbitraryReducedMaybe 0 = elements [Nothing]
arbitraryReducedMaybe n = arbitraryReduced n

arbitraryReducedMaybeValue :: Int -> Gen (Maybe A.Value)
arbitraryReducedMaybeValue 0 = elements [Nothing]
arbitraryReducedMaybeValue n = do
  generated <- arbitraryReduced n
  if generated == Just A.Null
    then return Nothing
    else return generated

-- * Models
 
instance Arbitrary Coords where
  arbitrary = sized genCoords

genCoords :: Int -> Gen Coords
genCoords n =
  Coords
    <$> arbitrary -- coordsLat :: Double
    <*> arbitrary -- coordsLng :: Double
  
instance Arbitrary RequestLevelOfDetail where
  arbitrary = sized genRequestLevelOfDetail

genRequestLevelOfDetail :: Int -> Gen RequestLevelOfDetail
genRequestLevelOfDetail n =
  RequestLevelOfDetail
    <$> arbitrary -- requestLevelOfDetailScaleType :: E'ScaleType
    <*> arbitrary -- requestLevelOfDetailLevel :: E'Level
  
instance Arbitrary RequestLocation where
  arbitrary = sized genRequestLocation

genRequestLocation :: Int -> Gen RequestLocation
genRequestLocation n =
  RequestLocation
    <$> arbitrary -- requestLocationId :: Text
    <*> arbitraryReduced n -- requestLocationCoords :: Coords
  
instance Arbitrary RequestRangeFull where
  arbitrary = sized genRequestRangeFull

genRequestRangeFull :: Int -> Gen RequestRangeFull
genRequestRangeFull n =
  RequestRangeFull
    <$> arbitrary -- requestRangeFullEnabled :: Bool
    <*> arbitrary -- requestRangeFullMaxResults :: Int
    <*> arbitrary -- requestRangeFullWidth :: Int
  
instance Arbitrary RequestRangeNoMaxResults where
  arbitrary = sized genRequestRangeNoMaxResults

genRequestRangeNoMaxResults :: Int -> Gen RequestRangeNoMaxResults
genRequestRangeNoMaxResults n =
  RequestRangeNoMaxResults
    <$> arbitrary -- requestRangeNoMaxResultsEnabled :: Bool
    <*> arbitrary -- requestRangeNoMaxResultsWidth :: Int
  
instance Arbitrary RequestRoutes where
  arbitrary = sized genRequestRoutes

genRequestRoutes :: Int -> Gen RequestRoutes
genRequestRoutes n =
  RequestRoutes
    <$> arbitraryReduced n -- requestRoutesLocations :: [RequestLocation]
    <*> arbitraryReducedMaybe n -- requestRoutesDepartureSearches :: Maybe [RequestRoutesDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestRoutesArrivalSearches :: Maybe [RequestRoutesArrivalSearch]
  
instance Arbitrary RequestRoutesArrivalSearch where
  arbitrary = sized genRequestRoutesArrivalSearch

genRequestRoutesArrivalSearch :: Int -> Gen RequestRoutesArrivalSearch
genRequestRoutesArrivalSearch n =
  RequestRoutesArrivalSearch
    <$> arbitrary -- requestRoutesArrivalSearchId :: Text
    <*> arbitrary -- requestRoutesArrivalSearchDepartureLocationIds :: [Text]
    <*> arbitrary -- requestRoutesArrivalSearchArrivalLocationId :: Text
    <*> arbitraryReduced n -- requestRoutesArrivalSearchTransportation :: RequestTransportation
    <*> arbitraryReduced n -- requestRoutesArrivalSearchArrivalTime :: DateTime
    <*> arbitraryReduced n -- requestRoutesArrivalSearchProperties :: [RequestRoutesProperty]
    <*> arbitraryReducedMaybe n -- requestRoutesArrivalSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestRoutesDepartureSearch where
  arbitrary = sized genRequestRoutesDepartureSearch

genRequestRoutesDepartureSearch :: Int -> Gen RequestRoutesDepartureSearch
genRequestRoutesDepartureSearch n =
  RequestRoutesDepartureSearch
    <$> arbitrary -- requestRoutesDepartureSearchId :: Text
    <*> arbitrary -- requestRoutesDepartureSearchDepartureLocationId :: Text
    <*> arbitrary -- requestRoutesDepartureSearchArrivalLocationIds :: [Text]
    <*> arbitraryReduced n -- requestRoutesDepartureSearchTransportation :: RequestTransportation
    <*> arbitraryReduced n -- requestRoutesDepartureSearchDepartureTime :: DateTime
    <*> arbitraryReduced n -- requestRoutesDepartureSearchProperties :: [RequestRoutesProperty]
    <*> arbitraryReducedMaybe n -- requestRoutesDepartureSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestSupportedLocations where
  arbitrary = sized genRequestSupportedLocations

genRequestSupportedLocations :: Int -> Gen RequestSupportedLocations
genRequestSupportedLocations n =
  RequestSupportedLocations
    <$> arbitraryReduced n -- requestSupportedLocationsLocations :: [RequestLocation]
  
instance Arbitrary RequestTimeFilter where
  arbitrary = sized genRequestTimeFilter

genRequestTimeFilter :: Int -> Gen RequestTimeFilter
genRequestTimeFilter n =
  RequestTimeFilter
    <$> arbitraryReduced n -- requestTimeFilterLocations :: [RequestLocation]
    <*> arbitraryReducedMaybe n -- requestTimeFilterDepartureSearches :: Maybe [RequestTimeFilterDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestTimeFilterArrivalSearches :: Maybe [RequestTimeFilterArrivalSearch]
  
instance Arbitrary RequestTimeFilterArrivalSearch where
  arbitrary = sized genRequestTimeFilterArrivalSearch

genRequestTimeFilterArrivalSearch :: Int -> Gen RequestTimeFilterArrivalSearch
genRequestTimeFilterArrivalSearch n =
  RequestTimeFilterArrivalSearch
    <$> arbitrary -- requestTimeFilterArrivalSearchId :: Text
    <*> arbitrary -- requestTimeFilterArrivalSearchDepartureLocationIds :: [Text]
    <*> arbitrary -- requestTimeFilterArrivalSearchArrivalLocationId :: Text
    <*> arbitraryReduced n -- requestTimeFilterArrivalSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterArrivalSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterArrivalSearchArrivalTime :: DateTime
    <*> arbitraryReduced n -- requestTimeFilterArrivalSearchProperties :: [RequestTimeFilterProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterArrivalSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterDepartureSearch where
  arbitrary = sized genRequestTimeFilterDepartureSearch

genRequestTimeFilterDepartureSearch :: Int -> Gen RequestTimeFilterDepartureSearch
genRequestTimeFilterDepartureSearch n =
  RequestTimeFilterDepartureSearch
    <$> arbitrary -- requestTimeFilterDepartureSearchId :: Text
    <*> arbitrary -- requestTimeFilterDepartureSearchDepartureLocationId :: Text
    <*> arbitrary -- requestTimeFilterDepartureSearchArrivalLocationIds :: [Text]
    <*> arbitraryReduced n -- requestTimeFilterDepartureSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterDepartureSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterDepartureSearchDepartureTime :: DateTime
    <*> arbitraryReduced n -- requestTimeFilterDepartureSearchProperties :: [RequestTimeFilterProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterDepartureSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterFast where
  arbitrary = sized genRequestTimeFilterFast

genRequestTimeFilterFast :: Int -> Gen RequestTimeFilterFast
genRequestTimeFilterFast n =
  RequestTimeFilterFast
    <$> arbitraryReduced n -- requestTimeFilterFastLocations :: [RequestLocation]
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalSearches :: RequestTimeFilterFastArrivalSearches
  
instance Arbitrary RequestTimeFilterFastArrivalManyToOneSearch where
  arbitrary = sized genRequestTimeFilterFastArrivalManyToOneSearch

genRequestTimeFilterFastArrivalManyToOneSearch :: Int -> Gen RequestTimeFilterFastArrivalManyToOneSearch
genRequestTimeFilterFastArrivalManyToOneSearch n =
  RequestTimeFilterFastArrivalManyToOneSearch
    <$> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchId :: Text
    <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchArrivalLocationId :: Text
    <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchDepartureLocationIds :: [Text]
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalManyToOneSearchTransportation :: RequestTransportationFast
    <*> arbitrary -- requestTimeFilterFastArrivalManyToOneSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalManyToOneSearchArrivalTimePeriod :: RequestArrivalTimePeriod
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalManyToOneSearchProperties :: [RequestTimeFilterFastProperty]
  
instance Arbitrary RequestTimeFilterFastArrivalOneToManySearch where
  arbitrary = sized genRequestTimeFilterFastArrivalOneToManySearch

genRequestTimeFilterFastArrivalOneToManySearch :: Int -> Gen RequestTimeFilterFastArrivalOneToManySearch
genRequestTimeFilterFastArrivalOneToManySearch n =
  RequestTimeFilterFastArrivalOneToManySearch
    <$> arbitrary -- requestTimeFilterFastArrivalOneToManySearchId :: Text
    <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchDepartureLocationId :: Text
    <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchArrivalLocationIds :: [Text]
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalOneToManySearchTransportation :: RequestTransportationFast
    <*> arbitrary -- requestTimeFilterFastArrivalOneToManySearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalOneToManySearchArrivalTimePeriod :: RequestArrivalTimePeriod
    <*> arbitraryReduced n -- requestTimeFilterFastArrivalOneToManySearchProperties :: [RequestTimeFilterFastProperty]
  
instance Arbitrary RequestTimeFilterFastArrivalSearches where
  arbitrary = sized genRequestTimeFilterFastArrivalSearches

genRequestTimeFilterFastArrivalSearches :: Int -> Gen RequestTimeFilterFastArrivalSearches
genRequestTimeFilterFastArrivalSearches n =
  RequestTimeFilterFastArrivalSearches
    <$> arbitraryReducedMaybe n -- requestTimeFilterFastArrivalSearchesManyToOne :: Maybe [RequestTimeFilterFastArrivalManyToOneSearch]
    <*> arbitraryReducedMaybe n -- requestTimeFilterFastArrivalSearchesOneToMany :: Maybe [RequestTimeFilterFastArrivalOneToManySearch]
  
instance Arbitrary RequestTimeFilterPostcodeDistricts where
  arbitrary = sized genRequestTimeFilterPostcodeDistricts

genRequestTimeFilterPostcodeDistricts :: Int -> Gen RequestTimeFilterPostcodeDistricts
genRequestTimeFilterPostcodeDistricts n =
  RequestTimeFilterPostcodeDistricts
    <$> arbitraryReducedMaybe n -- requestTimeFilterPostcodeDistrictsDepartureSearches :: Maybe [RequestTimeFilterPostcodeDistrictsDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeDistrictsArrivalSearches :: Maybe [RequestTimeFilterPostcodeDistrictsArrivalSearch]
  
instance Arbitrary RequestTimeFilterPostcodeDistrictsArrivalSearch where
  arbitrary = sized genRequestTimeFilterPostcodeDistrictsArrivalSearch

genRequestTimeFilterPostcodeDistrictsArrivalSearch :: Int -> Gen RequestTimeFilterPostcodeDistrictsArrivalSearch
genRequestTimeFilterPostcodeDistrictsArrivalSearch n =
  RequestTimeFilterPostcodeDistrictsArrivalSearch
    <$> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsArrivalSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsArrivalSearchArrivalTime :: DateTime
    <*> arbitrary -- requestTimeFilterPostcodeDistrictsArrivalSearchReachablePostcodesThreshold :: Double
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsArrivalSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeDistrictsArrivalSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterPostcodeDistrictsDepartureSearch where
  arbitrary = sized genRequestTimeFilterPostcodeDistrictsDepartureSearch

genRequestTimeFilterPostcodeDistrictsDepartureSearch :: Int -> Gen RequestTimeFilterPostcodeDistrictsDepartureSearch
genRequestTimeFilterPostcodeDistrictsDepartureSearch n =
  RequestTimeFilterPostcodeDistrictsDepartureSearch
    <$> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsDepartureSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsDepartureSearchDepartureTime :: DateTime
    <*> arbitrary -- requestTimeFilterPostcodeDistrictsDepartureSearchReachablePostcodesThreshold :: Double
    <*> arbitraryReduced n -- requestTimeFilterPostcodeDistrictsDepartureSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeDistrictsDepartureSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterPostcodeSectors where
  arbitrary = sized genRequestTimeFilterPostcodeSectors

genRequestTimeFilterPostcodeSectors :: Int -> Gen RequestTimeFilterPostcodeSectors
genRequestTimeFilterPostcodeSectors n =
  RequestTimeFilterPostcodeSectors
    <$> arbitraryReducedMaybe n -- requestTimeFilterPostcodeSectorsDepartureSearches :: Maybe [RequestTimeFilterPostcodeSectorsDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeSectorsArrivalSearches :: Maybe [RequestTimeFilterPostcodeSectorsArrivalSearch]
  
instance Arbitrary RequestTimeFilterPostcodeSectorsArrivalSearch where
  arbitrary = sized genRequestTimeFilterPostcodeSectorsArrivalSearch

genRequestTimeFilterPostcodeSectorsArrivalSearch :: Int -> Gen RequestTimeFilterPostcodeSectorsArrivalSearch
genRequestTimeFilterPostcodeSectorsArrivalSearch n =
  RequestTimeFilterPostcodeSectorsArrivalSearch
    <$> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsArrivalSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsArrivalSearchArrivalTime :: DateTime
    <*> arbitrary -- requestTimeFilterPostcodeSectorsArrivalSearchReachablePostcodesThreshold :: Double
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsArrivalSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeSectorsArrivalSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterPostcodeSectorsDepartureSearch where
  arbitrary = sized genRequestTimeFilterPostcodeSectorsDepartureSearch

genRequestTimeFilterPostcodeSectorsDepartureSearch :: Int -> Gen RequestTimeFilterPostcodeSectorsDepartureSearch
genRequestTimeFilterPostcodeSectorsDepartureSearch n =
  RequestTimeFilterPostcodeSectorsDepartureSearch
    <$> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsDepartureSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsDepartureSearchDepartureTime :: DateTime
    <*> arbitrary -- requestTimeFilterPostcodeSectorsDepartureSearchReachablePostcodesThreshold :: Double
    <*> arbitraryReduced n -- requestTimeFilterPostcodeSectorsDepartureSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodeSectorsDepartureSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterPostcodes where
  arbitrary = sized genRequestTimeFilterPostcodes

genRequestTimeFilterPostcodes :: Int -> Gen RequestTimeFilterPostcodes
genRequestTimeFilterPostcodes n =
  RequestTimeFilterPostcodes
    <$> arbitraryReducedMaybe n -- requestTimeFilterPostcodesDepartureSearches :: Maybe [RequestTimeFilterPostcodesDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodesArrivalSearches :: Maybe [RequestTimeFilterPostcodesArrivalSearch]
  
instance Arbitrary RequestTimeFilterPostcodesArrivalSearch where
  arbitrary = sized genRequestTimeFilterPostcodesArrivalSearch

genRequestTimeFilterPostcodesArrivalSearch :: Int -> Gen RequestTimeFilterPostcodesArrivalSearch
genRequestTimeFilterPostcodesArrivalSearch n =
  RequestTimeFilterPostcodesArrivalSearch
    <$> arbitrary -- requestTimeFilterPostcodesArrivalSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodesArrivalSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodesArrivalSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodesArrivalSearchArrivalTime :: DateTime
    <*> arbitraryReduced n -- requestTimeFilterPostcodesArrivalSearchProperties :: [RequestTimeFilterPostcodesProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodesArrivalSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeFilterPostcodesDepartureSearch where
  arbitrary = sized genRequestTimeFilterPostcodesDepartureSearch

genRequestTimeFilterPostcodesDepartureSearch :: Int -> Gen RequestTimeFilterPostcodesDepartureSearch
genRequestTimeFilterPostcodesDepartureSearch n =
  RequestTimeFilterPostcodesDepartureSearch
    <$> arbitrary -- requestTimeFilterPostcodesDepartureSearchId :: Text
    <*> arbitraryReduced n -- requestTimeFilterPostcodesDepartureSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeFilterPostcodesDepartureSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeFilterPostcodesDepartureSearchDepartureTime :: DateTime
    <*> arbitraryReduced n -- requestTimeFilterPostcodesDepartureSearchProperties :: [RequestTimeFilterPostcodesProperty]
    <*> arbitraryReducedMaybe n -- requestTimeFilterPostcodesDepartureSearchRange :: Maybe RequestRangeFull
  
instance Arbitrary RequestTimeMap where
  arbitrary = sized genRequestTimeMap

genRequestTimeMap :: Int -> Gen RequestTimeMap
genRequestTimeMap n =
  RequestTimeMap
    <$> arbitraryReducedMaybe n -- requestTimeMapDepartureSearches :: Maybe [RequestTimeMapDepartureSearch]
    <*> arbitraryReducedMaybe n -- requestTimeMapArrivalSearches :: Maybe [RequestTimeMapArrivalSearch]
    <*> arbitraryReducedMaybe n -- requestTimeMapUnions :: Maybe [RequestUnionOnIntersection]
    <*> arbitraryReducedMaybe n -- requestTimeMapIntersections :: Maybe [RequestUnionOnIntersection]
  
instance Arbitrary RequestTimeMapArrivalSearch where
  arbitrary = sized genRequestTimeMapArrivalSearch

genRequestTimeMapArrivalSearch :: Int -> Gen RequestTimeMapArrivalSearch
genRequestTimeMapArrivalSearch n =
  RequestTimeMapArrivalSearch
    <$> arbitrary -- requestTimeMapArrivalSearchId :: Text
    <*> arbitraryReduced n -- requestTimeMapArrivalSearchCoords :: Coords
    <*> arbitraryReduced n -- requestTimeMapArrivalSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeMapArrivalSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeMapArrivalSearchArrivalTime :: DateTime
    <*> arbitraryReducedMaybe n -- requestTimeMapArrivalSearchProperties :: Maybe [RequestTimeMapProperty]
    <*> arbitraryReducedMaybe n -- requestTimeMapArrivalSearchRange :: Maybe RequestRangeNoMaxResults
    <*> arbitraryReducedMaybe n -- requestTimeMapArrivalSearchLevelOfDetail :: Maybe RequestLevelOfDetail
  
instance Arbitrary RequestTimeMapDepartureSearch where
  arbitrary = sized genRequestTimeMapDepartureSearch

genRequestTimeMapDepartureSearch :: Int -> Gen RequestTimeMapDepartureSearch
genRequestTimeMapDepartureSearch n =
  RequestTimeMapDepartureSearch
    <$> arbitrary -- requestTimeMapDepartureSearchId :: Text
    <*> arbitraryReduced n -- requestTimeMapDepartureSearchCoords :: Coords
    <*> arbitraryReduced n -- requestTimeMapDepartureSearchTransportation :: RequestTransportation
    <*> arbitrary -- requestTimeMapDepartureSearchTravelTime :: Int
    <*> arbitraryReduced n -- requestTimeMapDepartureSearchDepartureTime :: DateTime
    <*> arbitraryReducedMaybe n -- requestTimeMapDepartureSearchProperties :: Maybe [RequestTimeMapProperty]
    <*> arbitraryReducedMaybe n -- requestTimeMapDepartureSearchRange :: Maybe RequestRangeNoMaxResults
    <*> arbitraryReducedMaybe n -- requestTimeMapDepartureSearchLevelOfDetail :: Maybe RequestLevelOfDetail
  
instance Arbitrary RequestTransportation where
  arbitrary = sized genRequestTransportation

genRequestTransportation :: Int -> Gen RequestTransportation
genRequestTransportation n =
  RequestTransportation
    <$> arbitrary -- requestTransportationType :: E'Type4
    <*> arbitraryReducedMaybe n -- requestTransportationDisableBorderCrossing :: Maybe Bool
    <*> arbitraryReducedMaybe n -- requestTransportationPtChangeDelay :: Maybe Int
    <*> arbitraryReducedMaybe n -- requestTransportationWalkingTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- requestTransportationDrivingTimeToStation :: Maybe Int
    <*> arbitraryReducedMaybe n -- requestTransportationCyclingTimeToStation :: Maybe Int
    <*> arbitraryReducedMaybe n -- requestTransportationParkingTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- requestTransportationBoardingTime :: Maybe Int
  
instance Arbitrary RequestTransportationFast where
  arbitrary = sized genRequestTransportationFast

genRequestTransportationFast :: Int -> Gen RequestTransportationFast
genRequestTransportationFast n =
  RequestTransportationFast
    <$> arbitrary -- requestTransportationFastType :: E'Type
  
instance Arbitrary RequestUnionOnIntersection where
  arbitrary = sized genRequestUnionOnIntersection

genRequestUnionOnIntersection :: Int -> Gen RequestUnionOnIntersection
genRequestUnionOnIntersection n =
  RequestUnionOnIntersection
    <$> arbitrary -- requestUnionOnIntersectionId :: Text
    <*> arbitrary -- requestUnionOnIntersectionSearchIds :: [Text]
  
instance Arbitrary ResponseBoundingBox where
  arbitrary = sized genResponseBoundingBox

genResponseBoundingBox :: Int -> Gen ResponseBoundingBox
genResponseBoundingBox n =
  ResponseBoundingBox
    <$> arbitraryReduced n -- responseBoundingBoxEnvelope :: ResponseBox
    <*> arbitraryReduced n -- responseBoundingBoxBoxes :: [ResponseBox]
  
instance Arbitrary ResponseBox where
  arbitrary = sized genResponseBox

genResponseBox :: Int -> Gen ResponseBox
genResponseBox n =
  ResponseBox
    <$> arbitrary -- responseBoxMinLat :: Double
    <*> arbitrary -- responseBoxMaxLat :: Double
    <*> arbitrary -- responseBoxMinLng :: Double
    <*> arbitrary -- responseBoxMaxLng :: Double
  
instance Arbitrary ResponseDistanceBreakdownItem where
  arbitrary = sized genResponseDistanceBreakdownItem

genResponseDistanceBreakdownItem :: Int -> Gen ResponseDistanceBreakdownItem
genResponseDistanceBreakdownItem n =
  ResponseDistanceBreakdownItem
    <$> arbitraryReduced n -- responseDistanceBreakdownItemMode :: ResponseTransportationMode
    <*> arbitrary -- responseDistanceBreakdownItemDistance :: Int
  
instance Arbitrary ResponseError where
  arbitrary = sized genResponseError

genResponseError :: Int -> Gen ResponseError
genResponseError n =
  ResponseError
    <$> arbitraryReducedMaybe n -- responseErrorHttpStatus :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseErrorErrorCode :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseErrorDescription :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseErrorDocumentationLink :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseErrorAdditionalInfo :: Maybe (Map.Map String [Text])
  
instance Arbitrary ResponseFareTicket where
  arbitrary = sized genResponseFareTicket

genResponseFareTicket :: Int -> Gen ResponseFareTicket
genResponseFareTicket n =
  ResponseFareTicket
    <$> arbitrary -- responseFareTicketType :: E'Type2
    <*> arbitrary -- responseFareTicketPrice :: Double
    <*> arbitrary -- responseFareTicketCurrency :: Text
  
instance Arbitrary ResponseFares where
  arbitrary = sized genResponseFares

genResponseFares :: Int -> Gen ResponseFares
genResponseFares n =
  ResponseFares
    <$> arbitraryReduced n -- responseFaresBreakdown :: [ResponseFaresBreakdownItem]
    <*> arbitraryReduced n -- responseFaresTicketsTotal :: [ResponseFareTicket]
  
instance Arbitrary ResponseFaresBreakdownItem where
  arbitrary = sized genResponseFaresBreakdownItem

genResponseFaresBreakdownItem :: Int -> Gen ResponseFaresBreakdownItem
genResponseFaresBreakdownItem n =
  ResponseFaresBreakdownItem
    <$> arbitraryReduced n -- responseFaresBreakdownItemModes :: [ResponseTransportationMode]
    <*> arbitrary -- responseFaresBreakdownItemRoutePartIds :: [Int]
    <*> arbitraryReduced n -- responseFaresBreakdownItemTickets :: [ResponseFareTicket]
  
instance Arbitrary ResponseFaresFast where
  arbitrary = sized genResponseFaresFast

genResponseFaresFast :: Int -> Gen ResponseFaresFast
genResponseFaresFast n =
  ResponseFaresFast
    <$> arbitraryReduced n -- responseFaresFastTicketsTotal :: [ResponseFareTicket]
  
instance Arbitrary ResponseGeocoding where
  arbitrary = sized genResponseGeocoding

genResponseGeocoding :: Int -> Gen ResponseGeocoding
genResponseGeocoding n =
  ResponseGeocoding
    <$> arbitrary -- responseGeocodingType :: Text
    <*> arbitraryReduced n -- responseGeocodingFeatures :: [ResponseGeocodingGeoJsonFeature]
  
instance Arbitrary ResponseGeocodingGeoJsonFeature where
  arbitrary = sized genResponseGeocodingGeoJsonFeature

genResponseGeocodingGeoJsonFeature :: Int -> Gen ResponseGeocodingGeoJsonFeature
genResponseGeocodingGeoJsonFeature n =
  ResponseGeocodingGeoJsonFeature
    <$> arbitrary -- responseGeocodingGeoJsonFeatureType :: Text
    <*> arbitraryReduced n -- responseGeocodingGeoJsonFeatureGeometry :: ResponseGeocodingGeometry
    <*> arbitraryReduced n -- responseGeocodingGeoJsonFeatureProperties :: ResponseGeocodingProperties
  
instance Arbitrary ResponseGeocodingGeometry where
  arbitrary = sized genResponseGeocodingGeometry

genResponseGeocodingGeometry :: Int -> Gen ResponseGeocodingGeometry
genResponseGeocodingGeometry n =
  ResponseGeocodingGeometry
    <$> arbitrary -- responseGeocodingGeometryType :: Text
    <*> arbitrary -- responseGeocodingGeometryCoordinates :: [Double]
  
instance Arbitrary ResponseGeocodingProperties where
  arbitrary = sized genResponseGeocodingProperties

genResponseGeocodingProperties :: Int -> Gen ResponseGeocodingProperties
genResponseGeocodingProperties n =
  ResponseGeocodingProperties
    <$> arbitrary -- responseGeocodingPropertiesName :: Text
    <*> arbitrary -- responseGeocodingPropertiesLabel :: Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesScore :: Maybe Double
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesHouseNumber :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesStreet :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesRegion :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesRegionCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesNeighbourhood :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesCounty :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesMacroregion :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesCity :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesCountry :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesCountryCode :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesContinent :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesPostcode :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseGeocodingPropertiesFeatures :: Maybe ResponseMapInfoFeatures
  
instance Arbitrary ResponseMapInfo where
  arbitrary = sized genResponseMapInfo

genResponseMapInfo :: Int -> Gen ResponseMapInfo
genResponseMapInfo n =
  ResponseMapInfo
    <$> arbitraryReduced n -- responseMapInfoMaps :: [ResponseMapInfoMap]
  
instance Arbitrary ResponseMapInfoFeatures where
  arbitrary = sized genResponseMapInfoFeatures

genResponseMapInfoFeatures :: Int -> Gen ResponseMapInfoFeatures
genResponseMapInfoFeatures n =
  ResponseMapInfoFeatures
    <$> arbitraryReducedMaybe n -- responseMapInfoFeaturesPublicTransport :: Maybe ResponseMapInfoFeaturesPublicTransport
    <*> arbitrary -- responseMapInfoFeaturesFares :: Bool
    <*> arbitrary -- responseMapInfoFeaturesPostcodes :: Bool
  
instance Arbitrary ResponseMapInfoFeaturesPublicTransport where
  arbitrary = sized genResponseMapInfoFeaturesPublicTransport

genResponseMapInfoFeaturesPublicTransport :: Int -> Gen ResponseMapInfoFeaturesPublicTransport
genResponseMapInfoFeaturesPublicTransport n =
  ResponseMapInfoFeaturesPublicTransport
    <$> arbitraryReduced n -- responseMapInfoFeaturesPublicTransportDateStart :: DateTime
    <*> arbitraryReduced n -- responseMapInfoFeaturesPublicTransportDateEnd :: DateTime
  
instance Arbitrary ResponseMapInfoMap where
  arbitrary = sized genResponseMapInfoMap

genResponseMapInfoMap :: Int -> Gen ResponseMapInfoMap
genResponseMapInfoMap n =
  ResponseMapInfoMap
    <$> arbitrary -- responseMapInfoMapName :: Text
    <*> arbitraryReduced n -- responseMapInfoMapFeatures :: ResponseMapInfoFeatures
  
instance Arbitrary ResponseRoute where
  arbitrary = sized genResponseRoute

genResponseRoute :: Int -> Gen ResponseRoute
genResponseRoute n =
  ResponseRoute
    <$> arbitraryReduced n -- responseRouteDepartureTime :: DateTime
    <*> arbitraryReduced n -- responseRouteArrivalTime :: DateTime
    <*> arbitraryReduced n -- responseRouteParts :: [ResponseRoutePart]
  
instance Arbitrary ResponseRoutePart where
  arbitrary = sized genResponseRoutePart

genResponseRoutePart :: Int -> Gen ResponseRoutePart
genResponseRoutePart n =
  ResponseRoutePart
    <$> arbitrary -- responseRoutePartId :: Text
    <*> arbitrary -- responseRoutePartType :: E'Type3
    <*> arbitraryReduced n -- responseRoutePartMode :: ResponseTransportationMode
    <*> arbitrary -- responseRoutePartDirections :: Text
    <*> arbitrary -- responseRoutePartDistance :: Int
    <*> arbitrary -- responseRoutePartTravelTime :: Int
    <*> arbitraryReduced n -- responseRoutePartCoords :: [Coords]
    <*> arbitraryReducedMaybe n -- responseRoutePartDirection :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartRoad :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartTurn :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartLine :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartDepartureStation :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartArrivalStation :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartDepartsAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartArrivesAt :: Maybe Text
    <*> arbitraryReducedMaybe n -- responseRoutePartNumStops :: Maybe Int
  
instance Arbitrary ResponseRoutes where
  arbitrary = sized genResponseRoutes

genResponseRoutes :: Int -> Gen ResponseRoutes
genResponseRoutes n =
  ResponseRoutes
    <$> arbitraryReduced n -- responseRoutesResults :: [ResponseRoutesResult]
  
instance Arbitrary ResponseRoutesLocation where
  arbitrary = sized genResponseRoutesLocation

genResponseRoutesLocation :: Int -> Gen ResponseRoutesLocation
genResponseRoutesLocation n =
  ResponseRoutesLocation
    <$> arbitrary -- responseRoutesLocationId :: Text
    <*> arbitraryReduced n -- responseRoutesLocationProperties :: [ResponseRoutesProperties]
  
instance Arbitrary ResponseRoutesProperties where
  arbitrary = sized genResponseRoutesProperties

genResponseRoutesProperties :: Int -> Gen ResponseRoutesProperties
genResponseRoutesProperties n =
  ResponseRoutesProperties
    <$> arbitraryReducedMaybe n -- responseRoutesPropertiesTravelTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseRoutesPropertiesDistance :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseRoutesPropertiesFares :: Maybe ResponseFares
    <*> arbitraryReducedMaybe n -- responseRoutesPropertiesRoute :: Maybe ResponseRoute
  
instance Arbitrary ResponseRoutesResult where
  arbitrary = sized genResponseRoutesResult

genResponseRoutesResult :: Int -> Gen ResponseRoutesResult
genResponseRoutesResult n =
  ResponseRoutesResult
    <$> arbitrary -- responseRoutesResultSearchId :: Text
    <*> arbitraryReduced n -- responseRoutesResultLocations :: [ResponseRoutesLocation]
    <*> arbitrary -- responseRoutesResultUnreachable :: [Text]
  
instance Arbitrary ResponseShape where
  arbitrary = sized genResponseShape

genResponseShape :: Int -> Gen ResponseShape
genResponseShape n =
  ResponseShape
    <$> arbitraryReduced n -- responseShapeShell :: [Coords]
    <*> arbitraryReduced n -- responseShapeHoles :: [[Coords]]
  
instance Arbitrary ResponseSupportedLocation where
  arbitrary = sized genResponseSupportedLocation

genResponseSupportedLocation :: Int -> Gen ResponseSupportedLocation
genResponseSupportedLocation n =
  ResponseSupportedLocation
    <$> arbitrary -- responseSupportedLocationId :: Text
    <*> arbitrary -- responseSupportedLocationMapName :: Text
  
instance Arbitrary ResponseSupportedLocations where
  arbitrary = sized genResponseSupportedLocations

genResponseSupportedLocations :: Int -> Gen ResponseSupportedLocations
genResponseSupportedLocations n =
  ResponseSupportedLocations
    <$> arbitraryReduced n -- responseSupportedLocationsLocations :: [ResponseSupportedLocation]
    <*> arbitrary -- responseSupportedLocationsUnsupportedLocations :: [Text]
  
instance Arbitrary ResponseTimeFilter where
  arbitrary = sized genResponseTimeFilter

genResponseTimeFilter :: Int -> Gen ResponseTimeFilter
genResponseTimeFilter n =
  ResponseTimeFilter
    <$> arbitraryReduced n -- responseTimeFilterResults :: [ResponseTimeFilterResult]
  
instance Arbitrary ResponseTimeFilterFast where
  arbitrary = sized genResponseTimeFilterFast

genResponseTimeFilterFast :: Int -> Gen ResponseTimeFilterFast
genResponseTimeFilterFast n =
  ResponseTimeFilterFast
    <$> arbitraryReduced n -- responseTimeFilterFastResults :: [ResponseTimeFilterFastResult]
  
instance Arbitrary ResponseTimeFilterFastLocation where
  arbitrary = sized genResponseTimeFilterFastLocation

genResponseTimeFilterFastLocation :: Int -> Gen ResponseTimeFilterFastLocation
genResponseTimeFilterFastLocation n =
  ResponseTimeFilterFastLocation
    <$> arbitrary -- responseTimeFilterFastLocationId :: Text
    <*> arbitraryReduced n -- responseTimeFilterFastLocationProperties :: [ResponseTimeFilterFastProperties]
  
instance Arbitrary ResponseTimeFilterFastProperties where
  arbitrary = sized genResponseTimeFilterFastProperties

genResponseTimeFilterFastProperties :: Int -> Gen ResponseTimeFilterFastProperties
genResponseTimeFilterFastProperties n =
  ResponseTimeFilterFastProperties
    <$> arbitraryReducedMaybe n -- responseTimeFilterFastPropertiesTravelTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseTimeFilterFastPropertiesFares :: Maybe ResponseFaresFast
  
instance Arbitrary ResponseTimeFilterFastResult where
  arbitrary = sized genResponseTimeFilterFastResult

genResponseTimeFilterFastResult :: Int -> Gen ResponseTimeFilterFastResult
genResponseTimeFilterFastResult n =
  ResponseTimeFilterFastResult
    <$> arbitrary -- responseTimeFilterFastResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeFilterFastResultLocations :: [ResponseTimeFilterFastLocation]
    <*> arbitrary -- responseTimeFilterFastResultUnreachable :: [Text]
  
instance Arbitrary ResponseTimeFilterLocation where
  arbitrary = sized genResponseTimeFilterLocation

genResponseTimeFilterLocation :: Int -> Gen ResponseTimeFilterLocation
genResponseTimeFilterLocation n =
  ResponseTimeFilterLocation
    <$> arbitrary -- responseTimeFilterLocationId :: Text
    <*> arbitraryReduced n -- responseTimeFilterLocationProperties :: [ResponseTimeFilterProperties]
  
instance Arbitrary ResponseTimeFilterPostcode where
  arbitrary = sized genResponseTimeFilterPostcode

genResponseTimeFilterPostcode :: Int -> Gen ResponseTimeFilterPostcode
genResponseTimeFilterPostcode n =
  ResponseTimeFilterPostcode
    <$> arbitrary -- responseTimeFilterPostcodeCode :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodeProperties :: [ResponseTimeFilterPostcodesProperties]
  
instance Arbitrary ResponseTimeFilterPostcodeDistrict where
  arbitrary = sized genResponseTimeFilterPostcodeDistrict

genResponseTimeFilterPostcodeDistrict :: Int -> Gen ResponseTimeFilterPostcodeDistrict
genResponseTimeFilterPostcodeDistrict n =
  ResponseTimeFilterPostcodeDistrict
    <$> arbitrary -- responseTimeFilterPostcodeDistrictCode :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodeDistrictProperties :: ResponseTimeFilterPostcodeDistrictProperties
  
instance Arbitrary ResponseTimeFilterPostcodeDistrictProperties where
  arbitrary = sized genResponseTimeFilterPostcodeDistrictProperties

genResponseTimeFilterPostcodeDistrictProperties :: Int -> Gen ResponseTimeFilterPostcodeDistrictProperties
genResponseTimeFilterPostcodeDistrictProperties n =
  ResponseTimeFilterPostcodeDistrictProperties
    <$> arbitraryReducedMaybe n -- responseTimeFilterPostcodeDistrictPropertiesTravelTimeReachable :: Maybe ResponseTravelTimeStatistics
    <*> arbitraryReducedMaybe n -- responseTimeFilterPostcodeDistrictPropertiesTravelTimeAll :: Maybe ResponseTravelTimeStatistics
    <*> arbitraryReducedMaybe n -- responseTimeFilterPostcodeDistrictPropertiesCoverage :: Maybe Double
  
instance Arbitrary ResponseTimeFilterPostcodeDistricts where
  arbitrary = sized genResponseTimeFilterPostcodeDistricts

genResponseTimeFilterPostcodeDistricts :: Int -> Gen ResponseTimeFilterPostcodeDistricts
genResponseTimeFilterPostcodeDistricts n =
  ResponseTimeFilterPostcodeDistricts
    <$> arbitraryReduced n -- responseTimeFilterPostcodeDistrictsResults :: [ResponseTimeFilterPostcodeDistrictsResult]
  
instance Arbitrary ResponseTimeFilterPostcodeDistrictsResult where
  arbitrary = sized genResponseTimeFilterPostcodeDistrictsResult

genResponseTimeFilterPostcodeDistrictsResult :: Int -> Gen ResponseTimeFilterPostcodeDistrictsResult
genResponseTimeFilterPostcodeDistrictsResult n =
  ResponseTimeFilterPostcodeDistrictsResult
    <$> arbitrary -- responseTimeFilterPostcodeDistrictsResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodeDistrictsResultDistricts :: [ResponseTimeFilterPostcodeDistrict]
  
instance Arbitrary ResponseTimeFilterPostcodeSector where
  arbitrary = sized genResponseTimeFilterPostcodeSector

genResponseTimeFilterPostcodeSector :: Int -> Gen ResponseTimeFilterPostcodeSector
genResponseTimeFilterPostcodeSector n =
  ResponseTimeFilterPostcodeSector
    <$> arbitrary -- responseTimeFilterPostcodeSectorCode :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodeSectorProperties :: ResponseTimeFilterPostcodeSectorProperties
  
instance Arbitrary ResponseTimeFilterPostcodeSectorProperties where
  arbitrary = sized genResponseTimeFilterPostcodeSectorProperties

genResponseTimeFilterPostcodeSectorProperties :: Int -> Gen ResponseTimeFilterPostcodeSectorProperties
genResponseTimeFilterPostcodeSectorProperties n =
  ResponseTimeFilterPostcodeSectorProperties
    <$> arbitraryReducedMaybe n -- responseTimeFilterPostcodeSectorPropertiesTravelTimeReachable :: Maybe ResponseTravelTimeStatistics
    <*> arbitraryReducedMaybe n -- responseTimeFilterPostcodeSectorPropertiesTravelTimeAll :: Maybe ResponseTravelTimeStatistics
    <*> arbitraryReducedMaybe n -- responseTimeFilterPostcodeSectorPropertiesCoverage :: Maybe Double
  
instance Arbitrary ResponseTimeFilterPostcodeSectors where
  arbitrary = sized genResponseTimeFilterPostcodeSectors

genResponseTimeFilterPostcodeSectors :: Int -> Gen ResponseTimeFilterPostcodeSectors
genResponseTimeFilterPostcodeSectors n =
  ResponseTimeFilterPostcodeSectors
    <$> arbitraryReduced n -- responseTimeFilterPostcodeSectorsResults :: [ResponseTimeFilterPostcodeSectorsResult]
  
instance Arbitrary ResponseTimeFilterPostcodeSectorsResult where
  arbitrary = sized genResponseTimeFilterPostcodeSectorsResult

genResponseTimeFilterPostcodeSectorsResult :: Int -> Gen ResponseTimeFilterPostcodeSectorsResult
genResponseTimeFilterPostcodeSectorsResult n =
  ResponseTimeFilterPostcodeSectorsResult
    <$> arbitrary -- responseTimeFilterPostcodeSectorsResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodeSectorsResultSectors :: [ResponseTimeFilterPostcodeSector]
  
instance Arbitrary ResponseTimeFilterPostcodes where
  arbitrary = sized genResponseTimeFilterPostcodes

genResponseTimeFilterPostcodes :: Int -> Gen ResponseTimeFilterPostcodes
genResponseTimeFilterPostcodes n =
  ResponseTimeFilterPostcodes
    <$> arbitraryReduced n -- responseTimeFilterPostcodesResults :: [ResponseTimeFilterPostcodesResult]
  
instance Arbitrary ResponseTimeFilterPostcodesProperties where
  arbitrary = sized genResponseTimeFilterPostcodesProperties

genResponseTimeFilterPostcodesProperties :: Int -> Gen ResponseTimeFilterPostcodesProperties
genResponseTimeFilterPostcodesProperties n =
  ResponseTimeFilterPostcodesProperties
    <$> arbitraryReducedMaybe n -- responseTimeFilterPostcodesPropertiesTravelTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseTimeFilterPostcodesPropertiesDistance :: Maybe Int
  
instance Arbitrary ResponseTimeFilterPostcodesResult where
  arbitrary = sized genResponseTimeFilterPostcodesResult

genResponseTimeFilterPostcodesResult :: Int -> Gen ResponseTimeFilterPostcodesResult
genResponseTimeFilterPostcodesResult n =
  ResponseTimeFilterPostcodesResult
    <$> arbitrary -- responseTimeFilterPostcodesResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeFilterPostcodesResultPostcodes :: [ResponseTimeFilterPostcode]
  
instance Arbitrary ResponseTimeFilterProperties where
  arbitrary = sized genResponseTimeFilterProperties

genResponseTimeFilterProperties :: Int -> Gen ResponseTimeFilterProperties
genResponseTimeFilterProperties n =
  ResponseTimeFilterProperties
    <$> arbitraryReducedMaybe n -- responseTimeFilterPropertiesTravelTime :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseTimeFilterPropertiesDistance :: Maybe Int
    <*> arbitraryReducedMaybe n -- responseTimeFilterPropertiesDistanceBreakdown :: Maybe [ResponseDistanceBreakdownItem]
    <*> arbitraryReducedMaybe n -- responseTimeFilterPropertiesFares :: Maybe ResponseFares
    <*> arbitraryReducedMaybe n -- responseTimeFilterPropertiesRoute :: Maybe ResponseRoute
  
instance Arbitrary ResponseTimeFilterResult where
  arbitrary = sized genResponseTimeFilterResult

genResponseTimeFilterResult :: Int -> Gen ResponseTimeFilterResult
genResponseTimeFilterResult n =
  ResponseTimeFilterResult
    <$> arbitrary -- responseTimeFilterResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeFilterResultLocations :: [ResponseTimeFilterLocation]
    <*> arbitrary -- responseTimeFilterResultUnreachable :: [Text]
  
instance Arbitrary ResponseTimeMap where
  arbitrary = sized genResponseTimeMap

genResponseTimeMap :: Int -> Gen ResponseTimeMap
genResponseTimeMap n =
  ResponseTimeMap
    <$> arbitraryReduced n -- responseTimeMapResults :: [ResponseTimeMapResult]
  
instance Arbitrary ResponseTimeMapBoundingBoxes where
  arbitrary = sized genResponseTimeMapBoundingBoxes

genResponseTimeMapBoundingBoxes :: Int -> Gen ResponseTimeMapBoundingBoxes
genResponseTimeMapBoundingBoxes n =
  ResponseTimeMapBoundingBoxes
    <$> arbitraryReduced n -- responseTimeMapBoundingBoxesResults :: [ResponseTimeMapBoundingBoxesResult]
  
instance Arbitrary ResponseTimeMapBoundingBoxesResult where
  arbitrary = sized genResponseTimeMapBoundingBoxesResult

genResponseTimeMapBoundingBoxesResult :: Int -> Gen ResponseTimeMapBoundingBoxesResult
genResponseTimeMapBoundingBoxesResult n =
  ResponseTimeMapBoundingBoxesResult
    <$> arbitrary -- responseTimeMapBoundingBoxesResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeMapBoundingBoxesResultBoundingBoxes :: [ResponseBoundingBox]
    <*> arbitraryReduced n -- responseTimeMapBoundingBoxesResultProperties :: ResponseTimeMapProperties
  
instance Arbitrary ResponseTimeMapProperties where
  arbitrary = sized genResponseTimeMapProperties

genResponseTimeMapProperties :: Int -> Gen ResponseTimeMapProperties
genResponseTimeMapProperties n =
  ResponseTimeMapProperties
    <$> arbitraryReducedMaybe n -- responseTimeMapPropertiesIsOnlyWalking :: Maybe Bool
  
instance Arbitrary ResponseTimeMapResult where
  arbitrary = sized genResponseTimeMapResult

genResponseTimeMapResult :: Int -> Gen ResponseTimeMapResult
genResponseTimeMapResult n =
  ResponseTimeMapResult
    <$> arbitrary -- responseTimeMapResultSearchId :: Text
    <*> arbitraryReduced n -- responseTimeMapResultShapes :: [ResponseShape]
    <*> arbitraryReduced n -- responseTimeMapResultProperties :: ResponseTimeMapProperties
  
instance Arbitrary ResponseTimeMapWkt where
  arbitrary = sized genResponseTimeMapWkt

genResponseTimeMapWkt :: Int -> Gen ResponseTimeMapWkt
genResponseTimeMapWkt n =
  ResponseTimeMapWkt
    <$> arbitraryReduced n -- responseTimeMapWktResults :: [ResponseTimeMapWktResult]
  
instance Arbitrary ResponseTimeMapWktResult where
  arbitrary = sized genResponseTimeMapWktResult

genResponseTimeMapWktResult :: Int -> Gen ResponseTimeMapWktResult
genResponseTimeMapWktResult n =
  ResponseTimeMapWktResult
    <$> arbitrary -- responseTimeMapWktResultSearchId :: Text
    <*> arbitrary -- responseTimeMapWktResultShape :: Text
    <*> arbitraryReduced n -- responseTimeMapWktResultProperties :: ResponseTimeMapProperties
  
instance Arbitrary ResponseTravelTimeStatistics where
  arbitrary = sized genResponseTravelTimeStatistics

genResponseTravelTimeStatistics :: Int -> Gen ResponseTravelTimeStatistics
genResponseTravelTimeStatistics n =
  ResponseTravelTimeStatistics
    <$> arbitrary -- responseTravelTimeStatisticsMin :: Int
    <*> arbitrary -- responseTravelTimeStatisticsMax :: Int
    <*> arbitrary -- responseTravelTimeStatisticsMean :: Int
    <*> arbitrary -- responseTravelTimeStatisticsMedian :: Int
  



instance Arbitrary E'Level where
  arbitrary = arbitraryBoundedEnum

instance Arbitrary E'ScaleType where
  arbitrary = arbitraryBoundedEnum

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

