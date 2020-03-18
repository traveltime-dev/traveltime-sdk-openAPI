package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalSearches.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2020-03-18T07:55:16.100Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalSearches(
  manyUnderscoretoUnderscoreone: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
  oneUnderscoretoUnderscoremany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]]
)

object RequestTimeFilterFastArrivalSearches {
  implicit lazy val requestTimeFilterFastArrivalSearchesJsonFormat: Format[RequestTimeFilterFastArrivalSearches] = Json.format[RequestTimeFilterFastArrivalSearches]
}

