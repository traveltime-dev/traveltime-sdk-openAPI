(ns travel-time-api.specs.request-time-map-arrival-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.coords :refer :all]
            [travel-time-api.specs.request-transportation :refer :all]
            [travel-time-api.specs.request-time-map-property :refer :all]
            [travel-time-api.specs.request-range-no-max-results :refer :all]
            [travel-time-api.specs.request-level-of-detail :refer :all]
            )
  (:import (java.io File)))


(def request-time-map-arrival-search-data
  {
   (ds/req :id) string?
   (ds/req :coords) coords-spec
   (ds/req :transportation) request-transportation-spec
   (ds/req :travel_time) int?
   (ds/req :arrival_time) inst?
   (ds/opt :properties) (s/coll-of request-time-map-property-spec)
   (ds/opt :range) request-range-no-max-results-spec
   (ds/opt :level_of_detail) request-level-of-detail-spec
   })

(def request-time-map-arrival-search-spec
  (ds/spec
    {:name ::request-time-map-arrival-search
     :spec request-time-map-arrival-search-data}))
