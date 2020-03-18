package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for ResponseMapInfoFeaturesPublicTransport.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseMapInfoFeaturesPublicTransport(
  dateStart: OffsetDateTime,
  dateEnd: OffsetDateTime
)

object ResponseMapInfoFeaturesPublicTransport {
  implicit lazy val responseMapInfoFeaturesPublicTransportJsonFormat: Format[ResponseMapInfoFeaturesPublicTransport] = Json.format[ResponseMapInfoFeaturesPublicTransport]
}

