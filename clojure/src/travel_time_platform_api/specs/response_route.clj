(ns travel-time-platform-api.specs.response-route
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-route-part :refer :all]
            )
  (:import (java.io File)))


(def response-route-data
  {
   (ds/req :departure_time) inst?
   (ds/req :arrival_time) inst?
   (ds/req :parts) (s/coll-of response-route-part-spec)
   })

(def response-route-spec
  (ds/spec
    {:name ::response-route
     :spec response-route-data}))
