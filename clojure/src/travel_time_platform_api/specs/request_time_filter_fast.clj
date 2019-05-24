(ns travel-time-platform-api.specs.request-time-filter-fast
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-location :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-searches :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-fast-data
  {
   (ds/req :locations) (s/coll-of request-location-spec)
   (ds/req :arrival_searches) request-time-filter-fast-arrival-searches-spec
   })

(def request-time-filter-fast-spec
  (ds/spec
    {:name ::request-time-filter-fast
     :spec request-time-filter-fast-data}))
