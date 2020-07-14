(ns travel-time-api.specs.request-routes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.request-location :refer :all]
            [travel-time-api.specs.request-routes-departure-search :refer :all]
            [travel-time-api.specs.request-routes-arrival-search :refer :all]
            )
  (:import (java.io File)))


(def request-routes-data
  {
   (ds/req :locations) (s/coll-of request-location-spec)
   (ds/opt :departure_searches) (s/coll-of request-routes-departure-search-spec)
   (ds/opt :arrival_searches) (s/coll-of request-routes-arrival-search-spec)
   })

(def request-routes-spec
  (ds/spec
    {:name ::request-routes
     :spec request-routes-data}))
