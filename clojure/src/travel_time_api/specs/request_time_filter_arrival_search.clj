(ns travel-time-api.specs.request-time-filter-arrival-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-transportation :refer :all]
            [travel-time-api.specs.request-time-filter-property :refer :all]
            [travel-time-api.specs.request-range-full :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-arrival-search-data
  {
   (ds/req :id) string?
   (ds/req :departure_location_ids) (s/coll-of string?)
   (ds/req :arrival_location_id) string?
   (ds/req :transportation) request-transportation-spec
   (ds/req :travel_time) int?
   (ds/req :arrival_time) inst?
   (ds/req :properties) (s/coll-of request-time-filter-property-spec)
   (ds/opt :range) request-range-full-spec
   })

(def request-time-filter-arrival-search-spec
  (ds/spec
    {:name ::request-time-filter-arrival-search
     :spec request-time-filter-arrival-search-data}))
