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
* Values: car,parking,boarding,walk,bike,train,railNational,railOverground,railUnderground,railDlr,bus,cableCar,plane,ferry,coach
*/
enum class ResponseTransportationMode(val value: kotlin.String) {

    @JsonProperty("car") car("car"),

    @JsonProperty("parking") parking("parking"),

    @JsonProperty("boarding") boarding("boarding"),

    @JsonProperty("walk") walk("walk"),

    @JsonProperty("bike") bike("bike"),

    @JsonProperty("train") train("train"),

    @JsonProperty("rail_national") railNational("rail_national"),

    @JsonProperty("rail_overground") railOverground("rail_overground"),

    @JsonProperty("rail_underground") railUnderground("rail_underground"),

    @JsonProperty("rail_dlr") railDlr("rail_dlr"),

    @JsonProperty("bus") bus("bus"),

    @JsonProperty("cable_car") cableCar("cable_car"),

    @JsonProperty("plane") plane("plane"),

    @JsonProperty("ferry") ferry("ferry"),

    @JsonProperty("coach") coach("coach");

}

