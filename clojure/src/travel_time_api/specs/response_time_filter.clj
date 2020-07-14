(ns travel-time-api.specs.response-time-filter
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-data
  {
   (ds/req :results) (s/coll-of response-time-filter-result-spec)
   })

(def response-time-filter-spec
  (ds/spec
    {:name ::response-time-filter
     :spec response-time-filter-data}))
