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

import org.openapitools.server.api.model.ResponseTimeFilterPostcodeSectorProperties

        
import com.google.gson.annotations.SerializedName
import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude
/**
 * 
 * @param code 
 * @param properties 
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
data class ResponseTimeFilterPostcodeSector (
    @SerializedName("code") private val _code: kotlin.String?,
    @SerializedName("properties") private val _properties: ResponseTimeFilterPostcodeSectorProperties?
) {

        val code get() = _code ?: throw IllegalArgumentException("code is required")
                    
        val properties get() = _properties ?: throw IllegalArgumentException("properties is required")
                    
}

