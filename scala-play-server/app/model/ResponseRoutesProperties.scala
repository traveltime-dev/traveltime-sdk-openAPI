package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseRoutesProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseRoutesProperties(
  travelUnderscoretime: Option[Int],
  distance: Option[Int],
  fares: Option[ResponseFares],
  route: Option[ResponseRoute]
)

object ResponseRoutesProperties {
  implicit lazy val responseRoutesPropertiesJsonFormat: Format[ResponseRoutesProperties] = Json.format[ResponseRoutesProperties]
}

