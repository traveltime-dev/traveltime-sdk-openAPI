(ns travel-time-platform-api.specs.response-time-map-bounding-boxes-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-bounding-box :refer :all]
            [travel-time-platform-api.specs.response-time-map-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-bounding-boxes-result-data
  {
   (ds/req :search_id) string?
   (ds/req :bounding_boxes) (s/coll-of response-bounding-box-spec)
   (ds/req :properties) response-time-map-properties-spec
   })

(def response-time-map-bounding-boxes-result-spec
  (ds/spec
    {:name ::response-time-map-bounding-boxes-result
     :spec response-time-map-bounding-boxes-result-data}))
