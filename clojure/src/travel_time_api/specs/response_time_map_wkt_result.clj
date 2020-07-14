(ns travel-time-api.specs.response-time-map-wkt-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-map-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-wkt-result-data
  {
   (ds/req :search_id) string?
   (ds/req :shape) string?
   (ds/req :properties) response-time-map-properties-spec
   })

(def response-time-map-wkt-result-spec
  (ds/spec
    {:name ::response-time-map-wkt-result
     :spec response-time-map-wkt-result-data}))
