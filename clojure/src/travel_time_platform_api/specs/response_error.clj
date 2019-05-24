(ns travel-time-platform-api.specs.response-error
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def response-error-data
  {
   (ds/opt :http_status) int?
   (ds/opt :error_code) int?
   (ds/opt :description) string?
   (ds/opt :documentation_link) string?
   (ds/opt :additional_info) (s/map-of string? (s/coll-of string?))
   })

(def response-error-spec
  (ds/spec
    {:name ::response-error
     :spec response-error-data}))
