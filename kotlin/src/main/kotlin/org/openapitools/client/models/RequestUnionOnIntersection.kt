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


import com.squareup.moshi.Json

/**
 * 
 * @param id 
 * @param searchIds 
 */

data class RequestUnionOnIntersection (
    @Json(name = "id")
    val id: kotlin.String,
    @Json(name = "search_ids")
    val searchIds: kotlin.collections.List<kotlin.String>
)

