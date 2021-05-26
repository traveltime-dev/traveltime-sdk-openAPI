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

import org.openapitools.server.api.model.Coords
import org.openapitools.server.api.model.ResponseTransportationMode

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param id 
 * @param type 
 * @param mode 
 * @param directions 
 * @param distance 
 * @param travelTime 
 * @param coords 
 * @param direction 
 * @param road 
 * @param turn 
 * @param line 
 * @param departureStation 
 * @param arrivalStation 
 * @param departsAt 
 * @param arrivesAt 
 * @param numStops 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class ResponseRoutePart (
    @SerializedName("id") private val _id: kotlin.String?,
    @SerializedName("type") private val _type: ResponseRoutePart.Type?,
    @SerializedName("mode") private val _mode: ResponseTransportationMode?,
    @SerializedName("directions") private val _directions: kotlin.String?,
    @SerializedName("distance") private val _distance: kotlin.Int?,
    @SerializedName("travelTime") private val _travelTime: kotlin.Int?,
    @SerializedName("coords") private val _coords: kotlin.Array<Coords>?,
    val direction: kotlin.String? = null,
    val road: kotlin.String? = null,
    val turn: kotlin.String? = null,
    val line: kotlin.String? = null,
    val departureStation: kotlin.String? = null,
    val arrivalStation: kotlin.String? = null,
    val departsAt: kotlin.String? = null,
    val arrivesAt: kotlin.String? = null,
    val numStops: kotlin.Int? = null
) {

    /**
    * 
    * Values: basic,startEnd,road,publicTransport
    */
    enum class Type(val value: kotlin.String){
    
        basic("basic"),
    
        startEnd("start_end"),
    
        road("road"),
    
        publicTransport("public_transport");
    
    }

        val id get() = _id ?: throw IllegalArgumentException("id is required")
                    
        val type get() = _type ?: throw IllegalArgumentException("type is required")
                    
        val mode get() = _mode ?: throw IllegalArgumentException("mode is required")
                    
        val directions get() = _directions ?: throw IllegalArgumentException("directions is required")
                    
        val distance get() = _distance ?: throw IllegalArgumentException("distance is required")
                    
        val travelTime get() = _travelTime ?: throw IllegalArgumentException("travelTime is required")
                    
        val coords get() = _coords ?: throw IllegalArgumentException("coords is required")
                    
}

