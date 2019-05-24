package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeFilterPostcodesProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeFilterPostcodesProperties(
  travelUnderscoretime: Option[Int],
  distance: Option[Int]
)

object ResponseTimeFilterPostcodesProperties {
  implicit lazy val responseTimeFilterPostcodesPropertiesJsonFormat: Format[ResponseTimeFilterPostcodesProperties] = Json.format[ResponseTimeFilterPostcodesProperties]
}

