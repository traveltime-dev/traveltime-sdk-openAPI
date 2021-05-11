(ns travel-time-api.specs.response-time-filter-postcode
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-postcodes-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-data
  {
   (ds/req :code) string?
   (ds/req :properties) (s/coll-of response-time-filter-postcodes-properties-spec)
   })

(def response-time-filter-postcode-spec
  (ds/spec
    {:name ::response-time-filter-postcode
     :spec response-time-filter-postcode-data}))
