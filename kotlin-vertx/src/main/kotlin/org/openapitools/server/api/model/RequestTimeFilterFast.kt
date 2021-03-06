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
import org.openapitools.server.api.model.RequestTimeFilterFastArrivalSearches

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param locations 
 * @param arrivalSearches 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class RequestTimeFilterFast (
    @SerializedName("locations") private val _locations: kotlin.Array<RequestLocation>?,
    @SerializedName("arrivalSearches") private val _arrivalSearches: RequestTimeFilterFastArrivalSearches?
) {

        val locations get() = _locations ?: throw IllegalArgumentException("locations is required")
                    
        val arrivalSearches get() = _arrivalSearches ?: throw IllegalArgumentException("arrivalSearches is required")
                    
}

