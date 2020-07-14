(ns travel-time-api.specs.request-time-filter-postcodes-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-filter-postcodes-property-data
  {
   })

(def request-time-filter-postcodes-property-spec
  (ds/spec
    {:name ::request-time-filter-postcodes-property
     :spec request-time-filter-postcodes-property-data}))
