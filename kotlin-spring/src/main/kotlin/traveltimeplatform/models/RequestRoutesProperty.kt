package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: travelTime,distance,fares,route
*/
enum class RequestRoutesProperty(val value: String) {

    travelTime("travel_time"),

    distance("distance"),

    fares("fares"),

    route("route");

}

