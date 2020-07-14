(ns travel-time-api.specs.response-time-filter-postcodes-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-postcode :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcodes-result-data
  {
   (ds/req :search_id) string?
   (ds/req :postcodes) (s/coll-of response-time-filter-postcode-spec)
   })

(def response-time-filter-postcodes-result-spec
  (ds/spec
    {:name ::response-time-filter-postcodes-result
     :spec response-time-filter-postcodes-result-data}))
