(ns travel-time-api.specs.request-union-on-intersection
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-union-on-intersection-data
  {
   (ds/req :id) string?
   (ds/req :search_ids) (s/coll-of string?)
   })

(def request-union-on-intersection-spec
  (ds/spec
    {:name ::request-union-on-intersection
     :spec request-union-on-intersection-data}))
