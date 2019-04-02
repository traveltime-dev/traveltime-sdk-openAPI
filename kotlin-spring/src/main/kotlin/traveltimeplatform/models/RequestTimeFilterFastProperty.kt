package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: travelTime,fares
*/
enum class RequestTimeFilterFastProperty(val value: String) {

    travelTime("travel_time"),

    fares("fares");

}

