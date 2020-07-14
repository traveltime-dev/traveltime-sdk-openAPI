(ns travel-time-api.specs.response-time-map-bounding-boxes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-map-bounding-boxes-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-bounding-boxes-data
  {
   (ds/req :results) (s/coll-of response-time-map-bounding-boxes-result-spec)
   })

(def response-time-map-bounding-boxes-spec
  (ds/spec
    {:name ::response-time-map-bounding-boxes
     :spec response-time-map-bounding-boxes-data}))
