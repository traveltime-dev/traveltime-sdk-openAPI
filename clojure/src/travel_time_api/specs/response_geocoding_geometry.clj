(ns travel-time-api.specs.response-geocoding-geometry
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-geocoding-geometry-data
  {
   (ds/req :type) string?
   (ds/req :coordinates) (s/coll-of float?)
   })

(def response-geocoding-geometry-spec
  (ds/spec
    {:name ::response-geocoding-geometry
     :spec response-geocoding-geometry-data}))
