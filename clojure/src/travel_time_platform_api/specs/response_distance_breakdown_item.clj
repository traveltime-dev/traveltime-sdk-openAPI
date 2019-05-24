(ns travel-time-platform-api.specs.response-distance-breakdown-item
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-transportation-mode :refer :all]
            )
  (:import (java.io File)))


(def response-distance-breakdown-item-data
  {
   (ds/req :mode) response-transportation-mode-spec
   (ds/req :distance) int?
   })

(def response-distance-breakdown-item-spec
  (ds/spec
    {:name ::response-distance-breakdown-item
     :spec response-distance-breakdown-item-data}))
