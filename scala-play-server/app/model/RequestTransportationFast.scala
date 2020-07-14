package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTransportationFast.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTransportationFast(
  `type`: RequestTransportationFast.Type.Value
)

object RequestTransportationFast {
  implicit lazy val requestTransportationFastJsonFormat: Format[RequestTransportationFast] = Json.format[RequestTransportationFast]

  // noinspection TypeAnnotation
  object Type extends Enumeration {
    val PublicTransport = Value("public_transport")
    val Driving = Value("driving")
    val DrivingPublicTransport = Value("driving+public_transport")

    type Type = Value
    implicit lazy val TypeJsonFormat: Format[Value] = Format(Reads.enumNameReads(this), Writes.enumNameWrites[this.type])
  }
}

