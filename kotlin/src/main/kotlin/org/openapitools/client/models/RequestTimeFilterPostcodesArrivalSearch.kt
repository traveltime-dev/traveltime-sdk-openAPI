/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.2
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.client.models

import org.openapitools.client.models.RequestRangeFull
import org.openapitools.client.models.RequestTimeFilterPostcodesProperty
import org.openapitools.client.models.RequestTransportation

import com.squareup.moshi.Json

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */

data class RequestTimeFilterPostcodesArrivalSearch (
    @Json(name = "id")
    val id: kotlin.String,
    @Json(name = "transportation")
    val transportation: RequestTransportation,
    @Json(name = "travel_time")
    val travelTime: kotlin.Int,
    @Json(name = "arrival_time")
    val arrivalTime: java.time.OffsetDateTime,
    @Json(name = "properties")
    val properties: kotlin.collections.List<RequestTimeFilterPostcodesProperty>,
    @Json(name = "range")
    val range: RequestRangeFull? = null
)

