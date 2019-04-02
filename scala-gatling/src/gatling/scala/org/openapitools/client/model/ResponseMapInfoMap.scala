
package org.openapitools.client.model


case class ResponseMapInfoMap (
    _name: String,
    _features: ResponseMapInfoFeatures
)
object ResponseMapInfoMap {
    def toStringBody(var_name: Object, var_features: Object) =
        s"""
        | {
        | "name":$var_name,"features":$var_features
        | }
        """.stripMargin
}
