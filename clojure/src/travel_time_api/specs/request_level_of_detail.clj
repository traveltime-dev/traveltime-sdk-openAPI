(ns travel-time-api.specs.request-level-of-detail
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-level-of-detail-data
  {
   (ds/req :scale_type) string?
   (ds/req :level) string?
   })

(def request-level-of-detail-spec
  (ds/spec
    {:name ::request-level-of-detail
     :spec request-level-of-detail-data}))
