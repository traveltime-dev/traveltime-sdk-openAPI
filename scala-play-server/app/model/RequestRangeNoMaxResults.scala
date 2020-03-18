package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRangeNoMaxResults.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestRangeNoMaxResults(
  enabled: Boolean,
  width: Int
)

object RequestRangeNoMaxResults {
  implicit lazy val requestRangeNoMaxResultsJsonFormat: Format[RequestRangeNoMaxResults] = Json.format[RequestRangeNoMaxResults]
}

