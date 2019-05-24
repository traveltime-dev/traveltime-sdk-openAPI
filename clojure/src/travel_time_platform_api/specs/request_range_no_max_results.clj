(ns travel-time-platform-api.specs.request-range-no-max-results
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-range-no-max-results-data
  {
   (ds/req :enabled) boolean?
   (ds/req :width) int?
   })

(def request-range-no-max-results-spec
  (ds/spec
    {:name ::request-range-no-max-results
     :spec request-range-no-max-results-data}))
