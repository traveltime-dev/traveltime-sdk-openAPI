(ns travel-time-api.specs.request-time-filter-postcodes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-time-filter-postcodes-departure-search :refer :all]
            [travel-time-api.specs.request-time-filter-postcodes-arrival-search :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-postcodes-data
  {
   (ds/opt :departure_searches) (s/coll-of request-time-filter-postcodes-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-time-filter-postcodes-arrival-search-spec)
   })

(def request-time-filter-postcodes-spec
  (ds/spec
    {:name ::request-time-filter-postcodes
     :spec request-time-filter-postcodes-data}))
