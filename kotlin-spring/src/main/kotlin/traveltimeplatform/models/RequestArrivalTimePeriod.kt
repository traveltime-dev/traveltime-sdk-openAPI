package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
* 
* Values: weekdayMorning
*/
enum class RequestArrivalTimePeriod(val value: String) {

    weekdayMorning("weekday_morning");

}

