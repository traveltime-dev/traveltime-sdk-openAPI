(ns travel-time-api.specs.response-time-filter-postcode-sectors
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-postcode-sectors-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-sectors-data
  {
   (ds/req :results) (s/coll-of response-time-filter-postcode-sectors-result-spec)
   })

(def response-time-filter-postcode-sectors-spec
  (ds/spec
    {:name ::response-time-filter-postcode-sectors
     :spec response-time-filter-postcode-sectors-data}))
