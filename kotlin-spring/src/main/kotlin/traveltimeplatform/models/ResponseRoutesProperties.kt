package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFares
import traveltimeplatform.models.ResponseRoute
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param travelTime 
 * @param distance 
 * @param fares 
 * @param route 
 */
data class ResponseRoutesProperties (

        @JsonProperty("travel_time") val travelTime: Int? = null,

        @JsonProperty("distance") val distance: Int? = null,

        @JsonProperty("fares") val fares: ResponseFares? = null,

        @JsonProperty("route") val route: ResponseRoute? = null
) {

}

