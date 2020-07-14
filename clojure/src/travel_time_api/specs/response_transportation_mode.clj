(ns travel-time-api.specs.response-transportation-mode
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-transportation-mode-data
  {
   })

(def response-transportation-mode-spec
  (ds/spec
    {:name ::response-transportation-mode
     :spec response-transportation-mode-data}))
