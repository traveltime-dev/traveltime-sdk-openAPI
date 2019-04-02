package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: travelTime,distance,distanceBreakdown,fares,route
*/
enum class RequestTimeFilterProperty(val value: String) {

    travelTime("travel_time"),

    distance("distance"),

    distanceBreakdown("distance_breakdown"),

    fares("fares"),

    route("route");

}

