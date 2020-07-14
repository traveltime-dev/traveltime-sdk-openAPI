(ns travel-time-api.specs.request-time-filter-postcode-districts-arrival-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-transportation :refer :all]
            [travel-time-api.specs.request-time-filter-postcode-districts-property :refer :all]
            [travel-time-api.specs.request-range-full :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-postcode-districts-arrival-search-data
  {
   (ds/req :id) string?
   (ds/req :transportation) request-transportation-spec
   (ds/req :travel_time) int?
   (ds/req :arrival_time) inst?
   (ds/req :reachable_postcodes_threshold) float?
   (ds/req :properties) (s/coll-of request-time-filter-postcode-districts-property-spec)
   (ds/opt :range) request-range-full-spec
   })

(def request-time-filter-postcode-districts-arrival-search-spec
  (ds/spec
    {:name ::request-time-filter-postcode-districts-arrival-search
     :spec request-time-filter-postcode-districts-arrival-search-data}))
