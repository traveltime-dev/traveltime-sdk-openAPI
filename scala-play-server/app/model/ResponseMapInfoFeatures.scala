package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfoFeatures.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class ResponseMapInfoFeatures(
  publicUnderscoretransport: Option[ResponseMapInfoFeaturesPublicTransport],
  fares: Boolean,
  postcodes: Boolean
)

object ResponseMapInfoFeatures {
  implicit lazy val responseMapInfoFeaturesJsonFormat: Format[ResponseMapInfoFeatures] = Json.format[ResponseMapInfoFeatures]
}

