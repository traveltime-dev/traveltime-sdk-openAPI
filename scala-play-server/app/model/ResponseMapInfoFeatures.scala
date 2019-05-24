package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseMapInfoFeatures.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class ResponseMapInfoFeatures(
  publicUnderscoretransport: Option[ResponseMapInfoFeaturesPublicTransport],
  fares: Boolean,
  postcodes: Boolean
)

object ResponseMapInfoFeatures {
  implicit lazy val responseMapInfoFeaturesJsonFormat: Format[ResponseMapInfoFeatures] = Json.format[ResponseMapInfoFeatures]
}

