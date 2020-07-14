(ns travel-time-api.specs.request-routes-arrival-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-transportation :refer :all]
            [travel-time-api.specs.request-routes-property :refer :all]
            [travel-time-api.specs.request-range-full :refer :all]
            )
  (:import (java.io File)))


(def request-routes-arrival-search-data
  {
   (ds/req :id) string?
   (ds/req :departure_location_ids) (s/coll-of string?)
   (ds/req :arrival_location_id) string?
   (ds/req :transportation) request-transportation-spec
   (ds/req :arrival_time) inst?
   (ds/req :properties) (s/coll-of request-routes-property-spec)
   (ds/opt :range) request-range-full-spec
   })

(def request-routes-arrival-search-spec
  (ds/spec
    {:name ::request-routes-arrival-search
     :spec request-routes-arrival-search-data}))
