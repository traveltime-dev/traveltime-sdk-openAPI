(ns travel-time-platform-api.specs.response-time-filter-postcode-sectors-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-time-filter-postcode-sector :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-sectors-result-data
  {
   (ds/req :search_id) string?
   (ds/req :sectors) (s/coll-of response-time-filter-postcode-sector-spec)
   })

(def response-time-filter-postcode-sectors-result-spec
  (ds/spec
    {:name ::response-time-filter-postcode-sectors-result
     :spec response-time-filter-postcode-sectors-result-data}))
