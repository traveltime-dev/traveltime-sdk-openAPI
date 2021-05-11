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

import org.openapitools.client.models.RequestLocation
import org.openapitools.client.models.RequestTimeFilterArrivalSearch
import org.openapitools.client.models.RequestTimeFilterDepartureSearch

import com.squareup.moshi.Json

/**
 * 
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */

data class RequestTimeFilter (
    @Json(name = "locations")
    val locations: kotlin.collections.List<RequestLocation>,
    @Json(name = "departure_searches")
    val departureSearches: kotlin.collections.List<RequestTimeFilterDepartureSearch>? = null,
    @Json(name = "arrival_searches")
    val arrivalSearches: kotlin.collections.List<RequestTimeFilterArrivalSearch>? = null
)

