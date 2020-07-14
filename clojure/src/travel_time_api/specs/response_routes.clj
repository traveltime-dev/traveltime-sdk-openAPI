(ns travel-time-api.specs.response-routes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-routes-result :refer :all]
            )
  (:import (java.io File)))


(def response-routes-data
  {
   (ds/req :results) (s/coll-of response-routes-result-spec)
   })

(def response-routes-spec
  (ds/spec
    {:name ::response-routes
     :spec response-routes-data}))
