
package org.openapitools.client.model


case class RequestTimeFilterFastArrivalSearches (
    _manyToOne: Option[List[RequestTimeFilterFastArrivalManyToOneSearch]],
    _oneToMany: Option[List[RequestTimeFilterFastArrivalOneToManySearch]]
)
object RequestTimeFilterFastArrivalSearches {
    def toStringBody(var_manyToOne: Object, var_oneToMany: Object) =
        s"""
        | {
        | "manyToOne":$var_manyToOne,"oneToMany":$var_oneToMany
        | }
        """.stripMargin
}
