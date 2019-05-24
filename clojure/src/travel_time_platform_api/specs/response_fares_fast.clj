(ns travel-time-platform-api.specs.response-fares-fast
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-fare-ticket :refer :all]
            )
  (:import (java.io File)))


(def response-fares-fast-data
  {
   (ds/req :tickets_total) (s/coll-of response-fare-ticket-spec)
   })

(def response-fares-fast-spec
  (ds/spec
    {:name ::response-fares-fast
     :spec response-fares-fast-data}))
