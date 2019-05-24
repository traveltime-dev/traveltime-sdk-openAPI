{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
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

import Data.Data (Data)
import Data.UUID (UUID)
import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Set (Set)
import Data.Text (Text)
import Data.Time
import Data.Swagger (ToSchema, declareNamedSchema)
import qualified Data.Swagger as Swagger
import qualified Data.Char as Char
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | 
data Coords = Coords
  { coordsLat :: Double -- ^ 
  , coordsLng :: Double -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Coords where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "coords")
instance ToJSON Coords where
  toJSON = genericToJSON (removeFieldLabelPrefix False "coords")
instance ToSchema Coords where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "coords"


-- | 
data RequestArrivalTimePeriod = RequestArrivalTimePeriod
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestArrivalTimePeriod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestArrivalTimePeriod")
instance ToJSON RequestArrivalTimePeriod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestArrivalTimePeriod")
instance ToSchema RequestArrivalTimePeriod where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestArrivalTimePeriod"


-- | 
data RequestLocation = RequestLocation
  { requestLocationId :: Text -- ^ 
  , requestLocationCoords :: Coords -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestLocation")
instance ToJSON RequestLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestLocation")
instance ToSchema RequestLocation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestLocation"


-- | 
data RequestRangeFull = RequestRangeFull
  { requestRangeFullEnabled :: Bool -- ^ 
  , requestRangeFullMaxUnderscoreresults :: Int -- ^ 
  , requestRangeFullWidth :: Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRangeFull where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRangeFull")
instance ToJSON RequestRangeFull where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRangeFull")
instance ToSchema RequestRangeFull where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRangeFull"


-- | 
data RequestRangeNoMaxResults = RequestRangeNoMaxResults
  { requestRangeNoMaxResultsEnabled :: Bool -- ^ 
  , requestRangeNoMaxResultsWidth :: Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRangeNoMaxResults where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRangeNoMaxResults")
instance ToJSON RequestRangeNoMaxResults where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRangeNoMaxResults")
instance ToSchema RequestRangeNoMaxResults where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRangeNoMaxResults"


-- | 
data RequestRoutes = RequestRoutes
  { requestRoutesLocations :: [RequestLocation] -- ^ 
  , requestRoutesDepartureUnderscoresearches :: Maybe [RequestRoutesDepartureSearch] -- ^ 
  , requestRoutesArrivalUnderscoresearches :: Maybe [RequestRoutesArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRoutes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutes")
instance ToJSON RequestRoutes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutes")
instance ToSchema RequestRoutes where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRoutes"


-- | 
data RequestRoutesArrivalSearch = RequestRoutesArrivalSearch
  { requestRoutesArrivalSearchId :: Text -- ^ 
  , requestRoutesArrivalSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestRoutesArrivalSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestRoutesArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestRoutesArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestRoutesArrivalSearchProperties :: [RequestRoutesProperty] -- ^ 
  , requestRoutesArrivalSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRoutesArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesArrivalSearch")
instance ToJSON RequestRoutesArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesArrivalSearch")
instance ToSchema RequestRoutesArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRoutesArrivalSearch"


-- | 
data RequestRoutesDepartureSearch = RequestRoutesDepartureSearch
  { requestRoutesDepartureSearchId :: Text -- ^ 
  , requestRoutesDepartureSearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestRoutesDepartureSearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestRoutesDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestRoutesDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestRoutesDepartureSearchProperties :: [RequestRoutesProperty] -- ^ 
  , requestRoutesDepartureSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRoutesDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesDepartureSearch")
instance ToJSON RequestRoutesDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesDepartureSearch")
instance ToSchema RequestRoutesDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRoutesDepartureSearch"


-- | 
data RequestRoutesProperty = RequestRoutesProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestRoutesProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestRoutesProperty")
instance ToJSON RequestRoutesProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestRoutesProperty")
instance ToSchema RequestRoutesProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestRoutesProperty"


-- | 
data RequestSupportedLocations = RequestSupportedLocations
  { requestSupportedLocationsLocations :: [RequestLocation] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestSupportedLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestSupportedLocations")
instance ToJSON RequestSupportedLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestSupportedLocations")
instance ToSchema RequestSupportedLocations where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestSupportedLocations"


-- | 
data RequestTimeFilter = RequestTimeFilter
  { requestTimeFilterLocations :: [RequestLocation] -- ^ 
  , requestTimeFilterDepartureUnderscoresearches :: Maybe [RequestTimeFilterDepartureSearch] -- ^ 
  , requestTimeFilterArrivalUnderscoresearches :: Maybe [RequestTimeFilterArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilter")
instance ToJSON RequestTimeFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilter")
instance ToSchema RequestTimeFilter where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilter"


-- | 
data RequestTimeFilterArrivalSearch = RequestTimeFilterArrivalSearch
  { requestTimeFilterArrivalSearchId :: Text -- ^ 
  , requestTimeFilterArrivalSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterArrivalSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterArrivalSearchProperties :: [RequestTimeFilterProperty] -- ^ 
  , requestTimeFilterArrivalSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterArrivalSearch")
instance ToJSON RequestTimeFilterArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterArrivalSearch")
instance ToSchema RequestTimeFilterArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterArrivalSearch"


-- | 
data RequestTimeFilterDepartureSearch = RequestTimeFilterDepartureSearch
  { requestTimeFilterDepartureSearchId :: Text -- ^ 
  , requestTimeFilterDepartureSearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterDepartureSearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterDepartureSearchProperties :: [RequestTimeFilterProperty] -- ^ 
  , requestTimeFilterDepartureSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterDepartureSearch")
instance ToJSON RequestTimeFilterDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterDepartureSearch")
instance ToSchema RequestTimeFilterDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterDepartureSearch"


-- | 
data RequestTimeFilterFast = RequestTimeFilterFast
  { requestTimeFilterFastLocations :: [RequestLocation] -- ^ 
  , requestTimeFilterFastArrivalUnderscoresearches :: RequestTimeFilterFastArrivalSearches -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFast")
instance ToJSON RequestTimeFilterFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFast")
instance ToSchema RequestTimeFilterFast where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterFast"


-- | 
data RequestTimeFilterFastArrivalManyToOneSearch = RequestTimeFilterFastArrivalManyToOneSearch
  { requestTimeFilterFastArrivalManyToOneSearchId :: Text -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchArrivalUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchDepartureUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchTransportation :: RequestTransportationFast -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchArrivalUnderscoretimeUnderscoreperiod :: RequestArrivalTimePeriod -- ^ 
  , requestTimeFilterFastArrivalManyToOneSearchProperties :: [RequestTimeFilterFastProperty] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterFastArrivalManyToOneSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalManyToOneSearch")
instance ToJSON RequestTimeFilterFastArrivalManyToOneSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalManyToOneSearch")
instance ToSchema RequestTimeFilterFastArrivalManyToOneSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterFastArrivalManyToOneSearch"


-- | 
data RequestTimeFilterFastArrivalOneToManySearch = RequestTimeFilterFastArrivalOneToManySearch
  { requestTimeFilterFastArrivalOneToManySearchId :: Text -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchDepartureUnderscorelocationUnderscoreid :: Text -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchArrivalUnderscorelocationUnderscoreids :: [Text] -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchTransportation :: RequestTransportationFast -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchArrivalUnderscoretimeUnderscoreperiod :: RequestArrivalTimePeriod -- ^ 
  , requestTimeFilterFastArrivalOneToManySearchProperties :: [RequestTimeFilterFastProperty] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterFastArrivalOneToManySearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalOneToManySearch")
instance ToJSON RequestTimeFilterFastArrivalOneToManySearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalOneToManySearch")
instance ToSchema RequestTimeFilterFastArrivalOneToManySearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterFastArrivalOneToManySearch"


-- | 
data RequestTimeFilterFastArrivalSearches = RequestTimeFilterFastArrivalSearches
  { requestTimeFilterFastArrivalSearchesManyUnderscoretoUnderscoreone :: Maybe [RequestTimeFilterFastArrivalManyToOneSearch] -- ^ 
  , requestTimeFilterFastArrivalSearchesOneUnderscoretoUnderscoremany :: Maybe [RequestTimeFilterFastArrivalOneToManySearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterFastArrivalSearches where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastArrivalSearches")
instance ToJSON RequestTimeFilterFastArrivalSearches where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastArrivalSearches")
instance ToSchema RequestTimeFilterFastArrivalSearches where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterFastArrivalSearches"


-- | 
data RequestTimeFilterFastProperty = RequestTimeFilterFastProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterFastProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterFastProperty")
instance ToJSON RequestTimeFilterFastProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterFastProperty")
instance ToSchema RequestTimeFilterFastProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterFastProperty"


-- | 
data RequestTimeFilterPostcodeDistricts = RequestTimeFilterPostcodeDistricts
  { requestTimeFilterPostcodeDistrictsDepartureUnderscoresearches :: Maybe [RequestTimeFilterPostcodeDistrictsDepartureSearch] -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalUnderscoresearches :: Maybe [RequestTimeFilterPostcodeDistrictsArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeDistricts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistricts")
instance ToJSON RequestTimeFilterPostcodeDistricts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistricts")
instance ToSchema RequestTimeFilterPostcodeDistricts where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeDistricts"


-- | 
data RequestTimeFilterPostcodeDistrictsArrivalSearch = RequestTimeFilterPostcodeDistrictsArrivalSearch
  { requestTimeFilterPostcodeDistrictsArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty] -- ^ 
  , requestTimeFilterPostcodeDistrictsArrivalSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeDistrictsArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsArrivalSearch")
instance ToJSON RequestTimeFilterPostcodeDistrictsArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsArrivalSearch")
instance ToSchema RequestTimeFilterPostcodeDistrictsArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsArrivalSearch"


-- | 
data RequestTimeFilterPostcodeDistrictsDepartureSearch = RequestTimeFilterPostcodeDistrictsDepartureSearch
  { requestTimeFilterPostcodeDistrictsDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchProperties :: [RequestTimeFilterPostcodeDistrictsProperty] -- ^ 
  , requestTimeFilterPostcodeDistrictsDepartureSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeDistrictsDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsDepartureSearch")
instance ToJSON RequestTimeFilterPostcodeDistrictsDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsDepartureSearch")
instance ToSchema RequestTimeFilterPostcodeDistrictsDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsDepartureSearch"


-- | 
data RequestTimeFilterPostcodeDistrictsProperty = RequestTimeFilterPostcodeDistrictsProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeDistrictsProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeDistrictsProperty")
instance ToJSON RequestTimeFilterPostcodeDistrictsProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsProperty")
instance ToSchema RequestTimeFilterPostcodeDistrictsProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeDistrictsProperty"


-- | 
data RequestTimeFilterPostcodeSectors = RequestTimeFilterPostcodeSectors
  { requestTimeFilterPostcodeSectorsDepartureUnderscoresearches :: Maybe [RequestTimeFilterPostcodeSectorsDepartureSearch] -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalUnderscoresearches :: Maybe [RequestTimeFilterPostcodeSectorsArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeSectors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectors")
instance ToJSON RequestTimeFilterPostcodeSectors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectors")
instance ToSchema RequestTimeFilterPostcodeSectors where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeSectors"


-- | 
data RequestTimeFilterPostcodeSectorsArrivalSearch = RequestTimeFilterPostcodeSectorsArrivalSearch
  { requestTimeFilterPostcodeSectorsArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty] -- ^ 
  , requestTimeFilterPostcodeSectorsArrivalSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeSectorsArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsArrivalSearch")
instance ToJSON RequestTimeFilterPostcodeSectorsArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsArrivalSearch")
instance ToSchema RequestTimeFilterPostcodeSectorsArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsArrivalSearch"


-- | 
data RequestTimeFilterPostcodeSectorsDepartureSearch = RequestTimeFilterPostcodeSectorsDepartureSearch
  { requestTimeFilterPostcodeSectorsDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchReachableUnderscorepostcodesUnderscorethreshold :: Double -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchProperties :: [RequestTimeFilterPostcodeSectorsProperty] -- ^ 
  , requestTimeFilterPostcodeSectorsDepartureSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeSectorsDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsDepartureSearch")
instance ToJSON RequestTimeFilterPostcodeSectorsDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsDepartureSearch")
instance ToSchema RequestTimeFilterPostcodeSectorsDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsDepartureSearch"


-- | 
data RequestTimeFilterPostcodeSectorsProperty = RequestTimeFilterPostcodeSectorsProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodeSectorsProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodeSectorsProperty")
instance ToJSON RequestTimeFilterPostcodeSectorsProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsProperty")
instance ToSchema RequestTimeFilterPostcodeSectorsProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodeSectorsProperty"


-- | 
data RequestTimeFilterPostcodes = RequestTimeFilterPostcodes
  { requestTimeFilterPostcodesDepartureUnderscoresearches :: Maybe [RequestTimeFilterPostcodesDepartureSearch] -- ^ 
  , requestTimeFilterPostcodesArrivalUnderscoresearches :: Maybe [RequestTimeFilterPostcodesArrivalSearch] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodes")
instance ToJSON RequestTimeFilterPostcodes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodes")
instance ToSchema RequestTimeFilterPostcodes where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodes"


-- | 
data RequestTimeFilterPostcodesArrivalSearch = RequestTimeFilterPostcodesArrivalSearch
  { requestTimeFilterPostcodesArrivalSearchId :: Text -- ^ 
  , requestTimeFilterPostcodesArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodesArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodesArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodesArrivalSearchProperties :: [RequestTimeFilterPostcodesProperty] -- ^ 
  , requestTimeFilterPostcodesArrivalSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodesArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesArrivalSearch")
instance ToJSON RequestTimeFilterPostcodesArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesArrivalSearch")
instance ToSchema RequestTimeFilterPostcodesArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodesArrivalSearch"


-- | 
data RequestTimeFilterPostcodesDepartureSearch = RequestTimeFilterPostcodesDepartureSearch
  { requestTimeFilterPostcodesDepartureSearchId :: Text -- ^ 
  , requestTimeFilterPostcodesDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeFilterPostcodesDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeFilterPostcodesDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestTimeFilterPostcodesDepartureSearchProperties :: [RequestTimeFilterPostcodesProperty] -- ^ 
  , requestTimeFilterPostcodesDepartureSearchRange :: Maybe RequestRangeFull -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodesDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesDepartureSearch")
instance ToJSON RequestTimeFilterPostcodesDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesDepartureSearch")
instance ToSchema RequestTimeFilterPostcodesDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodesDepartureSearch"


-- | 
data RequestTimeFilterPostcodesProperty = RequestTimeFilterPostcodesProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterPostcodesProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterPostcodesProperty")
instance ToJSON RequestTimeFilterPostcodesProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterPostcodesProperty")
instance ToSchema RequestTimeFilterPostcodesProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterPostcodesProperty"


-- | 
data RequestTimeFilterProperty = RequestTimeFilterProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeFilterProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeFilterProperty")
instance ToJSON RequestTimeFilterProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeFilterProperty")
instance ToSchema RequestTimeFilterProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeFilterProperty"


-- | 
data RequestTimeMap = RequestTimeMap
  { requestTimeMapDepartureUnderscoresearches :: Maybe [RequestTimeMapDepartureSearch] -- ^ 
  , requestTimeMapArrivalUnderscoresearches :: Maybe [RequestTimeMapArrivalSearch] -- ^ 
  , requestTimeMapUnions :: Maybe [RequestUnionOnIntersection] -- ^ 
  , requestTimeMapIntersections :: Maybe [RequestUnionOnIntersection] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMap")
instance ToJSON RequestTimeMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMap")
instance ToSchema RequestTimeMap where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeMap"


-- | 
data RequestTimeMapArrivalSearch = RequestTimeMapArrivalSearch
  { requestTimeMapArrivalSearchId :: Text -- ^ 
  , requestTimeMapArrivalSearchCoords :: Coords -- ^ 
  , requestTimeMapArrivalSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeMapArrivalSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeMapArrivalSearchArrivalUnderscoretime :: UTCTime -- ^ 
  , requestTimeMapArrivalSearchProperties :: Maybe [RequestTimeMapProperty] -- ^ 
  , requestTimeMapArrivalSearchRange :: Maybe RequestRangeNoMaxResults -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeMapArrivalSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapArrivalSearch")
instance ToJSON RequestTimeMapArrivalSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapArrivalSearch")
instance ToSchema RequestTimeMapArrivalSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeMapArrivalSearch"


-- | 
data RequestTimeMapDepartureSearch = RequestTimeMapDepartureSearch
  { requestTimeMapDepartureSearchId :: Text -- ^ 
  , requestTimeMapDepartureSearchCoords :: Coords -- ^ 
  , requestTimeMapDepartureSearchTransportation :: RequestTransportation -- ^ 
  , requestTimeMapDepartureSearchTravelUnderscoretime :: Int -- ^ 
  , requestTimeMapDepartureSearchDepartureUnderscoretime :: UTCTime -- ^ 
  , requestTimeMapDepartureSearchProperties :: Maybe [RequestTimeMapProperty] -- ^ 
  , requestTimeMapDepartureSearchRange :: Maybe RequestRangeNoMaxResults -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeMapDepartureSearch where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapDepartureSearch")
instance ToJSON RequestTimeMapDepartureSearch where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapDepartureSearch")
instance ToSchema RequestTimeMapDepartureSearch where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeMapDepartureSearch"


-- | 
data RequestTimeMapProperty = RequestTimeMapProperty
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTimeMapProperty where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTimeMapProperty")
instance ToJSON RequestTimeMapProperty where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTimeMapProperty")
instance ToSchema RequestTimeMapProperty where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTimeMapProperty"


-- | 
data RequestTransportation = RequestTransportation
  { requestTransportationType :: Text -- ^ 
  , requestTransportationPtUnderscorechangeUnderscoredelay :: Maybe Int -- ^ 
  , requestTransportationWalkingUnderscoretime :: Maybe Int -- ^ 
  , requestTransportationDrivingUnderscoretimeUnderscoretoUnderscorestation :: Maybe Int -- ^ 
  , requestTransportationParkingUnderscoretime :: Maybe Int -- ^ 
  , requestTransportationBoardingUnderscoretime :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTransportation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTransportation")
instance ToJSON RequestTransportation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTransportation")
instance ToSchema RequestTransportation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTransportation"


-- | 
data RequestTransportationFast = RequestTransportationFast
  { requestTransportationFastType :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestTransportationFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestTransportationFast")
instance ToJSON RequestTransportationFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestTransportationFast")
instance ToSchema RequestTransportationFast where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestTransportationFast"


-- | 
data RequestUnionOnIntersection = RequestUnionOnIntersection
  { requestUnionOnIntersectionId :: Text -- ^ 
  , requestUnionOnIntersectionSearchUnderscoreids :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RequestUnionOnIntersection where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "requestUnionOnIntersection")
instance ToJSON RequestUnionOnIntersection where
  toJSON = genericToJSON (removeFieldLabelPrefix False "requestUnionOnIntersection")
instance ToSchema RequestUnionOnIntersection where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "requestUnionOnIntersection"


-- | 
data ResponseBoundingBox = ResponseBoundingBox
  { responseBoundingBoxEnvelope :: ResponseBox -- ^ 
  , responseBoundingBoxBoxes :: [ResponseBox] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseBoundingBox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseBoundingBox")
instance ToJSON ResponseBoundingBox where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseBoundingBox")
instance ToSchema ResponseBoundingBox where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseBoundingBox"


-- | 
data ResponseBox = ResponseBox
  { responseBoxMinUnderscorelat :: Double -- ^ 
  , responseBoxMaxUnderscorelat :: Double -- ^ 
  , responseBoxMinUnderscorelng :: Double -- ^ 
  , responseBoxMaxUnderscorelng :: Double -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseBox where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseBox")
instance ToJSON ResponseBox where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseBox")
instance ToSchema ResponseBox where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseBox"


-- | 
data ResponseDistanceBreakdownItem = ResponseDistanceBreakdownItem
  { responseDistanceBreakdownItemMode :: ResponseTransportationMode -- ^ 
  , responseDistanceBreakdownItemDistance :: Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseDistanceBreakdownItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseDistanceBreakdownItem")
instance ToJSON ResponseDistanceBreakdownItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseDistanceBreakdownItem")
instance ToSchema ResponseDistanceBreakdownItem where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseDistanceBreakdownItem"


-- | 
data ResponseError = ResponseError
  { responseErrorHttpUnderscorestatus :: Maybe Int -- ^ 
  , responseErrorErrorUnderscorecode :: Maybe Int -- ^ 
  , responseErrorDescription :: Maybe Text -- ^ 
  , responseErrorDocumentationUnderscorelink :: Maybe Text -- ^ 
  , responseErrorAdditionalUnderscoreinfo :: Maybe (Map.Map String [Text]) -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseError where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseError")
instance ToJSON ResponseError where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseError")
instance ToSchema ResponseError where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseError"


-- | 
data ResponseFareTicket = ResponseFareTicket
  { responseFareTicketType :: Text -- ^ 
  , responseFareTicketPrice :: Double -- ^ 
  , responseFareTicketCurrency :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseFareTicket where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFareTicket")
instance ToJSON ResponseFareTicket where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFareTicket")
instance ToSchema ResponseFareTicket where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseFareTicket"


-- | 
data ResponseFares = ResponseFares
  { responseFaresBreakdown :: [ResponseFaresBreakdownItem] -- ^ 
  , responseFaresTicketsUnderscoretotal :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseFares where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFares")
instance ToJSON ResponseFares where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFares")
instance ToSchema ResponseFares where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseFares"


-- | 
data ResponseFaresBreakdownItem = ResponseFaresBreakdownItem
  { responseFaresBreakdownItemModes :: [ResponseTransportationMode] -- ^ 
  , responseFaresBreakdownItemRouteUnderscorepartUnderscoreids :: [Int] -- ^ 
  , responseFaresBreakdownItemTickets :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseFaresBreakdownItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFaresBreakdownItem")
instance ToJSON ResponseFaresBreakdownItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFaresBreakdownItem")
instance ToSchema ResponseFaresBreakdownItem where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseFaresBreakdownItem"


-- | 
data ResponseFaresFast = ResponseFaresFast
  { responseFaresFastTicketsUnderscoretotal :: [ResponseFareTicket] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseFaresFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseFaresFast")
instance ToJSON ResponseFaresFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseFaresFast")
instance ToSchema ResponseFaresFast where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseFaresFast"


-- | 
data ResponseGeocoding = ResponseGeocoding
  { responseGeocodingType :: Text -- ^ 
  , responseGeocodingFeatures :: [ResponseGeocodingGeoJsonFeature] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseGeocoding where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocoding")
instance ToJSON ResponseGeocoding where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocoding")
instance ToSchema ResponseGeocoding where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseGeocoding"


-- | 
data ResponseGeocodingGeoJsonFeature = ResponseGeocodingGeoJsonFeature
  { responseGeocodingGeoJsonFeatureType :: Text -- ^ 
  , responseGeocodingGeoJsonFeatureGeometry :: ResponseGeocodingGeometry -- ^ 
  , responseGeocodingGeoJsonFeatureProperties :: ResponseGeocodingProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseGeocodingGeoJsonFeature where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingGeoJsonFeature")
instance ToJSON ResponseGeocodingGeoJsonFeature where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingGeoJsonFeature")
instance ToSchema ResponseGeocodingGeoJsonFeature where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseGeocodingGeoJsonFeature"


-- | 
data ResponseGeocodingGeometry = ResponseGeocodingGeometry
  { responseGeocodingGeometryType :: Text -- ^ 
  , responseGeocodingGeometryCoordinates :: [Double] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseGeocodingGeometry where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingGeometry")
instance ToJSON ResponseGeocodingGeometry where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingGeometry")
instance ToSchema ResponseGeocodingGeometry where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseGeocodingGeometry"


-- | 
data ResponseGeocodingProperties = ResponseGeocodingProperties
  { responseGeocodingPropertiesName :: Text -- ^ 
  , responseGeocodingPropertiesLabel :: Text -- ^ 
  , responseGeocodingPropertiesScore :: Maybe Double -- ^ 
  , responseGeocodingPropertiesHouseUnderscorenumber :: Maybe Text -- ^ 
  , responseGeocodingPropertiesStreet :: Maybe Text -- ^ 
  , responseGeocodingPropertiesRegion :: Maybe Text -- ^ 
  , responseGeocodingPropertiesRegionUnderscorecode :: Maybe Text -- ^ 
  , responseGeocodingPropertiesNeighbourhood :: Maybe Text -- ^ 
  , responseGeocodingPropertiesCounty :: Maybe Text -- ^ 
  , responseGeocodingPropertiesMacroregion :: Maybe Text -- ^ 
  , responseGeocodingPropertiesCity :: Maybe Text -- ^ 
  , responseGeocodingPropertiesCountry :: Maybe Text -- ^ 
  , responseGeocodingPropertiesCountryUnderscorecode :: Maybe Text -- ^ 
  , responseGeocodingPropertiesContinent :: Maybe Text -- ^ 
  , responseGeocodingPropertiesPostcode :: Maybe Text -- ^ 
  , responseGeocodingPropertiesFeatures :: Maybe ResponseMapInfoFeatures -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseGeocodingProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseGeocodingProperties")
instance ToJSON ResponseGeocodingProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseGeocodingProperties")
instance ToSchema ResponseGeocodingProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseGeocodingProperties"


-- | 
data ResponseMapInfo = ResponseMapInfo
  { responseMapInfoMaps :: [ResponseMapInfoMap] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseMapInfo where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfo")
instance ToJSON ResponseMapInfo where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfo")
instance ToSchema ResponseMapInfo where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseMapInfo"


-- | 
data ResponseMapInfoFeatures = ResponseMapInfoFeatures
  { responseMapInfoFeaturesPublicUnderscoretransport :: Maybe ResponseMapInfoFeaturesPublicTransport -- ^ 
  , responseMapInfoFeaturesFares :: Bool -- ^ 
  , responseMapInfoFeaturesPostcodes :: Bool -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseMapInfoFeatures where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoFeatures")
instance ToJSON ResponseMapInfoFeatures where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoFeatures")
instance ToSchema ResponseMapInfoFeatures where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseMapInfoFeatures"


-- | 
data ResponseMapInfoFeaturesPublicTransport = ResponseMapInfoFeaturesPublicTransport
  { responseMapInfoFeaturesPublicTransportDateUnderscorestart :: UTCTime -- ^ 
  , responseMapInfoFeaturesPublicTransportDateUnderscoreend :: UTCTime -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseMapInfoFeaturesPublicTransport where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoFeaturesPublicTransport")
instance ToJSON ResponseMapInfoFeaturesPublicTransport where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoFeaturesPublicTransport")
instance ToSchema ResponseMapInfoFeaturesPublicTransport where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseMapInfoFeaturesPublicTransport"


-- | 
data ResponseMapInfoMap = ResponseMapInfoMap
  { responseMapInfoMapName :: Text -- ^ 
  , responseMapInfoMapFeatures :: ResponseMapInfoFeatures -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseMapInfoMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseMapInfoMap")
instance ToJSON ResponseMapInfoMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseMapInfoMap")
instance ToSchema ResponseMapInfoMap where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseMapInfoMap"


-- | 
data ResponseRoute = ResponseRoute
  { responseRouteDepartureUnderscoretime :: UTCTime -- ^ 
  , responseRouteArrivalUnderscoretime :: UTCTime -- ^ 
  , responseRouteParts :: [ResponseRoutePart] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoute where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoute")
instance ToJSON ResponseRoute where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoute")
instance ToSchema ResponseRoute where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoute"


-- | 
data ResponseRoutePart = ResponseRoutePart
  { responseRoutePartId :: Text -- ^ 
  , responseRoutePartType :: Text -- ^ 
  , responseRoutePartMode :: ResponseTransportationMode -- ^ 
  , responseRoutePartDirections :: Text -- ^ 
  , responseRoutePartDistance :: Int -- ^ 
  , responseRoutePartTravelUnderscoretime :: Int -- ^ 
  , responseRoutePartCoords :: [Coords] -- ^ 
  , responseRoutePartDirection :: Maybe Text -- ^ 
  , responseRoutePartRoad :: Maybe Text -- ^ 
  , responseRoutePartTurn :: Maybe Text -- ^ 
  , responseRoutePartLine :: Maybe Text -- ^ 
  , responseRoutePartDepartureUnderscorestation :: Maybe Text -- ^ 
  , responseRoutePartArrivalUnderscorestation :: Maybe Text -- ^ 
  , responseRoutePartDepartsUnderscoreat :: Maybe Text -- ^ 
  , responseRoutePartArrivesUnderscoreat :: Maybe Text -- ^ 
  , responseRoutePartNumUnderscorestops :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoutePart where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutePart")
instance ToJSON ResponseRoutePart where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutePart")
instance ToSchema ResponseRoutePart where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoutePart"


-- | 
data ResponseRoutes = ResponseRoutes
  { responseRoutesResults :: [ResponseRoutesResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoutes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutes")
instance ToJSON ResponseRoutes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutes")
instance ToSchema ResponseRoutes where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoutes"


-- | 
data ResponseRoutesLocation = ResponseRoutesLocation
  { responseRoutesLocationId :: Text -- ^ 
  , responseRoutesLocationProperties :: [ResponseRoutesProperties] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoutesLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesLocation")
instance ToJSON ResponseRoutesLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesLocation")
instance ToSchema ResponseRoutesLocation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoutesLocation"


-- | 
data ResponseRoutesProperties = ResponseRoutesProperties
  { responseRoutesPropertiesTravelUnderscoretime :: Maybe Int -- ^ 
  , responseRoutesPropertiesDistance :: Maybe Int -- ^ 
  , responseRoutesPropertiesFares :: Maybe ResponseFares -- ^ 
  , responseRoutesPropertiesRoute :: Maybe ResponseRoute -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoutesProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesProperties")
instance ToJSON ResponseRoutesProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesProperties")
instance ToSchema ResponseRoutesProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoutesProperties"


-- | 
data ResponseRoutesResult = ResponseRoutesResult
  { responseRoutesResultSearchUnderscoreid :: Text -- ^ 
  , responseRoutesResultLocations :: [ResponseRoutesLocation] -- ^ 
  , responseRoutesResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseRoutesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseRoutesResult")
instance ToJSON ResponseRoutesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseRoutesResult")
instance ToSchema ResponseRoutesResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseRoutesResult"


-- | 
data ResponseShape = ResponseShape
  { responseShapeShell :: [Coords] -- ^ 
  , responseShapeHoles :: [[Coords]] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseShape where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseShape")
instance ToJSON ResponseShape where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseShape")
instance ToSchema ResponseShape where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseShape"


-- | 
data ResponseSupportedLocation = ResponseSupportedLocation
  { responseSupportedLocationId :: Text -- ^ 
  , responseSupportedLocationMapUnderscorename :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseSupportedLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseSupportedLocation")
instance ToJSON ResponseSupportedLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseSupportedLocation")
instance ToSchema ResponseSupportedLocation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseSupportedLocation"


-- | 
data ResponseSupportedLocations = ResponseSupportedLocations
  { responseSupportedLocationsLocations :: [ResponseSupportedLocation] -- ^ 
  , responseSupportedLocationsUnsupportedUnderscorelocations :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseSupportedLocations where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseSupportedLocations")
instance ToJSON ResponseSupportedLocations where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseSupportedLocations")
instance ToSchema ResponseSupportedLocations where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseSupportedLocations"


-- | 
data ResponseTimeFilter = ResponseTimeFilter
  { responseTimeFilterResults :: [ResponseTimeFilterResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilter where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilter")
instance ToJSON ResponseTimeFilter where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilter")
instance ToSchema ResponseTimeFilter where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilter"


-- | 
data ResponseTimeFilterFast = ResponseTimeFilterFast
  { responseTimeFilterFastResults :: [ResponseTimeFilterFastResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterFast where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFast")
instance ToJSON ResponseTimeFilterFast where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFast")
instance ToSchema ResponseTimeFilterFast where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterFast"


-- | 
data ResponseTimeFilterFastLocation = ResponseTimeFilterFastLocation
  { responseTimeFilterFastLocationId :: Text -- ^ 
  , responseTimeFilterFastLocationProperties :: [ResponseTimeFilterFastProperties] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterFastLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastLocation")
instance ToJSON ResponseTimeFilterFastLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastLocation")
instance ToSchema ResponseTimeFilterFastLocation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterFastLocation"


-- | 
data ResponseTimeFilterFastProperties = ResponseTimeFilterFastProperties
  { responseTimeFilterFastPropertiesTravelUnderscoretime :: Maybe Int -- ^ 
  , responseTimeFilterFastPropertiesFares :: Maybe ResponseFaresFast -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterFastProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastProperties")
instance ToJSON ResponseTimeFilterFastProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastProperties")
instance ToSchema ResponseTimeFilterFastProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterFastProperties"


-- | 
data ResponseTimeFilterFastResult = ResponseTimeFilterFastResult
  { responseTimeFilterFastResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterFastResultLocations :: [ResponseTimeFilterFastLocation] -- ^ 
  , responseTimeFilterFastResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterFastResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterFastResult")
instance ToJSON ResponseTimeFilterFastResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterFastResult")
instance ToSchema ResponseTimeFilterFastResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterFastResult"


-- | 
data ResponseTimeFilterLocation = ResponseTimeFilterLocation
  { responseTimeFilterLocationId :: Text -- ^ 
  , responseTimeFilterLocationProperties :: [ResponseTimeFilterProperties] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterLocation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterLocation")
instance ToJSON ResponseTimeFilterLocation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterLocation")
instance ToSchema ResponseTimeFilterLocation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterLocation"


-- | 
data ResponseTimeFilterPostcode = ResponseTimeFilterPostcode
  { responseTimeFilterPostcodeCode :: String -- ^ 
  , responseTimeFilterPostcodeProperties :: [ResponseTimeFilterPostcodesProperties] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcode")
instance ToJSON ResponseTimeFilterPostcode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcode")
instance ToSchema ResponseTimeFilterPostcode where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcode"


-- | 
data ResponseTimeFilterPostcodeDistrict = ResponseTimeFilterPostcodeDistrict
  { responseTimeFilterPostcodeDistrictCode :: String -- ^ 
  , responseTimeFilterPostcodeDistrictProperties :: ResponseTimeFilterPostcodeDistrictProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeDistrict where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrict")
instance ToJSON ResponseTimeFilterPostcodeDistrict where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrict")
instance ToSchema ResponseTimeFilterPostcodeDistrict where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrict"


-- | 
data ResponseTimeFilterPostcodeDistrictProperties = ResponseTimeFilterPostcodeDistrictProperties
  { responseTimeFilterPostcodeDistrictPropertiesTravelUnderscoretimeUnderscorereachable :: Maybe ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeDistrictPropertiesTravelUnderscoretimeUnderscoreall :: Maybe ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeDistrictPropertiesCoverage :: Maybe Double -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeDistrictProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrictProperties")
instance ToJSON ResponseTimeFilterPostcodeDistrictProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictProperties")
instance ToSchema ResponseTimeFilterPostcodeDistrictProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictProperties"


-- | 
data ResponseTimeFilterPostcodeDistricts = ResponseTimeFilterPostcodeDistricts
  { responseTimeFilterPostcodeDistrictsResults :: [ResponseTimeFilterPostcodeDistrictsResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeDistricts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistricts")
instance ToJSON ResponseTimeFilterPostcodeDistricts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistricts")
instance ToSchema ResponseTimeFilterPostcodeDistricts where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeDistricts"


-- | 
data ResponseTimeFilterPostcodeDistrictsResult = ResponseTimeFilterPostcodeDistrictsResult
  { responseTimeFilterPostcodeDistrictsResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodeDistrictsResultDistricts :: [ResponseTimeFilterPostcodeDistrict] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeDistrictsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeDistrictsResult")
instance ToJSON ResponseTimeFilterPostcodeDistrictsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictsResult")
instance ToSchema ResponseTimeFilterPostcodeDistrictsResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeDistrictsResult"


-- | 
data ResponseTimeFilterPostcodeSector = ResponseTimeFilterPostcodeSector
  { responseTimeFilterPostcodeSectorCode :: String -- ^ 
  , responseTimeFilterPostcodeSectorProperties :: ResponseTimeFilterPostcodeSectorProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeSector where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSector")
instance ToJSON ResponseTimeFilterPostcodeSector where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSector")
instance ToSchema ResponseTimeFilterPostcodeSector where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeSector"


-- | 
data ResponseTimeFilterPostcodeSectorProperties = ResponseTimeFilterPostcodeSectorProperties
  { responseTimeFilterPostcodeSectorPropertiesTravelUnderscoretimeUnderscorereachable :: Maybe ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeSectorPropertiesTravelUnderscoretimeUnderscoreall :: Maybe ResponseTravelTimeStatistics -- ^ 
  , responseTimeFilterPostcodeSectorPropertiesCoverage :: Maybe Double -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeSectorProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectorProperties")
instance ToJSON ResponseTimeFilterPostcodeSectorProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorProperties")
instance ToSchema ResponseTimeFilterPostcodeSectorProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorProperties"


-- | 
data ResponseTimeFilterPostcodeSectors = ResponseTimeFilterPostcodeSectors
  { responseTimeFilterPostcodeSectorsResults :: [ResponseTimeFilterPostcodeSectorsResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeSectors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectors")
instance ToJSON ResponseTimeFilterPostcodeSectors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectors")
instance ToSchema ResponseTimeFilterPostcodeSectors where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeSectors"


-- | 
data ResponseTimeFilterPostcodeSectorsResult = ResponseTimeFilterPostcodeSectorsResult
  { responseTimeFilterPostcodeSectorsResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodeSectorsResultSectors :: [ResponseTimeFilterPostcodeSector] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodeSectorsResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodeSectorsResult")
instance ToJSON ResponseTimeFilterPostcodeSectorsResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorsResult")
instance ToSchema ResponseTimeFilterPostcodeSectorsResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodeSectorsResult"


-- | 
data ResponseTimeFilterPostcodes = ResponseTimeFilterPostcodes
  { responseTimeFilterPostcodesResults :: [ResponseTimeFilterPostcodesResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodes")
instance ToJSON ResponseTimeFilterPostcodes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodes")
instance ToSchema ResponseTimeFilterPostcodes where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodes"


-- | 
data ResponseTimeFilterPostcodesProperties = ResponseTimeFilterPostcodesProperties
  { responseTimeFilterPostcodesPropertiesTravelUnderscoretime :: Maybe Int -- ^ 
  , responseTimeFilterPostcodesPropertiesDistance :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodesProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodesProperties")
instance ToJSON ResponseTimeFilterPostcodesProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodesProperties")
instance ToSchema ResponseTimeFilterPostcodesProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodesProperties"


-- | 
data ResponseTimeFilterPostcodesResult = ResponseTimeFilterPostcodesResult
  { responseTimeFilterPostcodesResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterPostcodesResultPostcodes :: [ResponseTimeFilterPostcode] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterPostcodesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterPostcodesResult")
instance ToJSON ResponseTimeFilterPostcodesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterPostcodesResult")
instance ToSchema ResponseTimeFilterPostcodesResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterPostcodesResult"


-- | 
data ResponseTimeFilterProperties = ResponseTimeFilterProperties
  { responseTimeFilterPropertiesTravelUnderscoretime :: Maybe Int -- ^ 
  , responseTimeFilterPropertiesDistance :: Maybe Int -- ^ 
  , responseTimeFilterPropertiesDistanceUnderscorebreakdown :: Maybe [ResponseDistanceBreakdownItem] -- ^ 
  , responseTimeFilterPropertiesFares :: Maybe ResponseFares -- ^ 
  , responseTimeFilterPropertiesRoute :: Maybe ResponseRoute -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterProperties")
instance ToJSON ResponseTimeFilterProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterProperties")
instance ToSchema ResponseTimeFilterProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterProperties"


-- | 
data ResponseTimeFilterResult = ResponseTimeFilterResult
  { responseTimeFilterResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeFilterResultLocations :: [ResponseTimeFilterLocation] -- ^ 
  , responseTimeFilterResultUnreachable :: [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeFilterResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeFilterResult")
instance ToJSON ResponseTimeFilterResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeFilterResult")
instance ToSchema ResponseTimeFilterResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeFilterResult"


-- | 
data ResponseTimeMap = ResponseTimeMap
  { responseTimeMapResults :: [ResponseTimeMapResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMap where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMap")
instance ToJSON ResponseTimeMap where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMap")
instance ToSchema ResponseTimeMap where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMap"


-- | 
data ResponseTimeMapBoundingBoxes = ResponseTimeMapBoundingBoxes
  { responseTimeMapBoundingBoxesResults :: [ResponseTimeMapBoundingBoxesResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapBoundingBoxes where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapBoundingBoxes")
instance ToJSON ResponseTimeMapBoundingBoxes where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapBoundingBoxes")
instance ToSchema ResponseTimeMapBoundingBoxes where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapBoundingBoxes"


-- | 
data ResponseTimeMapBoundingBoxesResult = ResponseTimeMapBoundingBoxesResult
  { responseTimeMapBoundingBoxesResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapBoundingBoxesResultBoundingUnderscoreboxes :: [ResponseBoundingBox] -- ^ 
  , responseTimeMapBoundingBoxesResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapBoundingBoxesResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapBoundingBoxesResult")
instance ToJSON ResponseTimeMapBoundingBoxesResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapBoundingBoxesResult")
instance ToSchema ResponseTimeMapBoundingBoxesResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapBoundingBoxesResult"


-- | 
data ResponseTimeMapProperties = ResponseTimeMapProperties
  { responseTimeMapPropertiesIsUnderscoreonlyUnderscorewalking :: Maybe Bool -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapProperties where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapProperties")
instance ToJSON ResponseTimeMapProperties where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapProperties")
instance ToSchema ResponseTimeMapProperties where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapProperties"


-- | 
data ResponseTimeMapResult = ResponseTimeMapResult
  { responseTimeMapResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapResultShapes :: [ResponseShape] -- ^ 
  , responseTimeMapResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapResult")
instance ToJSON ResponseTimeMapResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapResult")
instance ToSchema ResponseTimeMapResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapResult"


-- | 
data ResponseTimeMapWkt = ResponseTimeMapWkt
  { responseTimeMapWktResults :: [ResponseTimeMapWktResult] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapWkt where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapWkt")
instance ToJSON ResponseTimeMapWkt where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapWkt")
instance ToSchema ResponseTimeMapWkt where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapWkt"


-- | 
data ResponseTimeMapWktResult = ResponseTimeMapWktResult
  { responseTimeMapWktResultSearchUnderscoreid :: Text -- ^ 
  , responseTimeMapWktResultShape :: Text -- ^ 
  , responseTimeMapWktResultProperties :: ResponseTimeMapProperties -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMapWktResult where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMapWktResult")
instance ToJSON ResponseTimeMapWktResult where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMapWktResult")
instance ToSchema ResponseTimeMapWktResult where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTimeMapWktResult"


-- | 
data ResponseTransportationMode = ResponseTransportationMode
  { 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTransportationMode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTransportationMode")
instance ToJSON ResponseTransportationMode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTransportationMode")
instance ToSchema ResponseTransportationMode where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTransportationMode"


-- | 
data ResponseTravelTimeStatistics = ResponseTravelTimeStatistics
  { responseTravelTimeStatisticsMin :: Int -- ^ 
  , responseTravelTimeStatisticsMax :: Int -- ^ 
  , responseTravelTimeStatisticsMean :: Int -- ^ 
  , responseTravelTimeStatisticsMedian :: Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTravelTimeStatistics where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTravelTimeStatistics")
instance ToJSON ResponseTravelTimeStatistics where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTravelTimeStatistics")
instance ToSchema ResponseTravelTimeStatistics where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ removeFieldLabelPrefix False "responseTravelTimeStatistics"


uncapitalize :: String -> String
uncapitalize (first:rest) = Char.toLower first : rest
uncapitalize [] = []

-- | Remove a field label prefix during JSON parsing.
--   Also perform any replacements for special characters.
--   The @forParsing@ parameter is to distinguish between the cases in which we're using this
--   to power a @FromJSON@ or a @ToJSON@ instance. In the first case we're parsing, and we want
--   to replace special characters with their quoted equivalents (because we cannot have special
--   chars in identifier names), while we want to do viceversa when sending data instead.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = uncapitalize . fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars
    }
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
