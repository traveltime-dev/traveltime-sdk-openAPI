package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseDistanceBreakdownItem
import traveltimeplatform.models.ResponseFares
import traveltimeplatform.models.ResponseRoute
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param travelTime 
 * @param distance 
 * @param distanceBreakdown 
 * @param fares 
 * @param route 
 */
data class ResponseTimeFilterProperties (

        @JsonProperty("travel_time") val travelTime: Int? = null,

        @JsonProperty("distance") val distance: Int? = null,

        @JsonProperty("distance_breakdown") val distanceBreakdown: List<ResponseDistanceBreakdownItem>? = null,

        @JsonProperty("fares") val fares: ResponseFares? = null,

        @JsonProperty("route") val route: ResponseRoute? = null
) {

}

