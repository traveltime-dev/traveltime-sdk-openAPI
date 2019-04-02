package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFares
import traveltimeplatform.models.ResponseRoute
import javax.validation.Valid
import javax.validation.constraints.*

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

