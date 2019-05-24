(ns travel-time-platform-api.specs.request-time-filter-postcode-districts-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-filter-postcode-districts-property-data
  {
   })

(def request-time-filter-postcode-districts-property-spec
  (ds/spec
    {:name ::request-time-filter-postcode-districts-property
     :spec request-time-filter-postcode-districts-property-data}))
