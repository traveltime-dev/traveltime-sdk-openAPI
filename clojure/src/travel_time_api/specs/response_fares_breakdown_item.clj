(ns travel-time-api.specs.response-fares-breakdown-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-transportation-mode :refer :all]
            [travel-time-api.specs.response-fare-ticket :refer :all]
            )
  (:import (java.io File)))


(def response-fares-breakdown-item-data
  {
   (ds/req :modes) (s/coll-of response-transportation-mode-spec)
   (ds/req :route_part_ids) (s/coll-of int?)
   (ds/req :tickets) (s/coll-of response-fare-ticket-spec)
   })

(def response-fares-breakdown-item-spec
  (ds/spec
    {:name ::response-fares-breakdown-item
     :spec response-fares-breakdown-item-data}))
