package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTravelTimeStatistics
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param travelTimeReachable 
 * @param travelTimeAll 
 * @param coverage 
 */
data class ResponseTimeFilterPostcodeDistrictProperties (

        @JsonProperty("travel_time_reachable") val travelTimeReachable: ResponseTravelTimeStatistics? = null,

        @JsonProperty("travel_time_all") val travelTimeAll: ResponseTravelTimeStatistics? = null,

        @JsonProperty("coverage") val coverage: Double? = null
) {

}

