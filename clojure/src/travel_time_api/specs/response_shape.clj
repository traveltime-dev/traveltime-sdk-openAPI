(ns travel-time-api.specs.response-shape
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.coords :refer :all]
            )
  (:import (java.io File)))


(def response-shape-data
  {
   (ds/req :shell) (s/coll-of coords-spec)
   (ds/req :holes) (s/coll-of (s/coll-of coords-spec))
   })

(def response-shape-spec
  (ds/spec
    {:name ::response-shape
     :spec response-shape-data}))
