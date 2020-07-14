(ns travel-time-api.specs.response-time-filter-postcode-sector-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-travel-time-statistics :refer :all]
            [travel-time-api.specs.response-travel-time-statistics :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-sector-properties-data
  {
   (ds/opt :travel_time_reachable) response-travel-time-statistics-spec
   (ds/opt :travel_time_all) response-travel-time-statistics-spec
   (ds/opt :coverage) float?
   })

(def response-time-filter-postcode-sector-properties-spec
  (ds/spec
    {:name ::response-time-filter-postcode-sector-properties
     :spec response-time-filter-postcode-sector-properties-data}))
