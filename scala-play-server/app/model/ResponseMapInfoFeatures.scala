package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfoFeatures.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseMapInfoFeatures(
  publicTransport: Option[ResponseMapInfoFeaturesPublicTransport],
  fares: Boolean,
  postcodes: Boolean
)

object ResponseMapInfoFeatures {
  implicit lazy val responseMapInfoFeaturesJsonFormat: Format[ResponseMapInfoFeatures] = Json.format[ResponseMapInfoFeatures]
}

