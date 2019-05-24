(ns travel-time-platform-api.specs.response-time-map-wkt
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-map-wkt-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-wkt-data
  {
   (ds/req :results) (s/coll-of response-time-map-wkt-result-spec)
   })

(def response-time-map-wkt-spec
  (ds/spec
    {:name ::response-time-map-wkt
     :spec response-time-map-wkt-data}))
