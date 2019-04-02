# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' ResponseFaresFast Class
#'
#' @field tickets_total 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseFaresFast <- R6::R6Class(
  'ResponseFaresFast',
  public = list(
    `tickets_total` = NULL,
    initialize = function(`tickets_total`){
      if (!missing(`tickets_total`)) {
        stopifnot(is.list(`tickets_total`), length(`tickets_total`) != 0)
        lapply(`tickets_total`, function(x) stopifnot(R6::is.R6(x)))
        self$`tickets_total` <- `tickets_total`
      }
    },
    toJSON = function() {
      ResponseFaresFastObject <- list()
      if (!is.null(self$`tickets_total`)) {
        ResponseFaresFastObject[['tickets_total']] <- lapply(self$`tickets_total`, function(x) x$toJSON())
      }

      ResponseFaresFastObject
    },
    fromJSON = function(ResponseFaresFastJson) {
      ResponseFaresFastObject <- jsonlite::fromJSON(ResponseFaresFastJson)
      if (!is.null(ResponseFaresFastObject$`tickets_total`)) {
        self$`tickets_total` <- lapply(ResponseFaresFastObject$`tickets_total`, function(x) {
          tickets_totalObject <- ResponseFareTicket$new()
          tickets_totalObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          tickets_totalObject
        })
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "tickets_total": [%s]
        }',
        lapply(self$`tickets_total`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(ResponseFaresFastJson) {
      ResponseFaresFastObject <- jsonlite::fromJSON(ResponseFaresFastJson)
      self$`tickets_total` <- lapply(ResponseFaresFastObject$`tickets_total`, function(x) ResponseFareTicket$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)