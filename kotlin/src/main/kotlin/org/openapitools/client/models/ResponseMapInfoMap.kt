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

import org.openapitools.client.models.ResponseMapInfoFeatures

import com.squareup.moshi.Json

/**
 * 
 * @param name 
 * @param features 
 */

data class ResponseMapInfoMap (
    @Json(name = "name")
    val name: kotlin.String,
    @Json(name = "features")
    val features: ResponseMapInfoFeatures
)

