(ns travel-time-platform-api.specs.response-time-filter-fast-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-fast-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-fast-location-data
  {
   (ds/req :id) string?
   (ds/req :properties) (s/coll-of response-time-filter-fast-properties-spec)
   })

(def response-time-filter-fast-location-spec
  (ds/spec
    {:name ::response-time-filter-fast-location
     :spec response-time-filter-fast-location-data}))
