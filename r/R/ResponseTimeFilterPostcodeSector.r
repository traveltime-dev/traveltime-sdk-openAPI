# TravelTime Platform API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# OpenAPI spec version: 1.0.0
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech


#' ResponseTimeFilterPostcodeSector Class
#'
#' @field code 
#' @field properties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ResponseTimeFilterPostcodeSector <- R6::R6Class(
  'ResponseTimeFilterPostcodeSector',
  public = list(
    `code` = NULL,
    `properties` = NULL,
    initialize = function(`code`, `properties`){
      if (!missing(`code`)) {
        stopifnot(R6::is.R6(`code`))
        self$`code` <- `code`
      }
      if (!missing(`properties`)) {
        stopifnot(R6::is.R6(`properties`))
        self$`properties` <- `properties`
      }
    },
    toJSON = function() {
      ResponseTimeFilterPostcodeSectorObject <- list()
      if (!is.null(self$`code`)) {
        ResponseTimeFilterPostcodeSectorObject[['code']] <- self$`code`$toJSON()
      }
      if (!is.null(self$`properties`)) {
        ResponseTimeFilterPostcodeSectorObject[['properties']] <- self$`properties`$toJSON()
      }

      ResponseTimeFilterPostcodeSectorObject
    },
    fromJSON = function(ResponseTimeFilterPostcodeSectorJson) {
      ResponseTimeFilterPostcodeSectorObject <- jsonlite::fromJSON(ResponseTimeFilterPostcodeSectorJson)
      if (!is.null(ResponseTimeFilterPostcodeSectorObject$`code`)) {
        codeObject <- String$new()
        codeObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPostcodeSectorObject$code, auto_unbox = TRUE))
        self$`code` <- codeObject
      }
      if (!is.null(ResponseTimeFilterPostcodeSectorObject$`properties`)) {
        propertiesObject <- ResponseTimeFilterPostcodeSectorProperties$new()
        propertiesObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPostcodeSectorObject$properties, auto_unbox = TRUE))
        self$`properties` <- propertiesObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "code": %s,
           "properties": %s
        }',
        self$`code`$toJSON(),
        self$`properties`$toJSON()
      )
    },
    fromJSONString = function(ResponseTimeFilterPostcodeSectorJson) {
      ResponseTimeFilterPostcodeSectorObject <- jsonlite::fromJSON(ResponseTimeFilterPostcodeSectorJson)
      StringObject <- String$new()
      self$`code` <- StringObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPostcodeSectorObject$code, auto_unbox = TRUE))
      ResponseTimeFilterPostcodeSectorPropertiesObject <- ResponseTimeFilterPostcodeSectorProperties$new()
      self$`properties` <- ResponseTimeFilterPostcodeSectorPropertiesObject$fromJSON(jsonlite::toJSON(ResponseTimeFilterPostcodeSectorObject$properties, auto_unbox = TRUE))
    }
  )
)