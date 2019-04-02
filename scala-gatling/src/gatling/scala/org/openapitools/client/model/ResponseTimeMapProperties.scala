
package org.openapitools.client.model


case class ResponseTimeMapProperties (
    _isUnderscoreonlyUnderscorewalking: Option[Boolean]
)
object ResponseTimeMapProperties {
    def toStringBody(var_isUnderscoreonlyUnderscorewalking: Object) =
        s"""
        | {
        | "isUnderscoreonlyUnderscorewalking":$var_isUnderscoreonlyUnderscorewalking
        | }
        """.stripMargin
}
