(ns travel-time-platform-api.specs.request-time-map
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.request-time-map-departure-search :refer :all]
            [travel-time-platform-api.specs.request-time-map-arrival-search :refer :all]
            [travel-time-platform-api.specs.request-union-on-intersection :refer :all]
            [travel-time-platform-api.specs.request-union-on-intersection :refer :all]
            )
  (:import (java.io File)))


(def request-time-map-data
  {
   (ds/opt :departure_searches) (s/coll-of request-time-map-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-time-map-arrival-search-spec)
   (ds/opt :unions) (s/coll-of request-union-on-intersection-spec)
   (ds/opt :intersections) (s/coll-of request-union-on-intersection-spec)
   })

(def request-time-map-spec
  (ds/spec
    {:name ::request-time-map
     :spec request-time-map-data}))
