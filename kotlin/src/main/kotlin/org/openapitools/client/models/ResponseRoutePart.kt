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

import org.openapitools.client.models.Coords
import org.openapitools.client.models.ResponseTransportationMode

import com.squareup.moshi.Json

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

data class ResponseRoutePart (
    @Json(name = "id")
    val id: kotlin.String,
    @Json(name = "type")
    val type: ResponseRoutePart.Type,
    @Json(name = "mode")
    val mode: ResponseTransportationMode,
    @Json(name = "directions")
    val directions: kotlin.String,
    @Json(name = "distance")
    val distance: kotlin.Int,
    @Json(name = "travel_time")
    val travelTime: kotlin.Int,
    @Json(name = "coords")
    val coords: kotlin.collections.List<Coords>,
    @Json(name = "direction")
    val direction: kotlin.String? = null,
    @Json(name = "road")
    val road: kotlin.String? = null,
    @Json(name = "turn")
    val turn: kotlin.String? = null,
    @Json(name = "line")
    val line: kotlin.String? = null,
    @Json(name = "departure_station")
    val departureStation: kotlin.String? = null,
    @Json(name = "arrival_station")
    val arrivalStation: kotlin.String? = null,
    @Json(name = "departs_at")
    val departsAt: kotlin.String? = null,
    @Json(name = "arrives_at")
    val arrivesAt: kotlin.String? = null,
    @Json(name = "num_stops")
    val numStops: kotlin.Int? = null
) {

    /**
     * 
     * Values: basic,startEnd,road,publicTransport
     */
    enum class Type(val value: kotlin.String) {
        @Json(name = "basic") basic("basic"),
        @Json(name = "start_end") startEnd("start_end"),
        @Json(name = "road") road("road"),
        @Json(name = "public_transport") publicTransport("public_transport");
    }
}

