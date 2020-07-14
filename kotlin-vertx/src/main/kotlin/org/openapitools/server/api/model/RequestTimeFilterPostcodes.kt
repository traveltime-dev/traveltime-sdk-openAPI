/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.1
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.api.model

import org.openapitools.server.api.model.RequestTimeFilterPostcodesArrivalSearch
import org.openapitools.server.api.model.RequestTimeFilterPostcodesDepartureSearch

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class RequestTimeFilterPostcodes (
    val departureSearches: kotlin.Array<RequestTimeFilterPostcodesDepartureSearch>? = null,
    val arrivalSearches: kotlin.Array<RequestTimeFilterPostcodesArrivalSearch>? = null
) {

}
