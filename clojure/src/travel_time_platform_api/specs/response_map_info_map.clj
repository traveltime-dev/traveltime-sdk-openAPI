(ns travel-time-platform-api.specs.response-map-info-map
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-map-info-features :refer :all]
            )
  (:import (java.io File)))


(def response-map-info-map-data
  {
   (ds/req :name) string?
   (ds/req :features) response-map-info-features-spec
   })

(def response-map-info-map-spec
  (ds/spec
    {:name ::response-map-info-map
     :spec response-map-info-map-data}))
