package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for RequestTimeFilterFastArrivalSearches.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2019-05-24T09:07:50.761Z[Etc/UTC]")
case class RequestTimeFilterFastArrivalSearches(
  manyUnderscoretoUnderscoreone: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
  oneUnderscoretoUnderscoremany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]]
)

object RequestTimeFilterFastArrivalSearches {
  implicit lazy val requestTimeFilterFastArrivalSearchesJsonFormat: Format[RequestTimeFilterFastArrivalSearches] = Json.format[RequestTimeFilterFastArrivalSearches]
}

