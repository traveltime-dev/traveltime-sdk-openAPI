(ns travel-time-platform-api.specs.response-time-filter-postcodes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-postcodes-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcodes-data
  {
   (ds/req :results) (s/coll-of response-time-filter-postcodes-result-spec)
   })

(def response-time-filter-postcodes-spec
  (ds/spec
    {:name ::response-time-filter-postcodes
     :spec response-time-filter-postcodes-data}))
