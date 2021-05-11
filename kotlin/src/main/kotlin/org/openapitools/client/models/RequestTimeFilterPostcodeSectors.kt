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

import org.openapitools.client.models.RequestTimeFilterPostcodeSectorsArrivalSearch
import org.openapitools.client.models.RequestTimeFilterPostcodeSectorsDepartureSearch

import com.squareup.moshi.Json

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */

data class RequestTimeFilterPostcodeSectors (
    @Json(name = "departure_searches")
    val departureSearches: kotlin.collections.List<RequestTimeFilterPostcodeSectorsDepartureSearch>? = null,
    @Json(name = "arrival_searches")
    val arrivalSearches: kotlin.collections.List<RequestTimeFilterPostcodeSectorsArrivalSearch>? = null
)

