(ns travel-time-api.specs.response-map-info
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-map-info-map :refer :all]
            )
  (:import (java.io File)))


(def response-map-info-data
  {
   (ds/req :maps) (s/coll-of response-map-info-map-spec)
   })

(def response-map-info-spec
  (ds/spec
    {:name ::response-map-info
     :spec response-map-info-data}))
