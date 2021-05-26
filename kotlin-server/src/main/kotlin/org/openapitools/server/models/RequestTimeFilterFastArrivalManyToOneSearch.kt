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

import org.openapitools.server.models.RequestArrivalTimePeriod
import org.openapitools.server.models.RequestTimeFilterFastProperty
import org.openapitools.server.models.RequestTransportationFast

/**
 * 
 * @param id 
 * @param arrivalLocationId 
 * @param departureLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTimePeriod 
 * @param properties 
 */
data class RequestTimeFilterFastArrivalManyToOneSearch(
    val id: kotlin.String,
    val arrivalLocationId: kotlin.String,
    val departureLocationIds: kotlin.collections.List<kotlin.String>,
    val transportation: RequestTransportationFast,
    val travelTime: kotlin.Int,
    val arrivalTimePeriod: RequestArrivalTimePeriod,
    val properties: kotlin.collections.List<RequestTimeFilterFastProperty>
) 

