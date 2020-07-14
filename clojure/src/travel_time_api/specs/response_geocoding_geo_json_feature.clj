(ns travel-time-api.specs.response-geocoding-geo-json-feature
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-geocoding-geometry :refer :all]
            [travel-time-api.specs.response-geocoding-properties :refer :all]
            )
  (:import (java.io File)))


(def response-geocoding-geo-json-feature-data
  {
   (ds/req :type) string?
   (ds/req :geometry) response-geocoding-geometry-spec
   (ds/req :properties) response-geocoding-properties-spec
   })

(def response-geocoding-geo-json-feature-spec
  (ds/spec
    {:name ::response-geocoding-geo-json-feature
     :spec response-geocoding-geo-json-feature-data}))
