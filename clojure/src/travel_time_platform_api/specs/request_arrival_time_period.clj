(ns travel-time-platform-api.specs.request-arrival-time-period
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-arrival-time-period-data
  {
   })

(def request-arrival-time-period-spec
  (ds/spec
    {:name ::request-arrival-time-period
     :spec request-arrival-time-period-data}))
