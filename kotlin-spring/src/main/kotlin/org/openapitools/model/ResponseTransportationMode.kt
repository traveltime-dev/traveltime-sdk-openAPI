package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
* 
* Values: car,parking,boarding,walk,bike,train,railNational,railOverground,railUnderground,railDlr,bus,cableCar,plane,ferry,coach
*/
enum class ResponseTransportationMode(val value: kotlin.String) {

    car("car"),

    parking("parking"),

    boarding("boarding"),

    walk("walk"),

    bike("bike"),

    train("train"),

    railNational("rail_national"),

    railOverground("rail_overground"),

    railUnderground("rail_underground"),

    railDlr("rail_dlr"),

    bus("bus"),

    cableCar("cable_car"),

    plane("plane"),

    ferry("ferry"),

    coach("coach");

}

