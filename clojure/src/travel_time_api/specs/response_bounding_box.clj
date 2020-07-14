(ns travel-time-api.specs.response-bounding-box
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-box :refer :all]
            [travel-time-api.specs.response-box :refer :all]
            )
  (:import (java.io File)))


(def response-bounding-box-data
  {
   (ds/req :envelope) response-box-spec
   (ds/req :boxes) (s/coll-of response-box-spec)
   })

(def response-bounding-box-spec
  (ds/spec
    {:name ::response-bounding-box
     :spec response-bounding-box-data}))
