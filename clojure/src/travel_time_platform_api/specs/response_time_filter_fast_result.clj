(ns travel-time-platform-api.specs.response-time-filter-fast-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-fast-location :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-fast-result-data
  {
   (ds/req :search_id) string?
   (ds/req :locations) (s/coll-of response-time-filter-fast-location-spec)
   (ds/req :unreachable) (s/coll-of string?)
   })

(def response-time-filter-fast-result-spec
  (ds/spec
    {:name ::response-time-filter-fast-result
     :spec response-time-filter-fast-result-data}))
