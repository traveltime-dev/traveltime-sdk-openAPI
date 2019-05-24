(ns travel-time-platform-api.specs.response-map-info-features-public-transport
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-map-info-features-public-transport-data
  {
   (ds/req :date_start) inst?
   (ds/req :date_end) inst?
   })

(def response-map-info-features-public-transport-spec
  (ds/spec
    {:name ::response-map-info-features-public-transport
     :spec response-map-info-features-public-transport-data}))
