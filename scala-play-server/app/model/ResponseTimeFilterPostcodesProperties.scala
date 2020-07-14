package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesProperties(
  travelTime: Option[Int],
  distance: Option[Int]
)

object ResponseTimeFilterPostcodesProperties {
  implicit lazy val responseTimeFilterPostcodesPropertiesJsonFormat: Format[ResponseTimeFilterPostcodesProperties] = Json.format[ResponseTimeFilterPostcodesProperties]
}

