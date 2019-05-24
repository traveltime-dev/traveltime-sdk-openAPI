package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestRangeFull.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestRangeFull(
  enabled: Boolean,
  maxUnderscoreresults: Int,
  width: Int
)

object RequestRangeFull {
  implicit lazy val requestRangeFullJsonFormat: Format[RequestRangeFull] = Json.format[RequestRangeFull]
}

