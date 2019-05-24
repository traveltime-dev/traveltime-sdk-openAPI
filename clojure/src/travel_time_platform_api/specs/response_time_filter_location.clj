(ns travel-time-platform-api.specs.response-time-filter-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-location-data
  {
   (ds/req :id) string?
   (ds/req :properties) (s/coll-of response-time-filter-properties-spec)
   })

(def response-time-filter-location-spec
  (ds/spec
    {:name ::response-time-filter-location
     :spec response-time-filter-location-data}))
