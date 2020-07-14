(ns travel-time-api.specs.response-time-filter-fast-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-fares-fast :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-fast-properties-data
  {
   (ds/opt :travel_time) int?
   (ds/opt :fares) response-fares-fast-spec
   })

(def response-time-filter-fast-properties-spec
  (ds/spec
    {:name ::response-time-filter-fast-properties
     :spec response-time-filter-fast-properties-data}))
