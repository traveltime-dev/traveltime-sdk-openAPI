(ns travel-time-api.specs.coords
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def coords-data
  {
   (ds/req :lat) float?
   (ds/req :lng) float?
   })

(def coords-spec
  (ds/spec
    {:name ::coords
     :spec coords-data}))
