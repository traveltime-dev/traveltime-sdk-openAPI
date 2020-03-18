package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRangeFull.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class RequestRangeFull(
  enabled: Boolean,
  maxResults: Int,
  width: Int
)

object RequestRangeFull {
  implicit lazy val requestRangeFullJsonFormat: Format[RequestRangeFull] = Json.format[RequestRangeFull]
}

