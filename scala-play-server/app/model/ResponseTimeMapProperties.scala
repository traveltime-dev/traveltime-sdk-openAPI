package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseTimeMapProperties(
  isUnderscoreonlyUnderscorewalking: Option[Boolean]
)

object ResponseTimeMapProperties {
  implicit lazy val responseTimeMapPropertiesJsonFormat: Format[ResponseTimeMapProperties] = Json.format[ResponseTimeMapProperties]
}

