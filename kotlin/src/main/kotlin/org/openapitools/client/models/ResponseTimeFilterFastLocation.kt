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
package org.openapitools.client.models

import org.openapitools.client.models.ResponseTimeFilterFastProperties

import com.squareup.moshi.Json

/**
 * 
 * @param id 
 * @param properties 
 */

data class ResponseTimeFilterFastLocation (
    @Json(name = "id")
    val id: kotlin.String,
    @Json(name = "properties")
    val properties: kotlin.collections.List<ResponseTimeFilterFastProperties>
)

