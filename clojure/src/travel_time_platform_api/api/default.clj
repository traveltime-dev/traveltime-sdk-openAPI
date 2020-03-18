(ns travel-time-platform-api.api.default
  (:require [travel-time-platform-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [travel-time-platform-api.specs.response-travel-time :refer :all]
            [travel-time-platform-api.specs.request-departure-arrival-time :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-searches :refer :all]
            [travel-time-platform-api.specs.request-range-width :refer :all]
            [travel-time-platform-api.specs.request-routes-departure-search :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-districts-result :refer :all]
            [travel-time-platform-api.specs.response-map-info :refer :all]
            [travel-time-platform-api.specs.request-range-enabled :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-districts :refer :all]
            [travel-time-platform-api.specs.request-time-filter-departure-search :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-district :refer :all]
            [travel-time-platform-api.specs.response-time-filter-result :refer :all]
            [travel-time-platform-api.specs.request-supported-locations :refer :all]
            [travel-time-platform-api.specs.request-time-filter :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-sectors-reachable-postcodes-threshold :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast :refer :all]
            [travel-time-platform-api.specs.response-fare-ticket :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-property :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-one-to-many-search :refer :all]
            [travel-time-platform-api.specs.request-routes :refer :all]
            [travel-time-platform-api.specs.response-search-id :refer :all]
            [travel-time-platform-api.specs.response-map-info-features-public-transport :refer :all]
            [travel-time-platform-api.specs.response-time-map-bounding-boxes-result :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcodes-property :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-property :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-many-to-one-search :refer :all]
            [travel-time-platform-api.specs.response-supported-locations :refer :all]
            [travel-time-platform-api.specs.response-geocoding :refer :all]
            [travel-time-platform-api.specs.response-routes :refer :all]
            [travel-time-platform-api.specs.request-location-id :refer :all]
            [travel-time-platform-api.specs.response-geocoding-properties :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcodes-departure-search :refer :all]
            [travel-time-platform-api.specs.response-time-map-bounding-boxes :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcodes :refer :all]
            [travel-time-platform-api.specs.request-union-on-intersection :refer :all]
            [travel-time-platform-api.specs.response-time-map-properties :refer :all]
            [travel-time-platform-api.specs.request-time-map :refer :all]
            [travel-time-platform-api.specs.request-time-filter-property :refer :all]
            [travel-time-platform-api.specs.request-range-no-max-results :refer :all]
            [travel-time-platform-api.specs.response-time-map-wkt-result :refer :all]
            [travel-time-platform-api.specs.response-fares :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-district-properties :refer :all]
            [travel-time-platform-api.specs.coords :refer :all]
            [travel-time-platform-api.specs.response-wkt-shape :refer :all]
            [travel-time-platform-api.specs.response-error :refer :all]
            [travel-time-platform-api.specs.request-time-map-property :refer :all]
            [travel-time-platform-api.specs.response-fares-fast :refer :all]
            [travel-time-platform-api.specs.response-time-filter-fast-properties :refer :all]
            [travel-time-platform-api.specs.request-departure-arrival-location-one :refer :all]
            [travel-time-platform-api.specs.response-route :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-reachable-postcodes-threshold :refer :all]
            [travel-time-platform-api.specs.response-distance-breakdown-item :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-arrival-search :refer :all]
            [travel-time-platform-api.specs.response-location-id :refer :all]
            [travel-time-platform-api.specs.response-box :refer :all]
            [travel-time-platform-api.specs.response-geocoding-geometry :refer :all]
            [travel-time-platform-api.specs.response-travel-time-statistics :refer :all]
            [travel-time-platform-api.specs.request-location :refer :all]
            [travel-time-platform-api.specs.response-time-map-wkt :refer :all]
            [travel-time-platform-api.specs.response-bounding-box :refer :all]
            [travel-time-platform-api.specs.response-time-filter-fast-result :refer :all]
            [travel-time-platform-api.specs.response-geocoding-geo-json-feature :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-sectors :refer :all]
            [travel-time-platform-api.specs.response-time-filter-properties :refer :all]
            [travel-time-platform-api.specs.response-time-filter :refer :all]
            [travel-time-platform-api.specs.request-range-full :refer :all]
            [travel-time-platform-api.specs.response-time-map :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-departure-search :refer :all]
            [travel-time-platform-api.specs.response-map-info-map :refer :all]
            [travel-time-platform-api.specs.response-routes-properties :refer :all]
            [travel-time-platform-api.specs.request-arrival-time-period :refer :all]
            [travel-time-platform-api.specs.response-transportation-mode :refer :all]
            [travel-time-platform-api.specs.request-time-map-arrival-search :refer :all]
            [travel-time-platform-api.specs.response-fares-breakdown-item :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcodes :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-sectors-result :refer :all]
            [travel-time-platform-api.specs.request-routes-property :refer :all]
            [travel-time-platform-api.specs.response-time-filter-fast-location :refer :all]
            [travel-time-platform-api.specs.request-time-filter-arrival-search :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcodes-result :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-sectors-arrival-search :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-sectors-departure-search :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-sector :refer :all]
            [travel-time-platform-api.specs.response-route-part :refer :all]
            [travel-time-platform-api.specs.response-time-filter-fast :refer :all]
            [travel-time-platform-api.specs.response-shape :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-sectors :refer :all]
            [travel-time-platform-api.specs.request-search-id :refer :all]
            [travel-time-platform-api.specs.request-transportation :refer :all]
            [travel-time-platform-api.specs.request-transportation-fast :refer :all]
            [travel-time-platform-api.specs.request-travel-time :refer :all]
            [travel-time-platform-api.specs.response-distance :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcodes-arrival-search :refer :all]
            [travel-time-platform-api.specs.response-routes-result :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcodes-properties :refer :all]
            [travel-time-platform-api.specs.response-routes-location :refer :all]
            [travel-time-platform-api.specs.request-routes-arrival-search :refer :all]
            [travel-time-platform-api.specs.response-time-map-result :refer :all]
            [travel-time-platform-api.specs.response-local-time :refer :all]
            [travel-time-platform-api.specs.response-map-info-features :refer :all]
            [travel-time-platform-api.specs.request-time-map-departure-search :refer :all]
            [travel-time-platform-api.specs.response-supported-location :refer :all]
            [travel-time-platform-api.specs.response-time-filter-location :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-sector-properties :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-sectors-property :refer :all]
            )
  (:import (java.io File)))


(defn-spec geocoding-reverse-search-with-http-info any?
  ""
  ([lat float?, lng float?, ] (geocoding-reverse-search-with-http-info lat lng nil))
  ([lat float?, lng float?, {:keys [withincountry]} (s/map-of keyword? any?)]
   (check-required-params lat lng)
   (call-api "/v4/geocoding/reverse" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"lat" lat "lng" lng "within.country" withincountry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["ApiKey" "ApplicationId"]})))

(defn-spec geocoding-reverse-search response-geocoding-spec
  ""
  ([lat float?, lng float?, ] (geocoding-reverse-search lat lng nil))
  ([lat float?, lng float?, optional-params any?]
   (let [res (:data (geocoding-reverse-search-with-http-info lat lng optional-params))]
     (if (:decode-models *api-context*)
        (st/decode response-geocoding-spec res st/string-transformer)
        res))))


(defn-spec geocoding-search-with-http-info any?
  ""
  ([query string?, ] (geocoding-search-with-http-info query nil))
  ([query string?, {:keys [focuslat focuslng withincountry]} (s/map-of keyword? any?)]
   (check-required-params query)
   (call-api "/v4/geocoding/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "focus.lat" focuslat "focus.lng" focuslng "within.country" withincountry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["ApiKey" "ApplicationId"]})))

(defn-spec geocoding-search response-geocoding-spec
  ""
  ([query string?, ] (geocoding-search query nil))
  ([query string?, optional-params any?]
   (let [res (:data (geocoding-search-with-http-info query optional-params))]
     (if (:decode-models *api-context*)
        (st/decode response-geocoding-spec res st/string-transformer)
        res))))


(defn-spec map-info-with-http-info any?
  ""
  []
  (call-api "/v4/map-info" :get
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec map-info response-map-info-spec
  ""
  []
  (let [res (:data (map-info-with-http-info))]
    (if (:decode-models *api-context*)
       (st/decode response-map-info-spec res st/string-transformer)
       res)))


(defn-spec routes-with-http-info any?
  ""
  [request-routes request-routes]
  (check-required-params request-routes)
  (call-api "/v4/routes" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-routes
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec routes response-routes-spec
  ""
  [request-routes request-routes]
  (let [res (:data (routes-with-http-info request-routes))]
    (if (:decode-models *api-context*)
       (st/decode response-routes-spec res st/string-transformer)
       res)))


(defn-spec supported-locations-with-http-info any?
  ""
  [request-supported-locations request-supported-locations]
  (check-required-params request-supported-locations)
  (call-api "/v4/supported-locations" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-supported-locations
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec supported-locations response-supported-locations-spec
  ""
  [request-supported-locations request-supported-locations]
  (let [res (:data (supported-locations-with-http-info request-supported-locations))]
    (if (:decode-models *api-context*)
       (st/decode response-supported-locations-spec res st/string-transformer)
       res)))


(defn-spec time-filter-with-http-info any?
  ""
  [request-time-filter request-time-filter]
  (check-required-params request-time-filter)
  (call-api "/v4/time-filter" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-filter
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-filter response-time-filter-spec
  ""
  [request-time-filter request-time-filter]
  (let [res (:data (time-filter-with-http-info request-time-filter))]
    (if (:decode-models *api-context*)
       (st/decode response-time-filter-spec res st/string-transformer)
       res)))


(defn-spec time-filter-fast-with-http-info any?
  ""
  [request-time-filter-fast request-time-filter-fast]
  (check-required-params request-time-filter-fast)
  (call-api "/v4/time-filter/fast" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-filter-fast
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-filter-fast response-time-filter-fast-spec
  ""
  [request-time-filter-fast request-time-filter-fast]
  (let [res (:data (time-filter-fast-with-http-info request-time-filter-fast))]
    (if (:decode-models *api-context*)
       (st/decode response-time-filter-fast-spec res st/string-transformer)
       res)))


(defn-spec time-filter-postcode-districts-with-http-info any?
  ""
  [request-time-filter-postcode-districts request-time-filter-postcode-districts]
  (check-required-params request-time-filter-postcode-districts)
  (call-api "/v4/time-filter/postcode-districts" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-filter-postcode-districts
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-filter-postcode-districts response-time-filter-postcode-districts-spec
  ""
  [request-time-filter-postcode-districts request-time-filter-postcode-districts]
  (let [res (:data (time-filter-postcode-districts-with-http-info request-time-filter-postcode-districts))]
    (if (:decode-models *api-context*)
       (st/decode response-time-filter-postcode-districts-spec res st/string-transformer)
       res)))


(defn-spec time-filter-postcode-sectors-with-http-info any?
  ""
  [request-time-filter-postcode-sectors request-time-filter-postcode-sectors]
  (check-required-params request-time-filter-postcode-sectors)
  (call-api "/v4/time-filter/postcode-sectors" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-filter-postcode-sectors
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-filter-postcode-sectors response-time-filter-postcode-sectors-spec
  ""
  [request-time-filter-postcode-sectors request-time-filter-postcode-sectors]
  (let [res (:data (time-filter-postcode-sectors-with-http-info request-time-filter-postcode-sectors))]
    (if (:decode-models *api-context*)
       (st/decode response-time-filter-postcode-sectors-spec res st/string-transformer)
       res)))


(defn-spec time-filter-postcodes-with-http-info any?
  ""
  [request-time-filter-postcodes request-time-filter-postcodes]
  (check-required-params request-time-filter-postcodes)
  (call-api "/v4/time-filter/postcodes" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-filter-postcodes
             :content-types ["application/json"]
             :accepts       ["application/json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-filter-postcodes response-time-filter-postcodes-spec
  ""
  [request-time-filter-postcodes request-time-filter-postcodes]
  (let [res (:data (time-filter-postcodes-with-http-info request-time-filter-postcodes))]
    (if (:decode-models *api-context*)
       (st/decode response-time-filter-postcodes-spec res st/string-transformer)
       res)))


(defn-spec time-map-with-http-info any?
  ""
  [request-time-map request-time-map]
  (check-required-params request-time-map)
  (call-api "/v4/time-map" :post
            {:path-params   {}
             :header-params {}
             :query-params  {}
             :form-params   {}
             :body-param    request-time-map
             :content-types ["application/json"]
             :accepts       ["application/json" "application/vnd.wkt+json" "application/vnd.wkt-no-holes+json" "application/vnd.bounding-boxes+json"]
             :auth-names    ["ApiKey" "ApplicationId"]}))

(defn-spec time-map response-time-map-spec
  ""
  [request-time-map request-time-map]
  (let [res (:data (time-map-with-http-info request-time-map))]
    (if (:decode-models *api-context*)
       (st/decode response-time-map-spec res st/string-transformer)
       res)))


