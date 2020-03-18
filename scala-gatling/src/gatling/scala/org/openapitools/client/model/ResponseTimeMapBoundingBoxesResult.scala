
package org.openapitools.client.model


case class ResponseTimeMapBoundingBoxesResult (
    _searchId: String,
    _boundingBoxes: List[ResponseBoundingBox],
    _properties: ResponseTimeMapProperties
)
object ResponseTimeMapBoundingBoxesResult {
    def toStringBody(var_searchId: Object, var_boundingBoxes: Object, var_properties: Object) =
        s"""
        | {
        | "searchId":$var_searchId,"boundingBoxes":$var_boundingBoxes,"properties":$var_properties
        | }
        """.stripMargin
}
