
package org.openapitools.client.model


case class ResponseTravelTimeStatistics (
    _min: Integer,
    _max: Integer,
    _mean: Integer,
    _median: Integer
)
object ResponseTravelTimeStatistics {
    def toStringBody(var_min: Object, var_max: Object, var_mean: Object, var_median: Object) =
        s"""
        | {
        | "min":$var_min,"max":$var_max,"mean":$var_mean,"median":$var_median
        | }
        """.stripMargin
}
