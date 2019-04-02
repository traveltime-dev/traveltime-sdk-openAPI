package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterFastProperties
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param properties 
 */
data class ResponseTimeFilterFastLocation (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<ResponseTimeFilterFastProperties>
) {

}

