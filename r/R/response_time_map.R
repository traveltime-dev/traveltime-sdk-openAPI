# TravelTime API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 1.2.3
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title ResponseTimeMap
#'
#' @description ResponseTimeMap Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field results  list( \link{ResponseTimeMapResult} ) 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeMap <- R6::R6Class(
  'ResponseTimeMap',
  public = list(
    `results` = NULL,
    initialize = function(
        `results`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`results`)) {
        stopifnot(is.vector(`results`), length(`results`) != 0)
        sapply(`results`, function(x) stopifnot(R6::is.R6(x)))
        self$`results` <- `results`
      }
    },
    toJSON = function() {
      ResponseTimeMapObject <- list()
      if (!is.null(self$`results`)) {
        ResponseTimeMapObject[['results']] <-
          lapply(self$`results`, function(x) x$toJSON())
      }

      ResponseTimeMapObject
    },
    fromJSON = function(ResponseTimeMapJson) {
      ResponseTimeMapObject <- jsonlite::fromJSON(ResponseTimeMapJson)
      if (!is.null(ResponseTimeMapObject$`results`)) {
        self$`results` <- ApiClient$new()$deserializeObj(ResponseTimeMapObject$`results`, "array[ResponseTimeMapResult]", loadNamespace("openapi"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`results`)) {
        sprintf(
        '"results":
        [%s]
',
        paste(sapply(self$`results`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ResponseTimeMapJson) {
      ResponseTimeMapObject <- jsonlite::fromJSON(ResponseTimeMapJson)
      self$`results` <- ApiClient$new()$deserializeObj(ResponseTimeMapObject$`results`, "array[ResponseTimeMapResult]", loadNamespace("openapi"))
      self
    }
  )
)
