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
* Values: travelTimeReachable,travelTimeAll,coverage
*/
enum class RequestTimeFilterPostcodeSectorsProperty(val value: kotlin.String) {

    @JsonProperty("travel_time_reachable") travelTimeReachable("travel_time_reachable"),

    @JsonProperty("travel_time_all") travelTimeAll("travel_time_all"),

    @JsonProperty("coverage") coverage("coverage");

}

