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

import org.openapitools.server.models.RequestArrivalTimePeriod
import org.openapitools.server.models.RequestTimeFilterFastProperty
import org.openapitools.server.models.RequestTransportationFast

/**
 * 
 * @param id 
 * @param departureLocationId 
 * @param arrivalLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTimePeriod 
 * @param properties 
 */
data class RequestTimeFilterFastArrivalOneToManySearch(
    val id: kotlin.String,
    val departureLocationId: kotlin.String,
    val arrivalLocationIds: kotlin.collections.List<kotlin.String>,
    val transportation: RequestTransportationFast,
    val travelTime: kotlin.Int,
    val arrivalTimePeriod: RequestArrivalTimePeriod,
    val properties: kotlin.collections.List<RequestTimeFilterFastProperty>
) 

