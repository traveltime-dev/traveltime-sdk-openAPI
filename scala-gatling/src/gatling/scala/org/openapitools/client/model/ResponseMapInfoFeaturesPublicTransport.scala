
package org.openapitools.client.model

import java.util.Date

case class ResponseMapInfoFeaturesPublicTransport (
    _dateUnderscorestart: Date,
    _dateUnderscoreend: Date
)
object ResponseMapInfoFeaturesPublicTransport {
    def toStringBody(var_dateUnderscorestart: Object, var_dateUnderscoreend: Object) =
        s"""
        | {
        | "dateUnderscorestart":$var_dateUnderscorestart,"dateUnderscoreend":$var_dateUnderscoreend
        | }
        """.stripMargin
}
