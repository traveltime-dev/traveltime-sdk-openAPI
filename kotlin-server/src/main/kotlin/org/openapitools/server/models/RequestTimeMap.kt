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
package org.openapitools.server.models

import org.openapitools.server.models.RequestTimeMapArrivalSearch
import org.openapitools.server.models.RequestTimeMapDepartureSearch
import org.openapitools.server.models.RequestUnionOnIntersection

/**
 * 
 * @param departureSearches 
 * @param arrivalSearches 
 * @param unions 
 * @param intersections 
 */
data class RequestTimeMap(
    val departureSearches: kotlin.collections.List<RequestTimeMapDepartureSearch>? = null,
    val arrivalSearches: kotlin.collections.List<RequestTimeMapArrivalSearch>? = null,
    val unions: kotlin.collections.List<RequestUnionOnIntersection>? = null,
    val intersections: kotlin.collections.List<RequestUnionOnIntersection>? = null
) 

