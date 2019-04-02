package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.Coords
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param coords 
 */
data class RequestLocation (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("coords") val coords: Coords
) {

}

