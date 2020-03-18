
package org.openapitools.client.model


case class ResponseMapInfoFeatures (
    _publicTransport: Option[ResponseMapInfoFeaturesPublicTransport],
    _fares: Boolean,
    _postcodes: Boolean
)
object ResponseMapInfoFeatures {
    def toStringBody(var_publicTransport: Object, var_fares: Object, var_postcodes: Object) =
        s"""
        | {
        | "publicTransport":$var_publicTransport,"fares":$var_fares,"postcodes":$var_postcodes
        | }
        """.stripMargin
}
