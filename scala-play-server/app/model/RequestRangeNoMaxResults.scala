package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRangeNoMaxResults.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestRangeNoMaxResults(
  enabled: Boolean,
  width: Int
)

object RequestRangeNoMaxResults {
  implicit lazy val requestRangeNoMaxResultsJsonFormat: Format[RequestRangeNoMaxResults] = Json.format[RequestRangeNoMaxResults]
}

