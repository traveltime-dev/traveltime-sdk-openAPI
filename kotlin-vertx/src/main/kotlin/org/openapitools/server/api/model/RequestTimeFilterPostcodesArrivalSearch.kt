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

import org.openapitools.server.api.model.RequestRangeFull
import org.openapitools.server.api.model.RequestTimeFilterPostcodesProperty
import org.openapitools.server.api.model.RequestTransportation

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class RequestTimeFilterPostcodesArrivalSearch (
    @SerializedName("id") private val _id: kotlin.String?,
    @SerializedName("transportation") private val _transportation: RequestTransportation?,
    @SerializedName("travelTime") private val _travelTime: kotlin.Int?,
    @SerializedName("arrivalTime") private val _arrivalTime: java.time.OffsetDateTime?,
    @SerializedName("properties") private val _properties: kotlin.Array<RequestTimeFilterPostcodesProperty>?,
    val range: RequestRangeFull? = null
) {

        val id get() = _id ?: throw IllegalArgumentException("id is required")
                    
        val transportation get() = _transportation ?: throw IllegalArgumentException("transportation is required")
                    
        val travelTime get() = _travelTime ?: throw IllegalArgumentException("travelTime is required")
                    
        val arrivalTime get() = _arrivalTime ?: throw IllegalArgumentException("arrivalTime is required")
                    
        val properties get() = _properties ?: throw IllegalArgumentException("properties is required")
                    
}

