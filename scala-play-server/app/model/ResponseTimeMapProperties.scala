package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseTimeMapProperties(
  isUnderscoreonlyUnderscorewalking: Option[Boolean]
)

object ResponseTimeMapProperties {
  implicit lazy val responseTimeMapPropertiesJsonFormat: Format[ResponseTimeMapProperties] = Json.format[ResponseTimeMapProperties]
}

