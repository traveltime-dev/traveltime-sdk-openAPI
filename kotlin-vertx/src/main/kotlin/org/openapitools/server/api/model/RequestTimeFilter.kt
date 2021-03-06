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

import org.openapitools.server.api.model.RequestLocation
import org.openapitools.server.api.model.RequestTimeFilterArrivalSearch
import org.openapitools.server.api.model.RequestTimeFilterDepartureSearch

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param locations 
 * @param departureSearches 
 * @param arrivalSearches 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class RequestTimeFilter (
    @SerializedName("locations") private val _locations: kotlin.Array<RequestLocation>?,
    val departureSearches: kotlin.Array<RequestTimeFilterDepartureSearch>? = null,
    val arrivalSearches: kotlin.Array<RequestTimeFilterArrivalSearch>? = null
) {

        val locations get() = _locations ?: throw IllegalArgumentException("locations is required")
                    
}

