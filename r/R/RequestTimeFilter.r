# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' RequestTimeFilter Class
#'
#' @field locations 
#' @field departure_searches 
#' @field arrival_searches 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RequestTimeFilter <- R6::R6Class(
  'RequestTimeFilter',
  public = list(
    `locations` = NULL,
    `departure_searches` = NULL,
    `arrival_searches` = NULL,
    initialize = function(`locations`, `departure_searches`, `arrival_searches`){
      if (!missing(`locations`)) {
        stopifnot(is.list(`locations`), length(`locations`) != 0)
        lapply(`locations`, function(x) stopifnot(R6::is.R6(x)))
        self$`locations` <- `locations`
      }
      if (!missing(`departure_searches`)) {
        stopifnot(is.list(`departure_searches`), length(`departure_searches`) != 0)
        lapply(`departure_searches`, function(x) stopifnot(R6::is.R6(x)))
        self$`departure_searches` <- `departure_searches`
      }
      if (!missing(`arrival_searches`)) {
        stopifnot(is.list(`arrival_searches`), length(`arrival_searches`) != 0)
        lapply(`arrival_searches`, function(x) stopifnot(R6::is.R6(x)))
        self$`arrival_searches` <- `arrival_searches`
      }
    },
    toJSON = function() {
      RequestTimeFilterObject <- list()
      if (!is.null(self$`locations`)) {
        RequestTimeFilterObject[['locations']] <- lapply(self$`locations`, function(x) x$toJSON())
      }
      if (!is.null(self$`departure_searches`)) {
        RequestTimeFilterObject[['departure_searches']] <- lapply(self$`departure_searches`, function(x) x$toJSON())
      }
      if (!is.null(self$`arrival_searches`)) {
        RequestTimeFilterObject[['arrival_searches']] <- lapply(self$`arrival_searches`, function(x) x$toJSON())
      }

      RequestTimeFilterObject
    },
    fromJSON = function(RequestTimeFilterJson) {
      RequestTimeFilterObject <- jsonlite::fromJSON(RequestTimeFilterJson)
      if (!is.null(RequestTimeFilterObject$`locations`)) {
        self$`locations` <- lapply(RequestTimeFilterObject$`locations`, function(x) {
          locationsObject <- RequestLocation$new()
          locationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          locationsObject
        })
      }
      if (!is.null(RequestTimeFilterObject$`departure_searches`)) {
        self$`departure_searches` <- lapply(RequestTimeFilterObject$`departure_searches`, function(x) {
          departure_searchesObject <- RequestTimeFilterDepartureSearch$new()
          departure_searchesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          departure_searchesObject
        })
      }
      if (!is.null(RequestTimeFilterObject$`arrival_searches`)) {
        self$`arrival_searches` <- lapply(RequestTimeFilterObject$`arrival_searches`, function(x) {
          arrival_searchesObject <- RequestTimeFilterArrivalSearch$new()
          arrival_searchesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          arrival_searchesObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "locations": [%s],
           "departure_searches": [%s],
           "arrival_searches": [%s]
        }',
        lapply(self$`locations`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`departure_searches`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`arrival_searches`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(RequestTimeFilterJson) {
      RequestTimeFilterObject <- jsonlite::fromJSON(RequestTimeFilterJson)
      self$`locations` <- lapply(RequestTimeFilterObject$`locations`, function(x) RequestLocation$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`departure_searches` <- lapply(RequestTimeFilterObject$`departure_searches`, function(x) RequestTimeFilterDepartureSearch$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`arrival_searches` <- lapply(RequestTimeFilterObject$`arrival_searches`, function(x) RequestTimeFilterArrivalSearch$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)