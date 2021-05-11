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
package org.openapitools.server.models

import org.openapitools.server.models.RequestRangeFull
import org.openapitools.server.models.RequestTimeFilterPostcodeSectorsProperty
import org.openapitools.server.models.RequestTransportation

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param departureTime 
 * @param reachablePostcodesThreshold 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterPostcodeSectorsDepartureSearch(
    val id: kotlin.String,
    val transportation: RequestTransportation,
    val travelTime: kotlin.Int,
    val departureTime: java.time.OffsetDateTime,
    val reachablePostcodesThreshold: kotlin.Double,
    val properties: kotlin.collections.List<RequestTimeFilterPostcodeSectorsProperty>,
    val range: RequestRangeFull? = null
) 

