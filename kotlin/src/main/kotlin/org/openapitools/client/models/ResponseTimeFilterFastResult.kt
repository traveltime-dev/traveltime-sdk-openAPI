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

import org.openapitools.client.models.ResponseTimeFilterFastLocation

import com.squareup.moshi.Json

/**
 * 
 * @param searchId 
 * @param locations 
 * @param unreachable 
 */

data class ResponseTimeFilterFastResult (
    @Json(name = "search_id")
    val searchId: kotlin.String,
    @Json(name = "locations")
    val locations: kotlin.collections.List<ResponseTimeFilterFastLocation>,
    @Json(name = "unreachable")
    val unreachable: kotlin.collections.List<kotlin.String>
)

