
package org.openapitools.client.model


case class ResponseTimeFilterPostcodeDistrictsResult (
    _searchUnderscoreid: String,
    _districts: List[ResponseTimeFilterPostcodeDistrict]
)
object ResponseTimeFilterPostcodeDistrictsResult {
    def toStringBody(var_searchUnderscoreid: Object, var_districts: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"districts":$var_districts
        | }
        """.stripMargin
}
