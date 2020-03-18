
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeDistrictsResult (
    _searchId: String,
    _districts: List[ResponseTimeFilterPostcodeDistrict]
)
object ResponseTimeFilterPostcodeDistrictsResult {
    def toStringBody(var_searchId: Object, var_districts: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"districts":$var_districts
        | }
        """.stripMargin
}
