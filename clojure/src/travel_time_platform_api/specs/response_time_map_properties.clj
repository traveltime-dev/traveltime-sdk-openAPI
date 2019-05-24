(ns travel-time-platform-api.specs.response-time-map-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-time-map-properties-data
  {
   (ds/opt :is_only_walking) boolean?
   })

(def response-time-map-properties-spec
  (ds/spec
    {:name ::response-time-map-properties
     :spec response-time-map-properties-data}))
