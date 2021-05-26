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
package org.openapitools.server.models

import org.openapitools.server.models.ResponseFareTicket
import org.openapitools.server.models.ResponseTransportationMode

/**
 * 
 * @param modes 
 * @param routePartIds 
 * @param tickets 
 */
data class ResponseFaresBreakdownItem(
    val modes: kotlin.collections.List<ResponseTransportationMode>,
    val routePartIds: kotlin.collections.List<kotlin.Int>,
    val tickets: kotlin.collections.List<ResponseFareTicket>
) 

