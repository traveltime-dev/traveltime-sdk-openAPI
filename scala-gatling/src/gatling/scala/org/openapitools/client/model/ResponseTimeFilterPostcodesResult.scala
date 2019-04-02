
package org.openapitools.client.model


case class ResponseTimeFilterPostcodesResult (
    _searchUnderscoreid: String,
    _postcodes: List[ResponseTimeFilterPostcode]
)
object ResponseTimeFilterPostcodesResult {
    def toStringBody(var_searchUnderscoreid: Object, var_postcodes: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"postcodes":$var_postcodes
        | }
        """.stripMargin
}
