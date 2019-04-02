# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' RequestTimeFilterFastArrivalSearches Class
#'
#' @field many_to_one 
#' @field one_to_many 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RequestTimeFilterFastArrivalSearches <- R6::R6Class(
  'RequestTimeFilterFastArrivalSearches',
  public = list(
    `many_to_one` = NULL,
    `one_to_many` = NULL,
    initialize = function(`many_to_one`, `one_to_many`){
      if (!missing(`many_to_one`)) {
        stopifnot(is.list(`many_to_one`), length(`many_to_one`) != 0)
        lapply(`many_to_one`, function(x) stopifnot(R6::is.R6(x)))
        self$`many_to_one` <- `many_to_one`
      }
      if (!missing(`one_to_many`)) {
        stopifnot(is.list(`one_to_many`), length(`one_to_many`) != 0)
        lapply(`one_to_many`, function(x) stopifnot(R6::is.R6(x)))
        self$`one_to_many` <- `one_to_many`
      }
    },
    toJSON = function() {
      RequestTimeFilterFastArrivalSearchesObject <- list()
      if (!is.null(self$`many_to_one`)) {
        RequestTimeFilterFastArrivalSearchesObject[['many_to_one']] <- lapply(self$`many_to_one`, function(x) x$toJSON())
      }
      if (!is.null(self$`one_to_many`)) {
        RequestTimeFilterFastArrivalSearchesObject[['one_to_many']] <- lapply(self$`one_to_many`, function(x) x$toJSON())
      }

      RequestTimeFilterFastArrivalSearchesObject
    },
    fromJSON = function(RequestTimeFilterFastArrivalSearchesJson) {
      RequestTimeFilterFastArrivalSearchesObject <- jsonlite::fromJSON(RequestTimeFilterFastArrivalSearchesJson)
      if (!is.null(RequestTimeFilterFastArrivalSearchesObject$`many_to_one`)) {
        self$`many_to_one` <- lapply(RequestTimeFilterFastArrivalSearchesObject$`many_to_one`, function(x) {
          many_to_oneObject <- RequestTimeFilterFastArrivalManyToOneSearch$new()
          many_to_oneObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          many_to_oneObject
        })
      }
      if (!is.null(RequestTimeFilterFastArrivalSearchesObject$`one_to_many`)) {
        self$`one_to_many` <- lapply(RequestTimeFilterFastArrivalSearchesObject$`one_to_many`, function(x) {
          one_to_manyObject <- RequestTimeFilterFastArrivalOneToManySearch$new()
          one_to_manyObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          one_to_manyObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "many_to_one": [%s],
           "one_to_many": [%s]
        }',
        lapply(self$`many_to_one`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`one_to_many`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(RequestTimeFilterFastArrivalSearchesJson) {
      RequestTimeFilterFastArrivalSearchesObject <- jsonlite::fromJSON(RequestTimeFilterFastArrivalSearchesJson)
      self$`many_to_one` <- lapply(RequestTimeFilterFastArrivalSearchesObject$`many_to_one`, function(x) RequestTimeFilterFastArrivalManyToOneSearch$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`one_to_many` <- lapply(RequestTimeFilterFastArrivalSearchesObject$`one_to_many`, function(x) RequestTimeFilterFastArrivalOneToManySearch$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)