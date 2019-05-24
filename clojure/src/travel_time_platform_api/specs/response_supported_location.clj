(ns travel-time-platform-api.specs.response-supported-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-supported-location-data
  {
   (ds/req :id) string?
   (ds/req :map_name) string?
   })

(def response-supported-location-spec
  (ds/spec
    {:name ::response-supported-location
     :spec response-supported-location-data}))
