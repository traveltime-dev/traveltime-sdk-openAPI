/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.3
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models

import org.openapitools.client.models.ResponseFareTicket
import org.openapitools.client.models.ResponseTransportationMode

import com.squareup.moshi.Json

/**
 * 
 * @param modes 
 * @param routePartIds 
 * @param tickets 
 */

data class ResponseFaresBreakdownItem (
    @Json(name = "modes")
    val modes: kotlin.collections.List<ResponseTransportationMode>,
    @Json(name = "route_part_ids")
    val routePartIds: kotlin.collections.List<kotlin.Int>,
    @Json(name = "tickets")
    val tickets: kotlin.collections.List<ResponseFareTicket>
)

