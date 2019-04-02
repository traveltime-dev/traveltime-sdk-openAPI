
package org.openapitools.client.model


case class ResponseError (
    _httpUnderscorestatus: Option[Integer],
    _errorUnderscorecode: Option[Integer],
    _description: Option[String],
    _documentationUnderscorelink: Option[String],
    _additionalUnderscoreinfo: Option[Map[String, List[String]]]
)
object ResponseError {
    def toStringBody(var_httpUnderscorestatus: Object, var_errorUnderscorecode: Object, var_description: Object, var_documentationUnderscorelink: Object, var_additionalUnderscoreinfo: Object) =
        s"""
        | {
        | "httpUnderscorestatus":$var_httpUnderscorestatus,"errorUnderscorecode":$var_errorUnderscorecode,"description":$var_description,"documentationUnderscorelink":$var_documentationUnderscorelink,"additionalUnderscoreinfo":$var_additionalUnderscoreinfo
        | }
        """.stripMargin
}
