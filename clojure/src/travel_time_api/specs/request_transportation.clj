(ns travel-time-api.specs.request-transportation
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def request-transportation-data
  {
   (ds/req :type) string?
   (ds/opt :disable_border_crossing) boolean?
   (ds/opt :pt_change_delay) int?
   (ds/opt :walking_time) int?
   (ds/opt :driving_time_to_station) int?
   (ds/opt :cycling_time_to_station) int?
   (ds/opt :parking_time) int?
   (ds/opt :boarding_time) int?
   })

(def request-transportation-spec
  (ds/spec
    {:name ::request-transportation
     :spec request-transportation-data}))
