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
* Values: travelTimeReachable,travelTimeAll,coverage
*/
enum class RequestTimeFilterPostcodeDistrictsProperty(val value: String) {

    travelTimeReachable("travel_time_reachable"),

    travelTimeAll("travel_time_all"),

    coverage("coverage");

}

