# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' ResponseTimeMapBoundingBoxes Class
#'
#' @field results 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeMapBoundingBoxes <- R6::R6Class(
  'ResponseTimeMapBoundingBoxes',
  public = list(
    `results` = NULL,
    initialize = function(`results`){
      if (!missing(`results`)) {
        stopifnot(is.list(`results`), length(`results`) != 0)
        lapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
    },
    toJSON = function() {
      ResponseTimeMapBoundingBoxesObject <- list()
      if (!is.null(self$`results`)) {
        ResponseTimeMapBoundingBoxesObject[['results']] <- lapply(self$`results`, function(x) x$toJSON())
      }

      ResponseTimeMapBoundingBoxesObject
    },
    fromJSON = function(ResponseTimeMapBoundingBoxesJson) {
      ResponseTimeMapBoundingBoxesObject <- jsonlite::fromJSON(ResponseTimeMapBoundingBoxesJson)
      if (!is.null(ResponseTimeMapBoundingBoxesObject$`results`)) {
        self$`results` <- lapply(ResponseTimeMapBoundingBoxesObject$`results`, function(x) {
          resultsObject <- ResponseTimeMapBoundingBoxesResult$new()
          resultsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          resultsObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "results": [%s]
        }',
        lapply(self$`results`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ResponseTimeMapBoundingBoxesJson) {
      ResponseTimeMapBoundingBoxesObject <- jsonlite::fromJSON(ResponseTimeMapBoundingBoxesJson)
      self$`results` <- lapply(ResponseTimeMapBoundingBoxesObject$`results`, function(x) ResponseTimeMapBoundingBoxesResult$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)