# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' ResponseRoutesProperties Class
#'
#' @field travel_time 
#' @field distance 
#' @field fares 
#' @field route 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseRoutesProperties <- R6::R6Class(
  'ResponseRoutesProperties',
  public = list(
    `travel_time` = NULL,
    `distance` = NULL,
    `fares` = NULL,
    `route` = NULL,
    initialize = function(`travel_time`, `distance`, `fares`, `route`){
      if (!missing(`travel_time`)) {
        stopifnot(is.numeric(`travel_time`), length(`travel_time`) == 1)
        self$`travel_time` <- `travel_time`
      }
      if (!missing(`distance`)) {
        stopifnot(is.numeric(`distance`), length(`distance`) == 1)
        self$`distance` <- `distance`
      }
      if (!missing(`fares`)) {
        stopifnot(R6::is.R6(`fares`))
        self$`fares` <- `fares`
      }
      if (!missing(`route`)) {
        stopifnot(R6::is.R6(`route`))
        self$`route` <- `route`
      }
    },
    toJSON = function() {
      ResponseRoutesPropertiesObject <- list()
      if (!is.null(self$`travel_time`)) {
        ResponseRoutesPropertiesObject[['travel_time']] <- self$`travel_time`
      }
      if (!is.null(self$`distance`)) {
        ResponseRoutesPropertiesObject[['distance']] <- self$`distance`
      }
      if (!is.null(self$`fares`)) {
        ResponseRoutesPropertiesObject[['fares']] <- self$`fares`$toJSON()
      }
      if (!is.null(self$`route`)) {
        ResponseRoutesPropertiesObject[['route']] <- self$`route`$toJSON()
      }

      ResponseRoutesPropertiesObject
    },
    fromJSON = function(ResponseRoutesPropertiesJson) {
      ResponseRoutesPropertiesObject <- jsonlite::fromJSON(ResponseRoutesPropertiesJson)
      if (!is.null(ResponseRoutesPropertiesObject$`travel_time`)) {
        self$`travel_time` <- ResponseRoutesPropertiesObject$`travel_time`
      }
      if (!is.null(ResponseRoutesPropertiesObject$`distance`)) {
        self$`distance` <- ResponseRoutesPropertiesObject$`distance`
      }
      if (!is.null(ResponseRoutesPropertiesObject$`fares`)) {
        faresObject <- ResponseFares$new()
        faresObject$fromJSON(jsonlite::toJSON(ResponseRoutesPropertiesObject$fares, auto_unbox = TRUE))
        self$`fares` <- faresObject
      }
      if (!is.null(ResponseRoutesPropertiesObject$`route`)) {
        routeObject <- ResponseRoute$new()
        routeObject$fromJSON(jsonlite::toJSON(ResponseRoutesPropertiesObject$route, auto_unbox = TRUE))
        self$`route` <- routeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "travel_time": %d,
           "distance": %d,
           "fares": %s,
           "route": %s
        }',
        self$`travel_time`,
        self$`distance`,
        self$`fares`$toJSON(),
        self$`route`$toJSON()
      )
    },
    fromJSONString = function(ResponseRoutesPropertiesJson) {
      ResponseRoutesPropertiesObject <- jsonlite::fromJSON(ResponseRoutesPropertiesJson)
      self$`travel_time` <- ResponseRoutesPropertiesObject$`travel_time`
      self$`distance` <- ResponseRoutesPropertiesObject$`distance`
      ResponseFaresObject <- ResponseFares$new()
      self$`fares` <- ResponseFaresObject$fromJSON(jsonlite::toJSON(ResponseRoutesPropertiesObject$fares, auto_unbox = TRUE))
      ResponseRouteObject <- ResponseRoute$new()
      self$`route` <- ResponseRouteObject$fromJSON(jsonlite::toJSON(ResponseRoutesPropertiesObject$route, auto_unbox = TRUE))
    }
  )
)