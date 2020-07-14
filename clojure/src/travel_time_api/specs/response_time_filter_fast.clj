(ns travel-time-api.specs.response-time-filter-fast
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-fast-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-fast-data
  {
   (ds/req :results) (s/coll-of response-time-filter-fast-result-spec)
   })

(def response-time-filter-fast-spec
  (ds/spec
    {:name ::response-time-filter-fast
     :spec response-time-filter-fast-data}))
