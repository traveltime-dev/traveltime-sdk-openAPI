(ns travel-time-api.specs.request-time-filter-fast-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-filter-fast-property-data
  {
   })

(def request-time-filter-fast-property-spec
  (ds/spec
    {:name ::request-time-filter-fast-property
     :spec request-time-filter-fast-property-data}))
