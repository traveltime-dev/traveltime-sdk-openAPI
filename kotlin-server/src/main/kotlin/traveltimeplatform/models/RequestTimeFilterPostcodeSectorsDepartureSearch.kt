/**
* TravelTime Platform API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package traveltimeplatform.models

import traveltimeplatform.models.RequestRangeFull
import traveltimeplatform.models.RequestTimeFilterPostcodeSectorsProperty
import traveltimeplatform.models.RequestTransportation

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param departureTime 
 * @param reachablePostcodesThreshold 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterPostcodeSectorsDepartureSearch (
    val id: kotlin.String,
    val transportation: RequestTransportation,
    val travelTime: kotlin.Int,
    val departureTime: java.time.LocalDateTime,
    val reachablePostcodesThreshold: kotlin.Double,
    val properties: kotlin.Array<RequestTimeFilterPostcodeSectorsProperty>,
    val range: RequestRangeFull? = null
) {

}
