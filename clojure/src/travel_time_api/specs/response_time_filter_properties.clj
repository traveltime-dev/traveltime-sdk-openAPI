(ns travel-time-api.specs.response-time-filter-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-distance-breakdown-item :refer :all]
            [travel-time-api.specs.response-fares :refer :all]
            [travel-time-api.specs.response-route :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-properties-data
  {
   (ds/opt :travel_time) int?
   (ds/opt :distance) int?
   (ds/opt :distance_breakdown) (s/coll-of response-distance-breakdown-item-spec)
   (ds/opt :fares) response-fares-spec
   (ds/opt :route) response-route-spec
   })

(def response-time-filter-properties-spec
  (ds/spec
    {:name ::response-time-filter-properties
     :spec response-time-filter-properties-data}))
