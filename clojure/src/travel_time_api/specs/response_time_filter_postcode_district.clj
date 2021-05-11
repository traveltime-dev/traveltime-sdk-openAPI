(ns travel-time-api.specs.response-time-filter-postcode-district
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-time-filter-postcode-district-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-district-data
  {
   (ds/req :code) string?
   (ds/req :properties) response-time-filter-postcode-district-properties-spec
   })

(def response-time-filter-postcode-district-spec
  (ds/spec
    {:name ::response-time-filter-postcode-district
     :spec response-time-filter-postcode-district-data}))
