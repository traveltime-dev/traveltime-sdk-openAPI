
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalSearches (
    _manyUnderscoretoUnderscoreone: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
    _oneUnderscoretoUnderscoremany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]]
)
object RequestTimeFilterFastArrivalSearches {
    def toStringBody(var_manyUnderscoretoUnderscoreone: Object, var_oneUnderscoretoUnderscoremany: Object) =
        s"""
        | {
        | "manyUnderscoretoUnderscoreone":$var_manyUnderscoretoUnderscoreone,"oneUnderscoretoUnderscoremany":$var_oneUnderscoretoUnderscoremany
        | }
        """.stripMargin
}
