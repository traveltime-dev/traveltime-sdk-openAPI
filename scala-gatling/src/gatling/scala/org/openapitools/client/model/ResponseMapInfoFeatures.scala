
package org.openapitools.client.model


case class ResponseMapInfoFeatures (
    _publicUnderscoretransport: Option[ResponseMapInfoFeaturesPublicTransport],
    _fares: Boolean,
    _postcodes: Boolean
)
object ResponseMapInfoFeatures {
    def toStringBody(var_publicUnderscoretransport: Object, var_fares: Object, var_postcodes: Object) =
        s"""
        | {
        | "publicUnderscoretransport":$var_publicUnderscoretransport,"fares":$var_fares,"postcodes":$var_postcodes
        | }
        """.stripMargin
}
