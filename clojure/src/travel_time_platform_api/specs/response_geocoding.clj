(ns travel-time-platform-api.specs.response-geocoding
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-geocoding-geo-json-feature :refer :all]
            )
  (:import (java.io File)))


(def response-geocoding-data
  {
   (ds/req :type) string?
   (ds/req :features) (s/coll-of response-geocoding-geo-json-feature-spec)
   })

(def response-geocoding-spec
  (ds/spec
    {:name ::response-geocoding
     :spec response-geocoding-data}))
