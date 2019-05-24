(ns travel-time-platform-api.specs.request-location
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.coords :refer :all]
            )
  (:import (java.io File)))


(def request-location-data
  {
   (ds/req :id) string?
   (ds/req :coords) coords-spec
   })

(def request-location-spec
  (ds/spec
    {:name ::request-location
     :spec request-location-data}))
