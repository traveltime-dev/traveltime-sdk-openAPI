/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.1
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models


/**
* 
* Values: travelTime,distance,distanceBreakdown,fares,route
*/
enum class RequestTimeFilterProperty(val value: kotlin.String){

    travelTime("travel_time"),

    distance("distance"),

    distanceBreakdown("distance_breakdown"),

    fares("fares"),

    route("route");

}
