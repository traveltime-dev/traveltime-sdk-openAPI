(ns travel-time-api.specs.request-time-filter-postcode-sectors
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-time-filter-postcode-sectors-departure-search :refer :all]
            [travel-time-api.specs.request-time-filter-postcode-sectors-arrival-search :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-postcode-sectors-data
  {
   (ds/opt :departure_searches) (s/coll-of request-time-filter-postcode-sectors-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-time-filter-postcode-sectors-arrival-search-spec)
   })

(def request-time-filter-postcode-sectors-spec
  (ds/spec
    {:name ::request-time-filter-postcode-sectors
     :spec request-time-filter-postcode-sectors-data}))
