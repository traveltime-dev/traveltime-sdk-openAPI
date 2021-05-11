package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid

/**
* 
* Values: travelTime,distance,distanceBreakdown,fares,route
*/
enum class RequestTimeFilterProperty(val value: kotlin.String) {

    @JsonProperty("travel_time") travelTime("travel_time"),

    @JsonProperty("distance") distance("distance"),

    @JsonProperty("distance_breakdown") distanceBreakdown("distance_breakdown"),

    @JsonProperty("fares") fares("fares"),

    @JsonProperty("route") route("route");

}

