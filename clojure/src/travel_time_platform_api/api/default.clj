(ns travel-time-platform-api.api.default
  (:require [travel-time-platform-api.core :refer [call-api check-required-params with-collection-format]])
  (:import (java.io File)))

(defn geocoding-reverse-search-with-http-info
  ""
  ([focuslat focuslng ] (geocoding-reverse-search-with-http-info focuslat focuslng nil))
  ([focuslat focuslng {:keys [withincountry ]}]
   (check-required-params focuslat focuslng)
   (call-api "/v4/geocoding/reverse" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"focus.lat" focuslat "focus.lng" focuslng "within.country" withincountry }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["ApiKey" "ApplicationId"]})))

(defn geocoding-reverse-search
  ""
  ([focuslat focuslng ] (geocoding-reverse-search focuslat focuslng nil))
  ([focuslat focuslng optional-params]
   (:data (geocoding-reverse-search-with-http-info focuslat focuslng optional-params))))

(defn geocoding-search-with-http-info
  ""
  ([query ] (geocoding-search-with-http-info query nil))
  ([query {:keys [withincountry focuslat focuslng ]}]
   (check-required-params query)
   (call-api "/v4/geocoding/search" :get
             {:path-params   {}
              :header-params {}
              :query-params  {"query" query "within.country" withincountry "focus.lat" focuslat "focus.lng" focuslng }
              :form-params   {}
              :content-types []
              :accepts       ["application/json"]
              :auth-names    ["ApiKey" "ApplicationId"]})))

(defn geocoding-search
  ""
  ([query ] (geocoding-search query nil))
  ([query optional-params]
   (:data (geocoding-search-with-http-info query optional-params))))

(defn map-info-with-http-info
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

(defn map-info
  ""
  []
  (:data (map-info-with-http-info)))

(defn routes-with-http-info
  ""
  [request-routes ]
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

(defn routes
  ""
  [request-routes ]
  (:data (routes-with-http-info request-routes)))

(defn supported-locations-with-http-info
  ""
  [request-supported-locations ]
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

(defn supported-locations
  ""
  [request-supported-locations ]
  (:data (supported-locations-with-http-info request-supported-locations)))

(defn time-filter-with-http-info
  ""
  [request-time-filter ]
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

(defn time-filter
  ""
  [request-time-filter ]
  (:data (time-filter-with-http-info request-time-filter)))

(defn time-filter-fast-with-http-info
  ""
  [request-time-filter-fast ]
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

(defn time-filter-fast
  ""
  [request-time-filter-fast ]
  (:data (time-filter-fast-with-http-info request-time-filter-fast)))

(defn time-filter-postcode-districts-with-http-info
  ""
  [request-time-filter-postcode-districts ]
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

(defn time-filter-postcode-districts
  ""
  [request-time-filter-postcode-districts ]
  (:data (time-filter-postcode-districts-with-http-info request-time-filter-postcode-districts)))

(defn time-filter-postcode-sectors-with-http-info
  ""
  [request-time-filter-postcode-sectors ]
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

(defn time-filter-postcode-sectors
  ""
  [request-time-filter-postcode-sectors ]
  (:data (time-filter-postcode-sectors-with-http-info request-time-filter-postcode-sectors)))

(defn time-filter-postcodes-with-http-info
  ""
  [request-time-filter-postcodes ]
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

(defn time-filter-postcodes
  ""
  [request-time-filter-postcodes ]
  (:data (time-filter-postcodes-with-http-info request-time-filter-postcodes)))

(defn time-map-with-http-info
  ""
  [request-time-map ]
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

(defn time-map
  ""
  [request-time-map ]
  (:data (time-map-with-http-info request-time-map)))

