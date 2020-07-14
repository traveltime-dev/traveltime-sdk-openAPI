(ns travel-time-api.specs.response-routes-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-fares :refer :all]
            [travel-time-api.specs.response-route :refer :all]
            )
  (:import (java.io File)))


(def response-routes-properties-data
  {
   (ds/opt :travel_time) int?
   (ds/opt :distance) int?
   (ds/opt :fares) response-fares-spec
   (ds/opt :route) response-route-spec
   })

(def response-routes-properties-spec
  (ds/spec
    {:name ::response-routes-properties
     :spec response-routes-properties-data}))
