(ns travel-time-platform-api.specs.response-fares
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-fares-breakdown-item :refer :all]
            [travel-time-platform-api.specs.response-fare-ticket :refer :all]
            )
  (:import (java.io File)))


(def response-fares-data
  {
   (ds/req :breakdown) (s/coll-of response-fares-breakdown-item-spec)
   (ds/req :tickets_total) (s/coll-of response-fare-ticket-spec)
   })

(def response-fares-spec
  (ds/spec
    {:name ::response-fares
     :spec response-fares-data}))
