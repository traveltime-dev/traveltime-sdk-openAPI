package traveltimeplatform.models

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
* Values: travelTime,distance,distanceBreakdown,fares,route
*/
enum class RequestTimeFilterProperty(val value: String) {

    travelTime("travel_time"),

    distance("distance"),

    distanceBreakdown("distance_breakdown"),

    fares("fares"),

    route("route");

}

