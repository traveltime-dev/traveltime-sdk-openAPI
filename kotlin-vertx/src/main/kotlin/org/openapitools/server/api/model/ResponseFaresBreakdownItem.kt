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
package org.openapitools.server.api.model

import org.openapitools.server.api.model.ResponseFareTicket
import org.openapitools.server.api.model.ResponseTransportationMode

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param modes 
 * @param routePartIds 
 * @param tickets 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class ResponseFaresBreakdownItem (
    @SerializedName("modes") private val _modes: kotlin.Array<ResponseTransportationMode>?,
    @SerializedName("routePartIds") private val _routePartIds: kotlin.Array<kotlin.Int>?,
    @SerializedName("tickets") private val _tickets: kotlin.Array<ResponseFareTicket>?
) {

        val modes get() = _modes ?: throw IllegalArgumentException("modes is required")
                    
        val routePartIds get() = _routePartIds ?: throw IllegalArgumentException("routePartIds is required")
                    
        val tickets get() = _tickets ?: throw IllegalArgumentException("tickets is required")
                    
}

