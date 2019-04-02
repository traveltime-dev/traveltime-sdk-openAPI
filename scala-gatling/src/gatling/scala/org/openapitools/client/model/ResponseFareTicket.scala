
package org.openapitools.client.model


case class ResponseFareTicket (
    _type: String,
    _price: Double,
    _currency: String
)
object ResponseFareTicket {
    def toStringBody(var_type: Object, var_price: Object, var_currency: Object) =
        s"""
        | {
        | "type":$var_type,"price":$var_price,"currency":$var_currency
        | }
        """.stripMargin
}
