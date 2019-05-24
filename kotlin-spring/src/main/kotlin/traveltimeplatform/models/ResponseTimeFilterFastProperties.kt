package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFaresFast
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
 * @param fares 
 */
data class ResponseTimeFilterFastProperties (

        @JsonProperty("travel_time") val travelTime: Int? = null,

        @JsonProperty("fares") val fares: ResponseFaresFast? = null
) {

}

