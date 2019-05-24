(ns travel-time-platform-api.specs.request-supported-locations
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-location :refer :all]
            )
  (:import (java.io File)))


(def request-supported-locations-data
  {
   (ds/req :locations) (s/coll-of request-location-spec)
   })

(def request-supported-locations-spec
  (ds/spec
    {:name ::request-supported-locations
     :spec request-supported-locations-data}))
