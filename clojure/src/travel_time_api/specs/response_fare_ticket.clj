(ns travel-time-api.specs.response-fare-ticket
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-fare-ticket-data
  {
   (ds/req :type) string?
   (ds/req :price) float?
   (ds/req :currency) string?
   })

(def response-fare-ticket-spec
  (ds/spec
    {:name ::response-fare-ticket
     :spec response-fare-ticket-data}))
