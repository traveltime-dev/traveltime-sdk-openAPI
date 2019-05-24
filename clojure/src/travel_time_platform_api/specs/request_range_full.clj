(ns travel-time-platform-api.specs.request-range-full
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-range-full-data
  {
   (ds/req :enabled) boolean?
   (ds/req :max_results) int?
   (ds/req :width) int?
   })

(def request-range-full-spec
  (ds/spec
    {:name ::request-range-full
     :spec request-range-full-data}))
