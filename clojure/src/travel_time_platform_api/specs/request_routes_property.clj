(ns travel-time-platform-api.specs.request-routes-property
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-routes-property-data
  {
   })

(def request-routes-property-spec
  (ds/spec
    {:name ::request-routes-property
     :spec request-routes-property-data}))
