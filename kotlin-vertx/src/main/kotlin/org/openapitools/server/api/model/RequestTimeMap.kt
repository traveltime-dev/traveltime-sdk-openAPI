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
package org.openapitools.server.api.model

import org.openapitools.server.api.model.RequestTimeMapArrivalSearch
import org.openapitools.server.api.model.RequestTimeMapDepartureSearch
import org.openapitools.server.api.model.RequestUnionOnIntersection

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 * @param unions 
 * @param intersections 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class RequestTimeMap (
    val departureSearches: kotlin.Array<RequestTimeMapDepartureSearch>? = null,
    val arrivalSearches: kotlin.Array<RequestTimeMapArrivalSearch>? = null,
    val unions: kotlin.Array<RequestUnionOnIntersection>? = null,
    val intersections: kotlin.Array<RequestUnionOnIntersection>? = null
) {

}

