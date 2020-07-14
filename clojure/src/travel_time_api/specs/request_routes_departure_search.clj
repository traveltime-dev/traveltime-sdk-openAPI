(ns travel-time-api.specs.request-routes-departure-search
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-transportation :refer :all]
            [travel-time-api.specs.request-routes-property :refer :all]
            [travel-time-api.specs.request-range-full :refer :all]
            )
  (:import (java.io File)))


(def request-routes-departure-search-data
  {
   (ds/req :id) string?
   (ds/req :departure_location_id) string?
   (ds/req :arrival_location_ids) (s/coll-of string?)
   (ds/req :transportation) request-transportation-spec
   (ds/req :departure_time) inst?
   (ds/req :properties) (s/coll-of request-routes-property-spec)
   (ds/opt :range) request-range-full-spec
   })

(def request-routes-departure-search-spec
  (ds/spec
    {:name ::request-routes-departure-search
     :spec request-routes-departure-search-data}))
