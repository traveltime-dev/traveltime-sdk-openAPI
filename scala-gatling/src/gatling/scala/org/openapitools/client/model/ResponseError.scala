
package org.openapitools.client.model


case class ResponseError (
    _httpStatus: Option[Integer],
    _errorCode: Option[Integer],
    _description: Option[String],
    _documentationLink: Option[String],
    _additionalInfo: Option[Map[String, List[String]]]
)
object ResponseError {
    def toStringBody(var_httpStatus: Object, var_errorCode: Object, var_description: Object, var_documentationLink: Object, var_additionalInfo: Object) =
        s"""
        | {
        | "httpStatus":$var_httpStatus,"errorCode":$var_errorCode,"description":$var_description,"documentationLink":$var_documentationLink,"additionalInfo":$var_additionalInfo
        | }
        """.stripMargin
}
