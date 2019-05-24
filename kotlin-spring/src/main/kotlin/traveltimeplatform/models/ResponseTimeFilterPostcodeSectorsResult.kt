package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeSector
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param searchId 
 * @param sectors 
 */
data class ResponseTimeFilterPostcodeSectorsResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("sectors") val sectors: List<ResponseTimeFilterPostcodeSector>
) {

}

