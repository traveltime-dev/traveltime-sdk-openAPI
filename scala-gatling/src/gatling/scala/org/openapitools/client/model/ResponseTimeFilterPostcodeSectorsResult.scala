
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeSectorsResult (
    _searchId: String,
    _sectors: List[ResponseTimeFilterPostcodeSector]
)
object ResponseTimeFilterPostcodeSectorsResult {
    def toStringBody(var_searchId: Object, var_sectors: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"sectors":$var_sectors
        | }
        """.stripMargin
}
