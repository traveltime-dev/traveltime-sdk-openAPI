(ns travel-time-api.specs.request-time-filter-postcode-sectors-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-filter-postcode-sectors-property-data
  {
   })

(def request-time-filter-postcode-sectors-property-spec
  (ds/spec
    {:name ::request-time-filter-postcode-sectors-property
     :spec request-time-filter-postcode-sectors-property-data}))
