
package org.openapitools.client.model


case class ResponseBox (
    _minUnderscorelat: Double,
    _maxUnderscorelat: Double,
    _minUnderscorelng: Double,
    _maxUnderscorelng: Double
)
object ResponseBox {
    def toStringBody(var_minUnderscorelat: Object, var_maxUnderscorelat: Object, var_minUnderscorelng: Object, var_maxUnderscorelng: Object) =
        s"""
        | {
        | "minUnderscorelat":$var_minUnderscorelat,"maxUnderscorelat":$var_maxUnderscorelat,"minUnderscorelng":$var_minUnderscorelng,"maxUnderscorelng":$var_maxUnderscorelng
        | }
        """.stripMargin
}
