
package org.openapitools.client.model

import java.time.OffsetDateTime

case class ResponseMapInfoFeaturesPublicTransport (
    _dateStart: OffsetDateTime,
    _dateEnd: OffsetDateTime
)
object ResponseMapInfoFeaturesPublicTransport {
    def toStringBody(var_dateStart: Object, var_dateEnd: Object) =
        s"""
        | {
        | "dateStart":$var_dateStart,"dateEnd":$var_dateEnd
        | }
        """.stripMargin
}
