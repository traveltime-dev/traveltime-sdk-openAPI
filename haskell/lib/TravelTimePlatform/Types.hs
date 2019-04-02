{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module TravelTimePlatform.Types (
  Coords (..),
  RequestArrivalTimePeriod (..),
  RequestLocation (..),
  RequestRangeFull (..),
  RequestRangeNoMaxResults (..),
  RequestRoutes (..),
  RequestRoutesArrivalSearch (..),
  RequestRoutesDepartureSearch (..),
  RequestRoutesProperty (..),
  RequestSupportedLocations (..),
  RequestTimeFilter (..),
  RequestTimeFilterArrivalSearch (..),
  RequestTimeFilterDepartureSearch (..),
  RequestTimeFilterFast (..),
  RequestTimeFilterFastArrivalManyToOneSearch (..),
  RequestTimeFilterFastArrivalOneToManySearch (..),
  RequestTimeFilterFastArrivalSearches (..),
  RequestTimeFilterFastProperty (..),
  RequestTimeFilterPostcodeDistricts (..),
  RequestTimeFilterPostcodeDistrictsArrivalSearch (..),
  RequestTimeFilterPostcodeDistrictsDepartureSearch (..),
  RequestTimeFilterPostcodeDistrictsProperty (..),
  RequestTimeFilterPostcodeSectors (..),
  RequestTimeFilterPostcodeSectorsArrivalSearch (..),
  RequestTimeFilterPostcodeSectorsDepartureSearch (..),
  RequestTimeFilterPostcodeSectorsProperty (..),
  RequestTimeFilterPostcodes (..),
  RequestTimeFilterPostcodesArrivalSearch (..),
  RequestTimeFilterPostcodesDepartureSearch (..),
  RequestTimeFilterPostcodesProperty (..),
  RequestTimeFilterProperty (..),
  RequestTimeMap (..),
  RequestTimeMapArrivalSearch (..),
  RequestTimeMapDepartureSearch (..),
  RequestTimeMapProperty (..),
  RequestTransportation (..),
  RequestTransportationFast (..),
  RequestUnionOnIntersection (..),
  ResponseBoundingBox (..),
  ResponseBox (..),
  ResponseDistanceBreakdownItem (..),
  ResponseError (..),
  ResponseFareTicket (..),
  ResponseFares (..),
  ResponseFaresBreakdownItem (..),
  ResponseFaresFast (..),
  ResponseGeocoding (..),
  ResponseGeocodingGeoJsonFeature (..),
  ResponseGeocodingGeometry (..),
  ResponseGeocodingProperties (..),
  ResponseMapInfo (..),
  ResponseMapInfoFeatures (..),
  ResponseMapInfoFeaturesPublicTransport (..),
  ResponseMapInfoMap (..),
  ResponseRoute (..),
  ResponseRoutePart (..),
  ResponseRoutes (..),
  ResponseRoutesLocation (..),
  ResponseRoutesProperties (..),
  ResponseRoutesResult (..),
  ResponseShape (..),
  ResponseSupportedLocation (..),
  ResponseSupportedLocations (..),
  ResponseTimeFilter (..),
  ResponseTimeFilterFast (..),
  ResponseTimeFilterFastLocation (..),
  ResponseTimeFilterFastProperties (..),
  ResponseTimeFilterFastResult (..),
  ResponseTimeFilterLocation (..),
  ResponseTimeFilterPostcode (..),
  ResponseTimeFilterPostcodeDistrict (..),
  ResponseTimeFilterPostcodeDistrictProperties (..),
  ResponseTimeFilterPostcodeDistricts (..),
  ResponseTimeFilterPostcodeDistrictsResult (..),
  ResponseTimeFilterPostcodeSector (..),
  ResponseTimeFilterPostcodeSectorProperties (..),
  ResponseTimeFilterPostcodeSectors (..),
  ResponseTimeFilterPostcodeSectorsResult (..),
  ResponseTimeFilterPostcodes (..),
  ResponseTimeFilterPostcodesProperties (..),
  ResponseTimeFilterPostcodesResult (..),
  ResponseTimeFilterProperties (..),
  ResponseTimeFilterResult (..),
  ResponseTimeMap (..),
  ResponseTimeMapBoundingBoxes (..),
  ResponseTimeMapBoundingBoxesResult (..),
  ResponseTimeMapProperties (..),
  ResponseTimeMapResult (..),
  ResponseTimeMapWkt (..),
  ResponseTimeMapWktResult (..),
  ResponseTransportationMode (..),
  ResponseTravelTimeStatistics (..),
  ) where

import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | 
data Coords = Coords
  { coordsLat :: Double -- ^ 
  , coordsLng :: Double -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Coords where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "coords")
instance ToJSON Coords where
  toJSON = genericToJSON (removeFieldLabelPrefix False "coords")

-- | 
data RequestArrivalTimePeriod = RequestArrivalTimePeriod
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestArrivalTimePeriod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestArrivalTimePeriod")
instance ToJSON RequestArrivalTimePeriod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestArrivalTimePeriod")

-- | 
data RequestLocation = RequestLocation
  { requestLocationId :: Text -- ^ 
  , requestLocationCoords :: Coords -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestLocation")
instance ToJSON RequestLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestLocation")

-- | 
data RequestRangeFull = RequestRangeFull
  { requestRangeFullEnabled :: Bool -- ^ 
  , requestRangeFullMaxUnderscoreresults :: Int -- ^ 
  , requestRangeFullWidth :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRangeFull where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRangeFull")
instance ToJSON RequestRangeFull where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRangeFull")

-- | 
data RequestRangeNoMaxResults = RequestRangeNoMaxResults
  { requestRangeNoMaxResultsEnabled :: Bool -- ^ 
  , requestRangeNoMaxResultsWidth :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRangeNoMaxResults where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRangeNoMaxResults")
instance ToJSON RequestRangeNoMaxResults where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRangeNoMaxResults")

-- | 
data RequestRoutes = RequestRoutes
  { requestRoutesLocations :: [RequestLocation] -- ^ 
  , requestRoutesDepartureUnderscoresearches :: [RequestRoutesDepartureSearch] -- ^ 
  , requestRoutesArrivalUnderscoresearches :: [RequestRoutesArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRoutes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutes")
instance ToJSON RequestRoutes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutes")

-- | 
data RequestRoutesArrivalSearch = RequestRoutesArrivalSearch
  { requestRoutesArrivalSearchId :: Text -- ^ 
  , requestRoutesArrivalSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestRoutesArrivalSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestRoutesArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestRoutesArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestRoutesArrivalSearchProperties :: [RequestRoutesProperty] -- ^ 
  , requestRoutesArrivalSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRoutesArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesArrivalSearch")
instance ToJSON RequestRoutesArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesArrivalSearch")

-- | 
data RequestRoutesDepartureSearch = RequestRoutesDepartureSearch
  { requestRoutesDepartureSearchId :: Text -- ^ 
  , requestRoutesDepartureSearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestRoutesDepartureSearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestRoutesDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestRoutesDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestRoutesDepartureSearchProperties :: [RequestRoutesProperty] -- ^ 
  , requestRoutesDepartureSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRoutesDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesDepartureSearch")
instance ToJSON RequestRoutesDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesDepartureSearch")

-- | 
data RequestRoutesProperty = RequestRoutesProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestRoutesProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesProperty")
instance ToJSON RequestRoutesProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesProperty")

-- | 
data RequestSupportedLocations = RequestSupportedLocations
  { requestSupportedLocationsLocations :: [RequestLocation] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestSupportedLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestSupportedLocations")
instance ToJSON RequestSupportedLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestSupportedLocations")

-- | 
data RequestTimeFilter = RequestTimeFilter
  { requestTimeFilterLocations :: [RequestLocation] -- ^ 
  , requestTimeFilterDepartureUnderscoresearches :: [RequestTimeFilterDepartureSearch] -- ^ 
  , requestTimeFilterArrivalUnderscoresearches :: [RequestTimeFilterArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilter")
instance ToJSON RequestTimeFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilter")

-- | 
data RequestTimeFilterArrivalSearch = RequestTimeFilterArrivalSearch
  { requestTimeFilterArrivalSearchId :: Text -- ^ 
  , requestTimeFilterArrivalSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterArrivalSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestTimeFilterArrivalSearchProperties :: [RequestTimeFilterProperty] -- ^ 
  , requestTimeFilterArrivalSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterArrivalSearch")
instance ToJSON RequestTimeFilterArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterArrivalSearch")

-- | 
data RequestTimeFilterDepartureSearch = RequestTimeFilterDepartureSearch
  { requestTimeFilterDepartureSearchId :: Text -- ^ 
  , requestTimeFilterDepartureSearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterDepartureSearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestTimeFilterDepartureSearchProperties :: [RequestTimeFilterProperty] -- ^ 
  , requestTimeFilterDepartureSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterDepartureSearch")
instance ToJSON RequestTimeFilterDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterDepartureSearch")

-- | 
data RequestTimeFilterFast = RequestTimeFilterFast
  { requestTimeFilterFastLocations :: [RequestLocation] -- ^ 
  , requestTimeFilterFastArrivalUnderscoresearches :: RequestTimeFilterFastArrivalSearches -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFast")
instance ToJSON RequestTimeFilterFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFast")

-- | 
data RequestTimeFilterFastArrivalManyToOneSearch = RequestTimeFilterFastArrivalManyToOneSearch
  { requestTimeFilterFastArrivalManyToOneSearchId :: Text -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchTransportation :: RequestTransportationFast -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchArrivalUnderscoretimeUnderscoreperiod :: RequestArrivalTimePeriod -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchProperties :: [RequestTimeFilterFastProperty] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterFastArrivalManyToOneSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalManyToOneSearch")
instance ToJSON RequestTimeFilterFastArrivalManyToOneSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalManyToOneSearch")

-- | 
data RequestTimeFilterFastArrivalOneToManySearch = RequestTimeFilterFastArrivalOneToManySearch
  { requestTimeFilterFastArrivalOneToManySearchId :: Text -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchTransportation :: RequestTransportationFast -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchArrivalUnderscoretimeUnderscoreperiod :: RequestArrivalTimePeriod -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchProperties :: [RequestTimeFilterFastProperty] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterFastArrivalOneToManySearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalOneToManySearch")
instance ToJSON RequestTimeFilterFastArrivalOneToManySearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalOneToManySearch")

-- | 
data RequestTimeFilterFastArrivalSearches = RequestTimeFilterFastArrivalSearches
  { requestTimeFilterFastArrivalSearchesManyUnderscoretoUnderscoreone :: [RequestTimeFilterFastArrivalManyToOneSearch] -- ^ 
  , requestTimeFilterFastArrivalSearchesOneUnderscoretoUnderscoremany :: [RequestTimeFilterFastArrivalOneToManySearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterFastArrivalSearches where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalSearches")
instance ToJSON RequestTimeFilterFastArrivalSearches where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalSearches")

-- | 
data RequestTimeFilterFastProperty = RequestTimeFilterFastProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterFastProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastProperty")
instance ToJSON RequestTimeFilterFastProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastProperty")

-- | 
data RequestTimeFilterPostcodeDistricts = RequestTimeFilterPostcodeDistricts
  { requestTimeFilterPostcodeDistrictsDepartureUnderscoresearches :: [RequestTimeFilterPostcodeDistrictsDepartureSearch] -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalUnderscoresearches :: [RequestTimeFilterPostcodeDistrictsArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeDistricts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistricts")
instance ToJSON RequestTimeFilterPostcodeDistricts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistricts")

-- | 
data RequestTimeFilterPostcodeDistrictsArrivalSearch = RequestTimeFilterPostcodeDistrictsArrivalSearch
  { requestTimeFilterPostcodeDistrictsArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty] -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeDistrictsArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsArrivalSearch")
instance ToJSON RequestTimeFilterPostcodeDistrictsArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsArrivalSearch")

-- | 
data RequestTimeFilterPostcodeDistrictsDepartureSearch = RequestTimeFilterPostcodeDistrictsDepartureSearch
  { requestTimeFilterPostcodeDistrictsDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty] -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeDistrictsDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsDepartureSearch")
instance ToJSON RequestTimeFilterPostcodeDistrictsDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsDepartureSearch")

-- | 
data RequestTimeFilterPostcodeDistrictsProperty = RequestTimeFilterPostcodeDistrictsProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeDistrictsProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsProperty")
instance ToJSON RequestTimeFilterPostcodeDistrictsProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsProperty")

-- | 
data RequestTimeFilterPostcodeSectors = RequestTimeFilterPostcodeSectors
  { requestTimeFilterPostcodeSectorsDepartureUnderscoresearches :: [RequestTimeFilterPostcodeSectorsDepartureSearch] -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalUnderscoresearches :: [RequestTimeFilterPostcodeSectorsArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeSectors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectors")
instance ToJSON RequestTimeFilterPostcodeSectors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectors")

-- | 
data RequestTimeFilterPostcodeSectorsArrivalSearch = RequestTimeFilterPostcodeSectorsArrivalSearch
  { requestTimeFilterPostcodeSectorsArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty] -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeSectorsArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsArrivalSearch")
instance ToJSON RequestTimeFilterPostcodeSectorsArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsArrivalSearch")

-- | 
data RequestTimeFilterPostcodeSectorsDepartureSearch = RequestTimeFilterPostcodeSectorsDepartureSearch
  { requestTimeFilterPostcodeSectorsDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty] -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeSectorsDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsDepartureSearch")
instance ToJSON RequestTimeFilterPostcodeSectorsDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsDepartureSearch")

-- | 
data RequestTimeFilterPostcodeSectorsProperty = RequestTimeFilterPostcodeSectorsProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodeSectorsProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsProperty")
instance ToJSON RequestTimeFilterPostcodeSectorsProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsProperty")

-- | 
data RequestTimeFilterPostcodes = RequestTimeFilterPostcodes
  { requestTimeFilterPostcodesDepartureUnderscoresearches :: [RequestTimeFilterPostcodesDepartureSearch] -- ^ 
  , requestTimeFilterPostcodesArrivalUnderscoresearches :: [RequestTimeFilterPostcodesArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodes")
instance ToJSON RequestTimeFilterPostcodes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodes")

-- | 
data RequestTimeFilterPostcodesArrivalSearch = RequestTimeFilterPostcodesArrivalSearch
  { requestTimeFilterPostcodesArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodesArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodesArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodesArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodesArrivalSearchProperties :: [RequestTimeFilterPostcodesProperty] -- ^ 
  , requestTimeFilterPostcodesArrivalSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodesArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesArrivalSearch")
instance ToJSON RequestTimeFilterPostcodesArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesArrivalSearch")

-- | 
data RequestTimeFilterPostcodesDepartureSearch = RequestTimeFilterPostcodesDepartureSearch
  { requestTimeFilterPostcodesDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodesDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodesDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodesDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestTimeFilterPostcodesDepartureSearchProperties :: [RequestTimeFilterPostcodesProperty] -- ^ 
  , requestTimeFilterPostcodesDepartureSearchRange :: RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodesDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesDepartureSearch")
instance ToJSON RequestTimeFilterPostcodesDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesDepartureSearch")

-- | 
data RequestTimeFilterPostcodesProperty = RequestTimeFilterPostcodesProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterPostcodesProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesProperty")
instance ToJSON RequestTimeFilterPostcodesProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesProperty")

-- | 
data RequestTimeFilterProperty = RequestTimeFilterProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeFilterProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterProperty")
instance ToJSON RequestTimeFilterProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterProperty")

-- | 
data RequestTimeMap = RequestTimeMap
  { requestTimeMapDepartureUnderscoresearches :: [RequestTimeMapDepartureSearch] -- ^ 
  , requestTimeMapArrivalUnderscoresearches :: [RequestTimeMapArrivalSearch] -- ^ 
  , requestTimeMapUnions :: [RequestUnionOnIntersection] -- ^ 
  , requestTimeMapIntersections :: [RequestUnionOnIntersection] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMap")
instance ToJSON RequestTimeMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMap")

-- | 
data RequestTimeMapArrivalSearch = RequestTimeMapArrivalSearch
  { requestTimeMapArrivalSearchId :: Text -- ^ 
  , requestTimeMapArrivalSearchCoords :: Coords -- ^ 
  , requestTimeMapArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeMapArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeMapArrivalSearchArrivalUnderscoretime :: Integer -- ^ 
  , requestTimeMapArrivalSearchProperties :: [RequestTimeMapProperty] -- ^ 
  , requestTimeMapArrivalSearchRange :: RequestRangeNoMaxResults -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeMapArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapArrivalSearch")
instance ToJSON RequestTimeMapArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapArrivalSearch")

-- | 
data RequestTimeMapDepartureSearch = RequestTimeMapDepartureSearch
  { requestTimeMapDepartureSearchId :: Text -- ^ 
  , requestTimeMapDepartureSearchCoords :: Coords -- ^ 
  , requestTimeMapDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeMapDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeMapDepartureSearchDepartureUnderscoretime :: Integer -- ^ 
  , requestTimeMapDepartureSearchProperties :: [RequestTimeMapProperty] -- ^ 
  , requestTimeMapDepartureSearchRange :: RequestRangeNoMaxResults -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeMapDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapDepartureSearch")
instance ToJSON RequestTimeMapDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapDepartureSearch")

-- | 
data RequestTimeMapProperty = RequestTimeMapProperty
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTimeMapProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapProperty")
instance ToJSON RequestTimeMapProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapProperty")

-- | 
data RequestTransportation = RequestTransportation
  { requestTransportationType :: Text -- ^ 
  , requestTransportationPtUnderscorechangeUnderscoredelay :: Int -- ^ 
  , requestTransportationWalkingUnderscoretime :: Int -- ^ 
  , requestTransportationDrivingUnderscoretimeUnderscoretoUnderscorestation :: Int -- ^ 
  , requestTransportationParkingUnderscoretime :: Int -- ^ 
  , requestTransportationBoardingUnderscoretime :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTransportation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTransportation")
instance ToJSON RequestTransportation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTransportation")

-- | 
data RequestTransportationFast = RequestTransportationFast
  { requestTransportationFastType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestTransportationFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTransportationFast")
instance ToJSON RequestTransportationFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTransportationFast")

-- | 
data RequestUnionOnIntersection = RequestUnionOnIntersection
  { requestUnionOnIntersectionId :: Text -- ^ 
  , requestUnionOnIntersectionSearchUnderscoreids :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON RequestUnionOnIntersection where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestUnionOnIntersection")
instance ToJSON RequestUnionOnIntersection where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestUnionOnIntersection")

-- | 
data ResponseBoundingBox = ResponseBoundingBox
  { responseBoundingBoxEnvelope :: ResponseBox -- ^ 
  , responseBoundingBoxBoxes :: [ResponseBox] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseBoundingBox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseBoundingBox")
instance ToJSON ResponseBoundingBox where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseBoundingBox")

-- | 
data ResponseBox = ResponseBox
  { responseBoxMinUnderscorelat :: Double -- ^ 
  , responseBoxMaxUnderscorelat :: Double -- ^ 
  , responseBoxMinUnderscorelng :: Double -- ^ 
  , responseBoxMaxUnderscorelng :: Double -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseBox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseBox")
instance ToJSON ResponseBox where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseBox")

-- | 
data ResponseDistanceBreakdownItem = ResponseDistanceBreakdownItem
  { responseDistanceBreakdownItemMode :: ResponseTransportationMode -- ^ 
  , responseDistanceBreakdownItemDistance :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseDistanceBreakdownItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseDistanceBreakdownItem")
instance ToJSON ResponseDistanceBreakdownItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseDistanceBreakdownItem")

-- | 
data ResponseError = ResponseError
  { responseErrorHttpUnderscorestatus :: Int -- ^ 
  , responseErrorErrorUnderscorecode :: Int -- ^ 
  , responseErrorDescription :: Text -- ^ 
  , responseErrorDocumentationUnderscorelink :: Text -- ^ 
  , responseErrorAdditionalUnderscoreinfo :: Map.Map String [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseError where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseError")
instance ToJSON ResponseError where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseError")

-- | 
data ResponseFareTicket = ResponseFareTicket
  { responseFareTicketType :: Text -- ^ 
  , responseFareTicketPrice :: Double -- ^ 
  , responseFareTicketCurrency :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseFareTicket where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFareTicket")
instance ToJSON ResponseFareTicket where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFareTicket")

-- | 
data ResponseFares = ResponseFares
  { responseFaresBreakdown :: [ResponseFaresBreakdownItem] -- ^ 
  , responseFaresTicketsUnderscoretotal :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseFares where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFares")
instance ToJSON ResponseFares where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFares")

-- | 
data ResponseFaresBreakdownItem = ResponseFaresBreakdownItem
  { responseFaresBreakdownItemModes :: [ResponseTransportationMode] -- ^ 
  , responseFaresBreakdownItemRouteUnderscorepartUnderscoreids :: [Int] -- ^ 
  , responseFaresBreakdownItemTickets :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseFaresBreakdownItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFaresBreakdownItem")
instance ToJSON ResponseFaresBreakdownItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFaresBreakdownItem")

-- | 
data ResponseFaresFast = ResponseFaresFast
  { responseFaresFastTicketsUnderscoretotal :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseFaresFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFaresFast")
instance ToJSON ResponseFaresFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFaresFast")

-- | 
data ResponseGeocoding = ResponseGeocoding
  { responseGeocodingType :: Text -- ^ 
  , responseGeocodingFeatures :: [ResponseGeocodingGeoJsonFeature] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseGeocoding where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocoding")
instance ToJSON ResponseGeocoding where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocoding")

-- | 
data ResponseGeocodingGeoJsonFeature = ResponseGeocodingGeoJsonFeature
  { responseGeocodingGeoJsonFeatureType :: Text -- ^ 
  , responseGeocodingGeoJsonFeatureGeometry :: ResponseGeocodingGeometry -- ^ 
  , responseGeocodingGeoJsonFeatureProperties :: ResponseGeocodingProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseGeocodingGeoJsonFeature where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingGeoJsonFeature")
instance ToJSON ResponseGeocodingGeoJsonFeature where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingGeoJsonFeature")

-- | 
data ResponseGeocodingGeometry = ResponseGeocodingGeometry
  { responseGeocodingGeometryType :: Text -- ^ 
  , responseGeocodingGeometryCoordinates :: [Double] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseGeocodingGeometry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingGeometry")
instance ToJSON ResponseGeocodingGeometry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingGeometry")

-- | 
data ResponseGeocodingProperties = ResponseGeocodingProperties
  { responseGeocodingPropertiesName :: Text -- ^ 
  , responseGeocodingPropertiesLabel :: Text -- ^ 
  , responseGeocodingPropertiesScore :: Double -- ^ 
  , responseGeocodingPropertiesHouseUnderscorenumber :: Text -- ^ 
  , responseGeocodingPropertiesStreet :: Text -- ^ 
  , responseGeocodingPropertiesRegion :: Text -- ^ 
  , responseGeocodingPropertiesRegionUnderscorecode :: Text -- ^ 
  , responseGeocodingPropertiesNeighbourhood :: Text -- ^ 
  , responseGeocodingPropertiesCounty :: Text -- ^ 
  , responseGeocodingPropertiesMacroregion :: Text -- ^ 
  , responseGeocodingPropertiesCity :: Text -- ^ 
  , responseGeocodingPropertiesCountry :: Text -- ^ 
  , responseGeocodingPropertiesCountryUnderscorecode :: Text -- ^ 
  , responseGeocodingPropertiesContinent :: Text -- ^ 
  , responseGeocodingPropertiesPostcode :: Text -- ^ 
  , responseGeocodingPropertiesFeatures :: ResponseMapInfoFeatures -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseGeocodingProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingProperties")
instance ToJSON ResponseGeocodingProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingProperties")

-- | 
data ResponseMapInfo = ResponseMapInfo
  { responseMapInfoMaps :: [ResponseMapInfoMap] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseMapInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfo")
instance ToJSON ResponseMapInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfo")

-- | 
data ResponseMapInfoFeatures = ResponseMapInfoFeatures
  { responseMapInfoFeaturesPublicUnderscoretransport :: ResponseMapInfoFeaturesPublicTransport -- ^ 
  , responseMapInfoFeaturesFares :: Bool -- ^ 
  , responseMapInfoFeaturesPostcodes :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseMapInfoFeatures where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoFeatures")
instance ToJSON ResponseMapInfoFeatures where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoFeatures")

-- | 
data ResponseMapInfoFeaturesPublicTransport = ResponseMapInfoFeaturesPublicTransport
  { responseMapInfoFeaturesPublicTransportDateUnderscorestart :: Integer -- ^ 
  , responseMapInfoFeaturesPublicTransportDateUnderscoreend :: Integer -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseMapInfoFeaturesPublicTransport where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoFeaturesPublicTransport")
instance ToJSON ResponseMapInfoFeaturesPublicTransport where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoFeaturesPublicTransport")

-- | 
data ResponseMapInfoMap = ResponseMapInfoMap
  { responseMapInfoMapName :: Text -- ^ 
  , responseMapInfoMapFeatures :: ResponseMapInfoFeatures -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseMapInfoMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoMap")
instance ToJSON ResponseMapInfoMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoMap")

-- | 
data ResponseRoute = ResponseRoute
  { responseRouteDepartureUnderscoretime :: Integer -- ^ 
  , responseRouteArrivalUnderscoretime :: Integer -- ^ 
  , responseRouteParts :: [ResponseRoutePart] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoute where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoute")
instance ToJSON ResponseRoute where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoute")

-- | 
data ResponseRoutePart = ResponseRoutePart
  { responseRoutePartId :: Text -- ^ 
  , responseRoutePartType :: Text -- ^ 
  , responseRoutePartMode :: ResponseTransportationMode -- ^ 
  , responseRoutePartDirections :: Text -- ^ 
  , responseRoutePartDistance :: Int -- ^ 
  , responseRoutePartTravelUnderscoretime :: Int -- ^ 
  , responseRoutePartCoords :: [Coords] -- ^ 
  , responseRoutePartDirection :: Text -- ^ 
  , responseRoutePartRoad :: Text -- ^ 
  , responseRoutePartTurn :: Text -- ^ 
  , responseRoutePartLine :: Text -- ^ 
  , responseRoutePartDepartureUnderscorestation :: Text -- ^ 
  , responseRoutePartArrivalUnderscorestation :: Text -- ^ 
  , responseRoutePartDepartsUnderscoreat :: Text -- ^ 
  , responseRoutePartArrivesUnderscoreat :: Text -- ^ 
  , responseRoutePartNumUnderscorestops :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoutePart where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutePart")
instance ToJSON ResponseRoutePart where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutePart")

-- | 
data ResponseRoutes = ResponseRoutes
  { responseRoutesResults :: [ResponseRoutesResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoutes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutes")
instance ToJSON ResponseRoutes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutes")

-- | 
data ResponseRoutesLocation = ResponseRoutesLocation
  { responseRoutesLocationId :: Text -- ^ 
  , responseRoutesLocationProperties :: [ResponseRoutesProperties] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoutesLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesLocation")
instance ToJSON ResponseRoutesLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesLocation")

-- | 
data ResponseRoutesProperties = ResponseRoutesProperties
  { responseRoutesPropertiesTravelUnderscoretime :: Int -- ^ 
  , responseRoutesPropertiesDistance :: Int -- ^ 
  , responseRoutesPropertiesFares :: ResponseFares -- ^ 
  , responseRoutesPropertiesRoute :: ResponseRoute -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoutesProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesProperties")
instance ToJSON ResponseRoutesProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesProperties")

-- | 
data ResponseRoutesResult = ResponseRoutesResult
  { responseRoutesResultSearchUnderscoreid :: Text -- ^ 
  , responseRoutesResultLocations :: [ResponseRoutesLocation] -- ^ 
  , responseRoutesResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseRoutesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesResult")
instance ToJSON ResponseRoutesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesResult")

-- | 
data ResponseShape = ResponseShape
  { responseShapeShell :: [Coords] -- ^ 
  , responseShapeHoles :: [[Coords]] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseShape where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseShape")
instance ToJSON ResponseShape where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseShape")

-- | 
data ResponseSupportedLocation = ResponseSupportedLocation
  { responseSupportedLocationId :: Text -- ^ 
  , responseSupportedLocationMapUnderscorename :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseSupportedLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseSupportedLocation")
instance ToJSON ResponseSupportedLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseSupportedLocation")

-- | 
data ResponseSupportedLocations = ResponseSupportedLocations
  { responseSupportedLocationsLocations :: [ResponseSupportedLocation] -- ^ 
  , responseSupportedLocationsUnsupportedUnderscorelocations :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseSupportedLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseSupportedLocations")
instance ToJSON ResponseSupportedLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseSupportedLocations")

-- | 
data ResponseTimeFilter = ResponseTimeFilter
  { responseTimeFilterResults :: [ResponseTimeFilterResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilter")
instance ToJSON ResponseTimeFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilter")

-- | 
data ResponseTimeFilterFast = ResponseTimeFilterFast
  { responseTimeFilterFastResults :: [ResponseTimeFilterFastResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFast")
instance ToJSON ResponseTimeFilterFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFast")

-- | 
data ResponseTimeFilterFastLocation = ResponseTimeFilterFastLocation
  { responseTimeFilterFastLocationId :: Text -- ^ 
  , responseTimeFilterFastLocationProperties :: [ResponseTimeFilterFastProperties] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterFastLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastLocation")
instance ToJSON ResponseTimeFilterFastLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastLocation")

-- | 
data ResponseTimeFilterFastProperties = ResponseTimeFilterFastProperties
  { responseTimeFilterFastPropertiesTravelUnderscoretime :: Int -- ^ 
  , responseTimeFilterFastPropertiesFares :: ResponseFaresFast -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterFastProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastProperties")
instance ToJSON ResponseTimeFilterFastProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastProperties")

-- | 
data ResponseTimeFilterFastResult = ResponseTimeFilterFastResult
  { responseTimeFilterFastResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterFastResultLocations :: [ResponseTimeFilterFastLocation] -- ^ 
  , responseTimeFilterFastResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterFastResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastResult")
instance ToJSON ResponseTimeFilterFastResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastResult")

-- | 
data ResponseTimeFilterLocation = ResponseTimeFilterLocation
  { responseTimeFilterLocationId :: Text -- ^ 
  , responseTimeFilterLocationProperties :: [ResponseTimeFilterProperties] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterLocation")
instance ToJSON ResponseTimeFilterLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterLocation")

-- | 
data ResponseTimeFilterPostcode = ResponseTimeFilterPostcode
  { responseTimeFilterPostcodeCode :: String -- ^ 
  , responseTimeFilterPostcodeProperties :: [ResponseTimeFilterPostcodesProperties] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcode")
instance ToJSON ResponseTimeFilterPostcode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcode")

-- | 
data ResponseTimeFilterPostcodeDistrict = ResponseTimeFilterPostcodeDistrict
  { responseTimeFilterPostcodeDistrictCode :: String -- ^ 
  , responseTimeFilterPostcodeDistrictProperties :: ResponseTimeFilterPostcodeDistrictProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeDistrict where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrict")
instance ToJSON ResponseTimeFilterPostcodeDistrict where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrict")

-- | 
data ResponseTimeFilterPostcodeDistrictProperties = ResponseTimeFilterPostcodeDistrictProperties
  { responseTimeFilterPostcodeDistrictPropertiesTravelUnderscoretimeUnderscorereachable :: ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeDistrictPropertiesTravelUnderscoretimeUnderscoreall :: ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeDistrictPropertiesCoverage :: Double -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeDistrictProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrictProperties")
instance ToJSON ResponseTimeFilterPostcodeDistrictProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictProperties")

-- | 
data ResponseTimeFilterPostcodeDistricts = ResponseTimeFilterPostcodeDistricts
  { responseTimeFilterPostcodeDistrictsResults :: [ResponseTimeFilterPostcodeDistrictsResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeDistricts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistricts")
instance ToJSON ResponseTimeFilterPostcodeDistricts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistricts")

-- | 
data ResponseTimeFilterPostcodeDistrictsResult = ResponseTimeFilterPostcodeDistrictsResult
  { responseTimeFilterPostcodeDistrictsResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodeDistrictsResultDistricts :: [ResponseTimeFilterPostcodeDistrict] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeDistrictsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrictsResult")
instance ToJSON ResponseTimeFilterPostcodeDistrictsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictsResult")

-- | 
data ResponseTimeFilterPostcodeSector = ResponseTimeFilterPostcodeSector
  { responseTimeFilterPostcodeSectorCode :: String -- ^ 
  , responseTimeFilterPostcodeSectorProperties :: ResponseTimeFilterPostcodeSectorProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeSector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSector")
instance ToJSON ResponseTimeFilterPostcodeSector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSector")

-- | 
data ResponseTimeFilterPostcodeSectorProperties = ResponseTimeFilterPostcodeSectorProperties
  { responseTimeFilterPostcodeSectorPropertiesTravelUnderscoretimeUnderscorereachable :: ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeSectorPropertiesTravelUnderscoretimeUnderscoreall :: ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeSectorPropertiesCoverage :: Double -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeSectorProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectorProperties")
instance ToJSON ResponseTimeFilterPostcodeSectorProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorProperties")

-- | 
data ResponseTimeFilterPostcodeSectors = ResponseTimeFilterPostcodeSectors
  { responseTimeFilterPostcodeSectorsResults :: [ResponseTimeFilterPostcodeSectorsResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeSectors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectors")
instance ToJSON ResponseTimeFilterPostcodeSectors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectors")

-- | 
data ResponseTimeFilterPostcodeSectorsResult = ResponseTimeFilterPostcodeSectorsResult
  { responseTimeFilterPostcodeSectorsResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodeSectorsResultSectors :: [ResponseTimeFilterPostcodeSector] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodeSectorsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectorsResult")
instance ToJSON ResponseTimeFilterPostcodeSectorsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorsResult")

-- | 
data ResponseTimeFilterPostcodes = ResponseTimeFilterPostcodes
  { responseTimeFilterPostcodesResults :: [ResponseTimeFilterPostcodesResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodes")
instance ToJSON ResponseTimeFilterPostcodes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodes")

-- | 
data ResponseTimeFilterPostcodesProperties = ResponseTimeFilterPostcodesProperties
  { responseTimeFilterPostcodesPropertiesTravelUnderscoretime :: Int -- ^ 
  , responseTimeFilterPostcodesPropertiesDistance :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodesProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodesProperties")
instance ToJSON ResponseTimeFilterPostcodesProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodesProperties")

-- | 
data ResponseTimeFilterPostcodesResult = ResponseTimeFilterPostcodesResult
  { responseTimeFilterPostcodesResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodesResultPostcodes :: [ResponseTimeFilterPostcode] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterPostcodesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodesResult")
instance ToJSON ResponseTimeFilterPostcodesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodesResult")

-- | 
data ResponseTimeFilterProperties = ResponseTimeFilterProperties
  { responseTimeFilterPropertiesTravelUnderscoretime :: Int -- ^ 
  , responseTimeFilterPropertiesDistance :: Int -- ^ 
  , responseTimeFilterPropertiesDistanceUnderscorebreakdown :: [ResponseDistanceBreakdownItem] -- ^ 
  , responseTimeFilterPropertiesFares :: ResponseFares -- ^ 
  , responseTimeFilterPropertiesRoute :: ResponseRoute -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterProperties")
instance ToJSON ResponseTimeFilterProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterProperties")

-- | 
data ResponseTimeFilterResult = ResponseTimeFilterResult
  { responseTimeFilterResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterResultLocations :: [ResponseTimeFilterLocation] -- ^ 
  , responseTimeFilterResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeFilterResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterResult")
instance ToJSON ResponseTimeFilterResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterResult")

-- | 
data ResponseTimeMap = ResponseTimeMap
  { responseTimeMapResults :: [ResponseTimeMapResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMap")
instance ToJSON ResponseTimeMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMap")

-- | 
data ResponseTimeMapBoundingBoxes = ResponseTimeMapBoundingBoxes
  { responseTimeMapBoundingBoxesResults :: [ResponseTimeMapBoundingBoxesResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapBoundingBoxes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapBoundingBoxes")
instance ToJSON ResponseTimeMapBoundingBoxes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapBoundingBoxes")

-- | 
data ResponseTimeMapBoundingBoxesResult = ResponseTimeMapBoundingBoxesResult
  { responseTimeMapBoundingBoxesResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapBoundingBoxesResultBoundingUnderscoreboxes :: [ResponseBoundingBox] -- ^ 
  , responseTimeMapBoundingBoxesResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapBoundingBoxesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapBoundingBoxesResult")
instance ToJSON ResponseTimeMapBoundingBoxesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapBoundingBoxesResult")

-- | 
data ResponseTimeMapProperties = ResponseTimeMapProperties
  { responseTimeMapPropertiesIsUnderscoreonlyUnderscorewalking :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapProperties")
instance ToJSON ResponseTimeMapProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapProperties")

-- | 
data ResponseTimeMapResult = ResponseTimeMapResult
  { responseTimeMapResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapResultShapes :: [ResponseShape] -- ^ 
  , responseTimeMapResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapResult")
instance ToJSON ResponseTimeMapResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapResult")

-- | 
data ResponseTimeMapWkt = ResponseTimeMapWkt
  { responseTimeMapWktResults :: [ResponseTimeMapWktResult] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapWkt where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapWkt")
instance ToJSON ResponseTimeMapWkt where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapWkt")

-- | 
data ResponseTimeMapWktResult = ResponseTimeMapWktResult
  { responseTimeMapWktResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapWktResultShape :: Text -- ^ 
  , responseTimeMapWktResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMapWktResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapWktResult")
instance ToJSON ResponseTimeMapWktResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapWktResult")

-- | 
data ResponseTransportationMode = ResponseTransportationMode
  { 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTransportationMode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTransportationMode")
instance ToJSON ResponseTransportationMode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTransportationMode")

-- | 
data ResponseTravelTimeStatistics = ResponseTravelTimeStatistics
  { responseTravelTimeStatisticsMin :: Int -- ^ 
  , responseTravelTimeStatisticsMax :: Int -- ^ 
  , responseTravelTimeStatisticsMean :: Int -- ^ 
  , responseTravelTimeStatisticsMedian :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTravelTimeStatistics where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTravelTimeStatistics")
instance ToJSON ResponseTravelTimeStatistics where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTravelTimeStatistics")

-- Remove a field label prefix during JSON parsing.
-- Also perform any replacements for special characters.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
  {fieldLabelModifier = fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars}
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("@", "'At")
      , ("\\", "'Back_Slash")
      , ("<=", "'Less_Than_Or_Equal_To")
      , ("\"", "'Double_Quote")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("^", "'Caret")
      , ("_", "'Underscore")
      , ("`", "'Backtick")
      , ("!", "'Exclamation")
      , ("#", "'Hash")
      , ("$", "'Dollar")
      , ("%", "'Percent")
      , ("&", "'Ampersand")
      , ("'", "'Quote")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("*", "'Star")
      , ("+", "'Plus")
      , (",", "'Comma")
      , ("-", "'Dash")
      , (".", "'Period")
      , ("/", "'Slash")
      , (":", "'Colon")
      , ("{", "'Left_Curly_Bracket")
      , ("|", "'Pipe")
      , ("<", "'LessThan")
      , ("!=", "'Not_Equal")
      , ("=", "'Equal")
      , ("}", "'Right_Curly_Bracket")
      , (">", "'GreaterThan")
      , ("~", "'Tilde")
      , ("?", "'Question_Mark")
      , (">=", "'Greater_Than_Or_Equal_To")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
