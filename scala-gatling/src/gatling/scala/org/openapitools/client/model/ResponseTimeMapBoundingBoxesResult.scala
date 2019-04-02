
package org.openapitools.client.model


case class ResponseTimeMapBoundingBoxesResult (
    _searchUnderscoreid: String,
    _boundingUnderscoreboxes: List[ResponseBoundingBox],
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapBoundingBoxesResult {
    def toStringBody(var_searchUnderscoreid: Object, var_boundingUnderscoreboxes: Object, var_properties: Object) =
        s"""
        | {
        | "searchUnderscoreid":$var_searchUnderscoreid,"boundingUnderscoreboxes":$var_boundingUnderscoreboxes,"properties":$var_properties
        | }
        """.stripMargin
}
