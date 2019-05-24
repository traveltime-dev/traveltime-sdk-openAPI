package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param dateStart 
 * @param dateEnd 
 */
data class ResponseMapInfoFeaturesPublicTransport (

        @get:NotNull 
        @JsonProperty("date_start") val dateStart: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("date_end") val dateEnd: java.time.OffsetDateTime
) {

}

