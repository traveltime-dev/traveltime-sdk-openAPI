package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: car,parking,boarding,walk,bike,train,railNational,railOverground,railUnderground,railDlr,bus,cableCar,plane,ferry,coach
*/
enum class ResponseTransportationMode(val value: String) {

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

