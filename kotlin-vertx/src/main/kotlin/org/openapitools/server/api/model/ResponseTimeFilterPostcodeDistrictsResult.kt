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

import org.openapitools.server.api.model.ResponseTimeFilterPostcodeDistrict

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param searchId 
 * @param districts 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class ResponseTimeFilterPostcodeDistrictsResult (
    @SerializedName("searchId") private val _searchId: kotlin.String?,
    @SerializedName("districts") private val _districts: kotlin.Array<ResponseTimeFilterPostcodeDistrict>?
) {

        val searchId get() = _searchId ?: throw IllegalArgumentException("searchId is required")
                    
        val districts get() = _districts ?: throw IllegalArgumentException("districts is required")
                    
}

