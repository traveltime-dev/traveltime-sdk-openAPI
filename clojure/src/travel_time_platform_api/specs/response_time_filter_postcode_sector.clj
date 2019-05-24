(ns travel-time-platform-api.specs.response-time-filter-postcode-sector
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.string :refer :all]
            [travel-time-platform-api.specs.response-time-filter-postcode-sector-properties :refer :all]
            )
  (:import (java.io File)))


(def response-time-filter-postcode-sector-data
  {
   (ds/req :code) string?-spec
   (ds/req :properties) response-time-filter-postcode-sector-properties-spec
   })

(def response-time-filter-postcode-sector-spec
  (ds/spec
    {:name ::response-time-filter-postcode-sector
     :spec response-time-filter-postcode-sector-data}))
