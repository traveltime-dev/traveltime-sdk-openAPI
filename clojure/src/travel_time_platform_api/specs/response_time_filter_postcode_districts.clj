(ns travel-time-platform-api.specs.response-time-filter-postcode-districts
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-postcode-districts-result :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-districts-data
  {
   (ds/req :results) (s/coll-of response-time-filter-postcode-districts-result-spec)
   })

(def response-time-filter-postcode-districts-spec
  (ds/spec
    {:name ::response-time-filter-postcode-districts
     :spec response-time-filter-postcode-districts-data}))
