package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMapProperties.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseTimeMapProperties(
  isOnlyWalking: Option[Boolean]
)

object ResponseTimeMapProperties {
  implicit lazy val responseTimeMapPropertiesJsonFormat: Format[ResponseTimeMapProperties] = Json.format[ResponseTimeMapProperties]
}

