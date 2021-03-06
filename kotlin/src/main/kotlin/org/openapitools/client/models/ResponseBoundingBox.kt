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

import org.openapitools.client.models.ResponseBox

import com.squareup.moshi.Json

/**
 * 
 * @param envelope 
 * @param boxes 
 */

data class ResponseBoundingBox (
    @Json(name = "envelope")
    val envelope: ResponseBox,
    @Json(name = "boxes")
    val boxes: kotlin.collections.List<ResponseBox>
)

