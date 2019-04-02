package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param travelTime 
 * @param distance 
 */
data class ResponseTimeFilterPostcodesProperties (

        @JsonProperty("travel_time") val travelTime: Int? = null,

        @JsonProperty("distance") val distance: Int? = null
) {

}

