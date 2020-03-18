package model

import play.api.libs.json._
import java.time.OffsetDateTime

/**
  * Represents the Swagger definition for ResponseRoute.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T08:51:49.713Z[Etc/UTC]")
case class ResponseRoute(
  departureTime: OffsetDateTime,
  arrivalTime: OffsetDateTime,
  parts: List[ResponseRoutePart]
)

object ResponseRoute {
  implicit lazy val responseRouteJsonFormat: Format[ResponseRoute] = Json.format[ResponseRoute]
}

