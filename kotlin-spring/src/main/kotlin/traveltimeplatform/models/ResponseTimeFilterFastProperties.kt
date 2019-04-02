package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseFaresFast
import javax.validation.Valid
import javax.validation.constraints.*

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

