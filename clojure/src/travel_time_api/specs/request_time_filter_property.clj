(ns travel-time-api.specs.request-time-filter-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-filter-property-data
  {
   })

(def request-time-filter-property-spec
  (ds/spec
    {:name ::request-time-filter-property
     :spec request-time-filter-property-data}))
