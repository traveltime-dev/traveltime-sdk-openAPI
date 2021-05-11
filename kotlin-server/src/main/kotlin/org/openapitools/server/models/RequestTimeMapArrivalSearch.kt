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

import org.openapitools.server.models.Coords
import org.openapitools.server.models.RequestRangeNoMaxResults
import org.openapitools.server.models.RequestTimeMapProperty
import org.openapitools.server.models.RequestTransportation

/**
 * 
 * @param id 
 * @param coords 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeMapArrivalSearch(
    val id: kotlin.String,
    val coords: Coords,
    val transportation: RequestTransportation,
    val travelTime: kotlin.Int,
    val arrivalTime: java.time.OffsetDateTime,
    val properties: kotlin.collections.List<RequestTimeMapProperty>? = null,
    val range: RequestRangeNoMaxResults? = null
) 

