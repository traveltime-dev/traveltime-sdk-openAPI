{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=328 #-}

module TravelTimePlatform.API
  -- * Client and Server
  ( ServerConfig(..)
  , TravelTimePlatformBackend
  , createTravelTimePlatformClient
  , runTravelTimePlatformServer
  , runTravelTimePlatformClient
  , runTravelTimePlatformClientWithManager
  , TravelTimePlatformClient
  -- ** Servant
  , TravelTimePlatformAPI
  ) where

import TravelTimePlatform.Types

import Control.Monad.Except (ExceptT)
import Control.Monad.IO.Class
import Data.Aeson (Value)
import Data.Coerce (coerce)
import Data.Function ((&))
import qualified Data.Map as Map
import Data.Monoid ((<>))
import Data.Proxy (Proxy(..))
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Exts (IsString(..))
import GHC.Generics (Generic)
import Network.HTTP.Client (Manager, defaultManagerSettings, newManager)
import Network.HTTP.Types.Method (methodOptions)
import qualified Network.Wai.Handler.Warp as Warp
import Servant (ServantErr, serve)
import Servant.API
import Servant.API.Verbs (StdMethod(..), Verb)
import Servant.Client (Scheme(Http), ServantError, client)
import Servant.Common.BaseUrl (BaseUrl(..))
import Web.HttpApiData




-- For the form data code generation.
lookupEither :: FromHttpApiData b => Text -> [(Text, Text)] -> Either String b
lookupEither key assocs =
  case lookup key assocs of
    Nothing -> Left $ "Could not find parameter " <> (T.unpack key) <> " in form data"
    Just value ->
      case parseQueryParam value of
        Left result -> Left $ T.unpack result
        Right result -> Right $ result

-- | Servant type-level API, generated from the OpenAPI spec for TravelTimePlatform.
type TravelTimePlatformAPI
    =    "v4" :> "geocoding" :> "reverse" :> QueryParam "focus.lat" Double :> QueryParam "focus.lng" Double :> QueryParam "within.country" Text :> Verb 'GET 200 '[JSON] ResponseGeocoding -- 'geocodingReverseSearch' route
    :<|> "v4" :> "geocoding" :> "search" :> QueryParam "query" Text :> QueryParam "within.country" Text :> QueryParam "focus.lat" Double :> QueryParam "focus.lng" Double :> Verb 'GET 200 '[JSON] ResponseGeocoding -- 'geocodingSearch' route
    :<|> "v4" :> "map-info" :> Verb 'GET 200 '[JSON] ResponseMapInfo -- 'mapInfo' route
    :<|> "v4" :> "routes" :> ReqBody '[JSON] RequestRoutes :> Verb 'POST 200 '[JSON] ResponseRoutes -- 'routes' route
    :<|> "v4" :> "supported-locations" :> ReqBody '[JSON] RequestSupportedLocations :> Verb 'POST 200 '[JSON] ResponseSupportedLocations -- 'supportedLocations' route
    :<|> "v4" :> "time-filter" :> ReqBody '[JSON] RequestTimeFilter :> Verb 'POST 200 '[JSON] ResponseTimeFilter -- 'timeFilter' route
    :<|> "v4" :> "time-filter" :> "fast" :> ReqBody '[JSON] RequestTimeFilterFast :> Verb 'POST 200 '[JSON] ResponseTimeFilterFast -- 'timeFilterFast' route
    :<|> "v4" :> "time-filter" :> "postcode-districts" :> ReqBody '[JSON] RequestTimeFilterPostcodeDistricts :> Verb 'POST 200 '[JSON] ResponseTimeFilterPostcodeDistricts -- 'timeFilterPostcodeDistricts' route
    :<|> "v4" :> "time-filter" :> "postcode-sectors" :> ReqBody '[JSON] RequestTimeFilterPostcodeSectors :> Verb 'POST 200 '[JSON] ResponseTimeFilterPostcodeSectors -- 'timeFilterPostcodeSectors' route
    :<|> "v4" :> "time-filter" :> "postcodes" :> ReqBody '[JSON] RequestTimeFilterPostcodes :> Verb 'POST 200 '[JSON] ResponseTimeFilterPostcodes -- 'timeFilterPostcodes' route
    :<|> "v4" :> "time-map" :> ReqBody '[JSON] RequestTimeMap :> Verb 'POST 200 '[JSON] ResponseTimeMap -- 'timeMap' route

-- | Server or client configuration, specifying the host and port to query or serve on.
data ServerConfig = ServerConfig
  { configHost :: String  -- ^ Hostname to serve on, e.g. "127.0.0.1"
  , configPort :: Int      -- ^ Port to serve on, e.g. 8080
  } deriving (Eq, Ord, Show, Read)

-- | List of elements parsed from a query.
newtype QueryList (p :: CollectionFormat) a = QueryList
  { fromQueryList :: [a]
  } deriving (Functor, Applicative, Monad, Foldable, Traversable)

-- | Formats in which a list can be encoded into a HTTP path.
data CollectionFormat
  = CommaSeparated -- ^ CSV format for multiple parameters.
  | SpaceSeparated -- ^ Also called "SSV"
  | TabSeparated -- ^ Also called "TSV"
  | PipeSeparated -- ^ `value1|value2|value2`
  | MultiParamArray -- ^ Using multiple GET parameters, e.g. `foo=bar&foo=baz`. Only for GET params.

instance FromHttpApiData a => FromHttpApiData (QueryList 'CommaSeparated a) where
  parseQueryParam = parseSeparatedQueryList ','

instance FromHttpApiData a => FromHttpApiData (QueryList 'TabSeparated a) where
  parseQueryParam = parseSeparatedQueryList '\t'

instance FromHttpApiData a => FromHttpApiData (QueryList 'SpaceSeparated a) where
  parseQueryParam = parseSeparatedQueryList ' '

instance FromHttpApiData a => FromHttpApiData (QueryList 'PipeSeparated a) where
  parseQueryParam = parseSeparatedQueryList '|'

instance FromHttpApiData a => FromHttpApiData (QueryList 'MultiParamArray a) where
  parseQueryParam = error "unimplemented FromHttpApiData for MultiParamArray collection format"

parseSeparatedQueryList :: FromHttpApiData a => Char -> Text -> Either Text (QueryList p a)
parseSeparatedQueryList char = fmap QueryList . mapM parseQueryParam . T.split (== char)

instance ToHttpApiData a => ToHttpApiData (QueryList 'CommaSeparated a) where
  toQueryParam = formatSeparatedQueryList ','

instance ToHttpApiData a => ToHttpApiData (QueryList 'TabSeparated a) where
  toQueryParam = formatSeparatedQueryList '\t'

instance ToHttpApiData a => ToHttpApiData (QueryList 'SpaceSeparated a) where
  toQueryParam = formatSeparatedQueryList ' '

instance ToHttpApiData a => ToHttpApiData (QueryList 'PipeSeparated a) where
  toQueryParam = formatSeparatedQueryList '|'

instance ToHttpApiData a => ToHttpApiData (QueryList 'MultiParamArray a) where
  toQueryParam = error "unimplemented ToHttpApiData for MultiParamArray collection format"

formatSeparatedQueryList :: ToHttpApiData a => Char ->  QueryList p a -> Text
formatSeparatedQueryList char = T.intercalate (T.singleton char) . map toQueryParam . fromQueryList


-- | Backend for TravelTimePlatform.
-- The backend can be used both for the client and the server. The client generated from the TravelTimePlatform OpenAPI spec
-- is a backend that executes actions by sending HTTP requests (see @createTravelTimePlatformClient@). Alternatively, provided
-- a backend, the API can be served using @runTravelTimePlatformServer@.
data TravelTimePlatformBackend m = TravelTimePlatformBackend
  { geocodingReverseSearch :: Maybe Double -> Maybe Double -> Maybe Text -> m ResponseGeocoding{- ^  -}
  , geocodingSearch :: Maybe Text -> Maybe Text -> Maybe Double -> Maybe Double -> m ResponseGeocoding{- ^  -}
  , mapInfo :: m ResponseMapInfo{- ^  -}
  , routes :: RequestRoutes -> m ResponseRoutes{- ^  -}
  , supportedLocations :: RequestSupportedLocations -> m ResponseSupportedLocations{- ^  -}
  , timeFilter :: RequestTimeFilter -> m ResponseTimeFilter{- ^  -}
  , timeFilterFast :: RequestTimeFilterFast -> m ResponseTimeFilterFast{- ^  -}
  , timeFilterPostcodeDistricts :: RequestTimeFilterPostcodeDistricts -> m ResponseTimeFilterPostcodeDistricts{- ^  -}
  , timeFilterPostcodeSectors :: RequestTimeFilterPostcodeSectors -> m ResponseTimeFilterPostcodeSectors{- ^  -}
  , timeFilterPostcodes :: RequestTimeFilterPostcodes -> m ResponseTimeFilterPostcodes{- ^  -}
  , timeMap :: RequestTimeMap -> m ResponseTimeMap{- ^  -}
  }

newtype TravelTimePlatformClient a = TravelTimePlatformClient
  { runClient :: Manager -> BaseUrl -> ExceptT ServantError IO a
  } deriving Functor

instance Applicative TravelTimePlatformClient where
  pure x = TravelTimePlatformClient (\_ _ -> pure x)
  (TravelTimePlatformClient f) <*> (TravelTimePlatformClient x) =
    TravelTimePlatformClient (\manager url -> f manager url <*> x manager url)

instance Monad TravelTimePlatformClient where
  (TravelTimePlatformClient a) >>= f =
    TravelTimePlatformClient (\manager url -> do
      value <- a manager url
      runClient (f value) manager url)

instance MonadIO TravelTimePlatformClient where
  liftIO io = TravelTimePlatformClient (\_ _ -> liftIO io)

createTravelTimePlatformClient :: TravelTimePlatformBackend TravelTimePlatformClient
createTravelTimePlatformClient = TravelTimePlatformBackend{..}
  where
    ((coerce -> geocodingReverseSearch) :<|>
     (coerce -> geocodingSearch) :<|>
     (coerce -> mapInfo) :<|>
     (coerce -> routes) :<|>
     (coerce -> supportedLocations) :<|>
     (coerce -> timeFilter) :<|>
     (coerce -> timeFilterFast) :<|>
     (coerce -> timeFilterPostcodeDistricts) :<|>
     (coerce -> timeFilterPostcodeSectors) :<|>
     (coerce -> timeFilterPostcodes) :<|>
     (coerce -> timeMap)) = client (Proxy :: Proxy TravelTimePlatformAPI)

-- | Run requests in the TravelTimePlatformClient monad.
runTravelTimePlatformClient :: ServerConfig -> TravelTimePlatformClient a -> ExceptT ServantError IO a
runTravelTimePlatformClient clientConfig cl = do
  manager <- liftIO $ newManager defaultManagerSettings
  runTravelTimePlatformClientWithManager manager clientConfig cl

-- | Run requests in the TravelTimePlatformClient monad using a custom manager.
runTravelTimePlatformClientWithManager :: Manager -> ServerConfig -> TravelTimePlatformClient a -> ExceptT ServantError IO a
runTravelTimePlatformClientWithManager manager clientConfig cl =
  runClient cl manager $ BaseUrl Http (configHost clientConfig) (configPort clientConfig) ""

-- | Run the TravelTimePlatform server at the provided host and port.
runTravelTimePlatformServer :: MonadIO m => ServerConfig -> TravelTimePlatformBackend (ExceptT ServantErr IO)  -> m ()
runTravelTimePlatformServer ServerConfig{..} backend =
  liftIO $ Warp.runSettings warpSettings $ serve (Proxy :: Proxy TravelTimePlatformAPI) (serverFromBackend backend)
  where
    warpSettings = Warp.defaultSettings & Warp.setPort configPort & Warp.setHost (fromString configHost)
    serverFromBackend TravelTimePlatformBackend{..} =
      (coerce geocodingReverseSearch :<|>
       coerce geocodingSearch :<|>
       coerce mapInfo :<|>
       coerce routes :<|>
       coerce supportedLocations :<|>
       coerce timeFilter :<|>
       coerce timeFilterFast :<|>
       coerce timeFilterPostcodeDistricts :<|>
       coerce timeFilterPostcodeSectors :<|>
       coerce timeFilterPostcodes :<|>
       coerce timeMap)
