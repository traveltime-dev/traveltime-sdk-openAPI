(ns travel-time-platform-api.specs.response-time-filter-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-location :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-result-data
  {
   (ds/req :search_id) string?
   (ds/req :locations) (s/coll-of response-time-filter-location-spec)
   (ds/req :unreachable) (s/coll-of string?)
   })

(def response-time-filter-result-spec
  (ds/spec
    {:name ::response-time-filter-result
     :spec response-time-filter-result-data}))
