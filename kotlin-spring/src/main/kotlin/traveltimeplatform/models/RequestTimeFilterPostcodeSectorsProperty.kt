package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: travelTimeReachable,travelTimeAll,coverage
*/
enum class RequestTimeFilterPostcodeSectorsProperty(val value: String) {

    travelTimeReachable("travel_time_reachable"),

    travelTimeAll("travel_time_all"),

    coverage("coverage");

}

