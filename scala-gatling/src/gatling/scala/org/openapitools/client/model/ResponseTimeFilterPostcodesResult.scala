
package org.openapitools.client.model


case class ResponseTimeFilterPostcodesResult (
    _searchId: String,
    _postcodes: List[ResponseTimeFilterPostcode]
)
object ResponseTimeFilterPostcodesResult {
    def toStringBody(var_searchId: Object, var_postcodes: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"postcodes":$var_postcodes
        | }
        """.stripMargin
}
