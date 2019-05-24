(ns travel-time-platform-api.specs.request-time-filter
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-location :refer :all]
            [travel-time-platform-api.specs.request-time-filter-departure-search :refer :all]
            [travel-time-platform-api.specs.request-time-filter-arrival-search :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-data
  {
   (ds/req :locations) (s/coll-of request-location-spec)
   (ds/opt :departure_searches) (s/coll-of request-time-filter-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-time-filter-arrival-search-spec)
   })

(def request-time-filter-spec
  (ds/spec
    {:name ::request-time-filter
     :spec request-time-filter-data}))
