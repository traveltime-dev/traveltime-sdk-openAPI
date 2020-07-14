(ns travel-time-api.specs.response-supported-locations
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-supported-location :refer :all]
            )
  (:import (java.io File)))


(def response-supported-locations-data
  {
   (ds/req :locations) (s/coll-of response-supported-location-spec)
   (ds/req :unsupported_locations) (s/coll-of string?)
   })

(def response-supported-locations-spec
  (ds/spec
    {:name ::response-supported-locations
     :spec response-supported-locations-data}))
