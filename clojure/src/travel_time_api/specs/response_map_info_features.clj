(ns travel-time-api.specs.response-map-info-features
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [travel-time-api.specs.response-map-info-features-public-transport :refer :all]
            )
  (:import (java.io File)))


(def response-map-info-features-data
  {
   (ds/opt :public_transport) response-map-info-features-public-transport-spec
   (ds/req :fares) boolean?
   (ds/req :postcodes) boolean?
   })

(def response-map-info-features-spec
  (ds/spec
    {:name ::response-map-info-features
     :spec response-map-info-features-data}))
