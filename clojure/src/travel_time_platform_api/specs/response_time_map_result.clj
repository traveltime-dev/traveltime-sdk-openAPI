(ns travel-time-platform-api.specs.response-time-map-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-shape :refer :all]
            [travel-time-platform-api.specs.response-time-map-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-result-data
  {
   (ds/req :search_id) string?
   (ds/req :shapes) (s/coll-of response-shape-spec)
   (ds/req :properties) response-time-map-properties-spec
   })

(def response-time-map-result-spec
  (ds/spec
    {:name ::response-time-map-result
     :spec response-time-map-result-data}))
