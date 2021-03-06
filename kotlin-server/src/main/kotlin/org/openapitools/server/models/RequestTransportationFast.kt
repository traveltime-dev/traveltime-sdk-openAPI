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


/**
 * 
 * @param type 
 */
data class RequestTransportationFast(
    val type: RequestTransportationFast.Type
) 
{
    /**
    * 
    * Values: publicTransport,driving,drivingPlusPublicTransport
    */
    enum class Type(val value: kotlin.String){
        publicTransport("public_transport"),
        driving("driving"),
        drivingPlusPublicTransport("driving+public_transport");
    }
}

