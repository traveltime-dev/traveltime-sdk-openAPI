(ns travel-time-platform-api.specs.response-geocoding-properties
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-platform-api.specs.response-map-info-features :refer :all]
            )
  (:import (java.io File)))


(def response-geocoding-properties-data
  {
   (ds/req :name) string?
   (ds/req :label) string?
   (ds/opt :score) float?
   (ds/opt :house_number) string?
   (ds/opt :street) string?
   (ds/opt :region) string?
   (ds/opt :region_code) string?
   (ds/opt :neighbourhood) string?
   (ds/opt :county) string?
   (ds/opt :macroregion) string?
   (ds/opt :city) string?
   (ds/opt :country) string?
   (ds/opt :country_code) string?
   (ds/opt :continent) string?
   (ds/opt :postcode) string?
   (ds/opt :features) response-map-info-features-spec
   })

(def response-geocoding-properties-spec
  (ds/spec
    {:name ::response-geocoding-properties
     :spec response-geocoding-properties-data}))
