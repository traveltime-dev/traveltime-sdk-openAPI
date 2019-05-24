(ns travel-time-platform-api.specs.request-time-map-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-time-map-property-data
  {
   })

(def request-time-map-property-spec
  (ds/spec
    {:name ::request-time-map-property
     :spec request-time-map-property-data}))
