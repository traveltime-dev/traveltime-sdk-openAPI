(ns travel-time-api.specs.request-transportation-fast
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-transportation-fast-data
  {
   (ds/req :type) string?
   })

(def request-transportation-fast-spec
  (ds/spec
    {:name ::request-transportation-fast
     :spec request-transportation-fast-data}))
