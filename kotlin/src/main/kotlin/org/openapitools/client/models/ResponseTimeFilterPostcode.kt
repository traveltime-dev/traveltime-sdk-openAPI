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

import org.openapitools.client.models.ResponseTimeFilterPostcodesProperties

import com.squareup.moshi.Json

/**
 * 
 * @param code 
 * @param properties 
 */

data class ResponseTimeFilterPostcode (
    @Json(name = "code")
    val code: kotlin.String,
    @Json(name = "properties")
    val properties: kotlin.collections.List<ResponseTimeFilterPostcodesProperties>
)

