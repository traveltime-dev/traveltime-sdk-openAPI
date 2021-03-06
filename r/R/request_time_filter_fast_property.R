# TravelTime API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 1.2.3
# Contact: support@igeolise.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title RequestTimeFilterFastProperty
#'
#' @description RequestTimeFilterFastProperty Class
#'
#' @format An \code{R6Class} generator object
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
RequestTimeFilterFastProperty <- R6::R6Class(
    "RequestTimeFilterFastProperty",
    public = list(
        initialize = function(...) {
            local.optional.var <- list(...)
            val <- unlist(local.optional.var)
            enumvec <- .parse_RequestTimeFilterFastProperty()

            stopifnot(length(val) == 1L)

            if (!val %in% enumvec)
                stop("Use one of the valid values: ",
                    paste0(enumvec, collapse = ", "))
            private$value <- val
        },
        toJSON = function() {
            jsonlite::toJSON(private$value, auto_unbox = TRUE)
        },
        fromJSON = function(RequestTimeFilterFastPropertyJson) {
            private$value <- jsonlite::fromJSON(RequestTimeFilterFastPropertyJson,
                simplifyVector = FALSE)
            self
        },
        toJSONString = function() {
            as.character(jsonlite::toJSON(private$value,
                auto_unbox = TRUE))
        },
        fromJSONString = function(RequestTimeFilterFastPropertyJson) {
            private$value <- jsonlite::fromJSON(RequestTimeFilterFastPropertyJson,
                simplifyVector = FALSE)
            self
        }
    ),
    private = list(
        value = NULL
    )
)

# add to utils.R
.parse_RequestTimeFilterFastProperty <- function(vals) {
    res <- gsub("^\\[|\\]$", "",
        "[travel_time, fares]"
    )
    unlist(strsplit(res, ", "))
}

