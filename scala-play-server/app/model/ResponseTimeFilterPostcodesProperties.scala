package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesProperties(
  travelUnderscoretime: Option[Int],
  distance: Option[Int]
)

object ResponseTimeFilterPostcodesProperties {
  implicit lazy val responseTimeFilterPostcodesPropertiesJsonFormat: Format[ResponseTimeFilterPostcodesProperties] = Json.format[ResponseTimeFilterPostcodesProperties]
}

