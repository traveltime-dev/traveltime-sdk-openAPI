package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

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

