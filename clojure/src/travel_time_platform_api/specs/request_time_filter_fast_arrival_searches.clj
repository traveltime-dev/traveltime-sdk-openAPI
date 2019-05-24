(ns travel-time-platform-api.specs.request-time-filter-fast-arrival-searches
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-many-to-one-search :refer :all]
            [travel-time-platform-api.specs.request-time-filter-fast-arrival-one-to-many-search :refer :all]
            )
  (:import (java.io File)))


(def request-time-filter-fast-arrival-searches-data
  {
   (ds/opt :many_to_one) (s/coll-of request-time-filter-fast-arrival-many-to-one-search-spec)
   (ds/opt :one_to_many) (s/coll-of request-time-filter-fast-arrival-one-to-many-search-spec)
   })

(def request-time-filter-fast-arrival-searches-spec
  (ds/spec
    {:name ::request-time-filter-fast-arrival-searches
     :spec request-time-filter-fast-arrival-searches-data}))
