(ns travel-time-platform-api.specs.response-time-filter-postcode-districts-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-postcode-district :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-districts-result-data
  {
   (ds/req :search_id) string?
   (ds/req :districts) (s/coll-of response-time-filter-postcode-district-spec)
   })

(def response-time-filter-postcode-districts-result-spec
  (ds/spec
    {:name ::response-time-filter-postcode-districts-result
     :spec response-time-filter-postcode-districts-result-data}))
