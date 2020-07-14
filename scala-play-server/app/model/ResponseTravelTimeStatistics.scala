package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTravelTimeStatistics.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class ResponseTravelTimeStatistics(
  min: Int,
  max: Int,
  mean: Int,
  median: Int
)

object ResponseTravelTimeStatistics {
  implicit lazy val responseTravelTimeStatisticsJsonFormat: Format[ResponseTravelTimeStatistics] = Json.format[ResponseTravelTimeStatistics]
}

