(ns travel-time-api.specs.response-travel-time-statistics
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-travel-time-statistics-data
  {
   (ds/req :min) int?
   (ds/req :max) int?
   (ds/req :mean) int?
   (ds/req :median) int?
   })

(def response-travel-time-statistics-spec
  (ds/spec
    {:name ::response-travel-time-statistics
     :spec response-travel-time-statistics-data}))
