(ns travel-time-platform-api.specs.response-time-map
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-map-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-map-data
  {
   (ds/req :results) (s/coll-of response-time-map-result-spec)
   })

(def response-time-map-spec
  (ds/spec
    {:name ::response-time-map
     :spec response-time-map-data}))
