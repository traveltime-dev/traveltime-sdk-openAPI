(ns travel-time-platform-api.specs.request-time-filter-fast-arrival-one-to-many-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-transportation-fast :refer :all]
            [travel-time-platform-api.specs.request-arrival-time-period :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-property :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-fast-arrival-one-to-many-search-data
  {
   (ds/req :id) string?
   (ds/req :departure_location_id) string?
   (ds/req :arrival_location_ids) (s/coll-of string?)
   (ds/req :transportation) request-transportation-fast-spec
   (ds/req :travel_time) int?
   (ds/req :arrival_time_period) request-arrival-time-period-spec
   (ds/req :properties) (s/coll-of request-time-filter-fast-property-spec)
   })

(def request-time-filter-fast-arrival-one-to-many-search-spec
  (ds/spec
    {:name ::request-time-filter-fast-arrival-one-to-many-search
     :spec request-time-filter-fast-arrival-one-to-many-search-data}))
