(ns travel-time-platform-api.specs.response-routes-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-routes-location :refer :all]
            )
  (:import (java.io File)))


(def response-routes-result-data
  {
   (ds/req :search_id) string?
   (ds/req :locations) (s/coll-of response-routes-location-spec)
   (ds/req :unreachable) (s/coll-of string?)
   })

(def response-routes-result-spec
  (ds/spec
    {:name ::response-routes-result
     :spec response-routes-result-data}))
