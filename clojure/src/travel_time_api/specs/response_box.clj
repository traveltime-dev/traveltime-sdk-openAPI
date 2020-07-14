(ns travel-time-api.specs.response-box
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-box-data
  {
   (ds/req :min_lat) float?
   (ds/req :max_lat) float?
   (ds/req :min_lng) float?
   (ds/req :max_lng) float?
   })

(def response-box-spec
  (ds/spec
    {:name ::response-box
     :spec response-box-data}))
