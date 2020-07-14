package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeFilterFast(
  locations: List[RequestLocation],
  arrivalSearches: RequestTimeFilterFastArrivalSearches
)

object RequestTimeFilterFast {
  implicit lazy val requestTimeFilterFastJsonFormat: Format[RequestTimeFilterFast] = Json.format[RequestTimeFilterFast]
}

