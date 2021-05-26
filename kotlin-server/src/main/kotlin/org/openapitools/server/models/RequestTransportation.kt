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
 * @param disableBorderCrossing 
 * @param ptChangeDelay 
 * @param walkingTime 
 * @param drivingTimeToStation 
 * @param cyclingTimeToStation 
 * @param parkingTime 
 * @param boardingTime 
 */
data class RequestTransportation(
    val type: RequestTransportation.Type,
    val disableBorderCrossing: kotlin.Boolean? = null,
    val ptChangeDelay: kotlin.Int? = null,
    val walkingTime: kotlin.Int? = null,
    val drivingTimeToStation: kotlin.Int? = null,
    val cyclingTimeToStation: kotlin.Int? = null,
    val parkingTime: kotlin.Int? = null,
    val boardingTime: kotlin.Int? = null
) 
{
    /**
    * 
    * Values: cycling,driving,drivingPlusTrain,publicTransport,walking,coach,bus,train,ferry,drivingPlusFerry,cyclingPlusFerry
    */
    enum class Type(val value: kotlin.String){
        cycling("cycling"),
        driving("driving"),
        drivingPlusTrain("driving+train"),
        publicTransport("public_transport"),
        walking("walking"),
        coach("coach"),
        bus("bus"),
        train("train"),
        ferry("ferry"),
        drivingPlusFerry("driving+ferry"),
        cyclingPlusFerry("cycling+ferry");
    }
}

