package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalSearches.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-07-14T11:29:17.777Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalSearches(
  manyToOne: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
  oneToMany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]]
)

object RequestTimeFilterFastArrivalSearches {
  implicit lazy val requestTimeFilterFastArrivalSearchesJsonFormat: Format[RequestTimeFilterFastArrivalSearches] = Json.format[RequestTimeFilterFastArrivalSearches]
}

