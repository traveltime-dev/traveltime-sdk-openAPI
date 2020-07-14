(ns travel-time-api.specs.response-routes-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-routes-properties :refer :all]
            )
  (:import (java.io File)))


(def response-routes-location-data
  {
   (ds/req :id) string?
   (ds/req :properties) (s/coll-of response-routes-properties-spec)
   })

(def response-routes-location-spec
  (ds/spec
    {:name ::response-routes-location
     :spec response-routes-location-data}))
