# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' ResponseTimeFilterProperties Class
#'
#' @field travel_time 
#' @field distance 
#' @field distance_breakdown 
#' @field fares 
#' @field route 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeFilterProperties <- R6::R6Class(
  'ResponseTimeFilterProperties',
  public = list(
    `travel_time` = NULL,
    `distance` = NULL,
    `distance_breakdown` = NULL,
    `fares` = NULL,
    `route` = NULL,
    initialize = function(`travel_time`, `distance`, `distance_breakdown`, `fares`, `route`){
      if (!missing(`travel_time`)) {
        stopifnot(is.numeric(`travel_time`), length(`travel_time`) == 1)
        self$`travel_time` <- `travel_time`
      }
      if (!missing(`distance`)) {
        stopifnot(is.numeric(`distance`), length(`distance`) == 1)
        self$`distance` <- `distance`
      }
      if (!missing(`distance_breakdown`)) {
        stopifnot(is.list(`distance_breakdown`), length(`distance_breakdown`) != 0)
        lapply(`distance_breakdown`, function(x) stopifnot(R6::is.R6(x)))
        self$`distance_breakdown` <- `distance_breakdown`
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
      ResponseTimeFilterPropertiesObject <- list()
      if (!is.null(self$`travel_time`)) {
        ResponseTimeFilterPropertiesObject[['travel_time']] <- self$`travel_time`
      }
      if (!is.null(self$`distance`)) {
        ResponseTimeFilterPropertiesObject[['distance']] <- self$`distance`
      }
      if (!is.null(self$`distance_breakdown`)) {
        ResponseTimeFilterPropertiesObject[['distance_breakdown']] <- lapply(self$`distance_breakdown`, function(x) x$toJSON())
      }
      if (!is.null(self$`fares`)) {
        ResponseTimeFilterPropertiesObject[['fares']] <- self$`fares`$toJSON()
      }
      if (!is.null(self$`route`)) {
        ResponseTimeFilterPropertiesObject[['route']] <- self$`route`$toJSON()
      }

      ResponseTimeFilterPropertiesObject
    },
    fromJSON = function(ResponseTimeFilterPropertiesJson) {
      ResponseTimeFilterPropertiesObject <- jsonlite::fromJSON(ResponseTimeFilterPropertiesJson)
      if (!is.null(ResponseTimeFilterPropertiesObject$`travel_time`)) {
        self$`travel_time` <- ResponseTimeFilterPropertiesObject$`travel_time`
      }
      if (!is.null(ResponseTimeFilterPropertiesObject$`distance`)) {
        self$`distance` <- ResponseTimeFilterPropertiesObject$`distance`
      }
      if (!is.null(ResponseTimeFilterPropertiesObject$`distance_breakdown`)) {
        self$`distance_breakdown` <- lapply(ResponseTimeFilterPropertiesObject$`distance_breakdown`, function(x) {
          distance_breakdownObject <- ResponseDistanceBreakdownItem$new()
          distance_breakdownObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          distance_breakdownObject
        })
      }
      if (!is.null(ResponseTimeFilterPropertiesObject$`fares`)) {
        faresObject <- ResponseFares$new()
        faresObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPropertiesObject$fares, auto_unbox = TRUE))
        self$`fares` <- faresObject
      }
      if (!is.null(ResponseTimeFilterPropertiesObject$`route`)) {
        routeObject <- ResponseRoute$new()
        routeObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPropertiesObject$route, auto_unbox = TRUE))
        self$`route` <- routeObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "travel_time": %d,
           "distance": %d,
           "distance_breakdown": [%s],
           "fares": %s,
           "route": %s
        }',
        self$`travel_time`,
        self$`distance`,
        lapply(self$`distance_breakdown`, function(x) paste(x$toJSON(), sep=",")),
        self$`fares`$toJSON(),
        self$`route`$toJSON()
      )
    },
    fromJSONString = function(ResponseTimeFilterPropertiesJson) {
      ResponseTimeFilterPropertiesObject <- jsonlite::fromJSON(ResponseTimeFilterPropertiesJson)
      self$`travel_time` <- ResponseTimeFilterPropertiesObject$`travel_time`
      self$`distance` <- ResponseTimeFilterPropertiesObject$`distance`
      self$`distance_breakdown` <- lapply(ResponseTimeFilterPropertiesObject$`distance_breakdown`, function(x) ResponseDistanceBreakdownItem$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      ResponseFaresObject <- ResponseFares$new()
      self$`fares` <- ResponseFaresObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPropertiesObject$fares, auto_unbox = TRUE))
      ResponseRouteObject <- ResponseRoute$new()
      self$`route` <- ResponseRouteObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPropertiesObject$route, auto_unbox = TRUE))
    }
  )
)