(ns travel-time-platform-api.specs.response-time-filter-postcodes-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-time-filter-postcodes-properties-data
  {
   (ds/opt :travel_time) int?
   (ds/opt :distance) int?
   })

(def response-time-filter-postcodes-properties-spec
  (ds/spec
    {:name ::response-time-filter-postcodes-properties
     :spec response-time-filter-postcodes-properties-data}))
