(ns travel-time-platform-api.specs.request-time-filter-postcode-districts
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-departure-search :refer :all]
            [travel-time-platform-api.specs.request-time-filter-postcode-districts-arrival-search :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-postcode-districts-data
  {
   (ds/opt :departure_searches) (s/coll-of request-time-filter-postcode-districts-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-time-filter-postcode-districts-arrival-search-spec)
   })

(def request-time-filter-postcode-districts-spec
  (ds/spec
    {:name ::request-time-filter-postcode-districts
     :spec request-time-filter-postcode-districts-data}))
