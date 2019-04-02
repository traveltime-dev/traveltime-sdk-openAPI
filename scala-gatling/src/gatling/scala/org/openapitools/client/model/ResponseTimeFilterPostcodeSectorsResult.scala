
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeSectorsResult (
    _searchUnderscoreid: String,
    _sectors: List[ResponseTimeFilterPostcodeSector]
)
object ResponseTimeFilterPostcodeSectorsResult {
    def toStringBody(var_searchUnderscoreid: Object, var_sectors: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"sectors":$var_sectors
        | }
        """.stripMargin
}
