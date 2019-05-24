package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterFast(
  locations: List[RequestLocation],
  arrivalUnderscoresearches: RequestTimeFilterFastArrivalSearches
)

object RequestTimeFilterFast {
  implicit lazy val requestTimeFilterFastJsonFormat: Format[RequestTimeFilterFast] = Json.format[RequestTimeFilterFast]
}

