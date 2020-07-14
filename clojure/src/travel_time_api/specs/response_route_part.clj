(ns travel-time-api.specs.response-route-part
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-transportation-mode :refer :all]
            [travel-time-api.specs.coords :refer :all]
            )
  (:import (java.io File)))


(def response-route-part-data
  {
   (ds/req :id) string?
   (ds/req :type) string?
   (ds/req :mode) response-transportation-mode-spec
   (ds/req :directions) string?
   (ds/req :distance) int?
   (ds/req :travel_time) int?
   (ds/req :coords) (s/coll-of coords-spec)
   (ds/opt :direction) string?
   (ds/opt :road) string?
   (ds/opt :turn) string?
   (ds/opt :line) string?
   (ds/opt :departure_station) string?
   (ds/opt :arrival_station) string?
   (ds/opt :departs_at) string?
   (ds/opt :arrives_at) string?
   (ds/opt :num_stops) int?
   })

(def response-route-part-spec
  (ds/spec
    {:name ::response-route-part
     :spec response-route-part-data}))
