package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.Coords
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param shell 
 * @param holes 
 */
data class ResponseShape (

        @get:NotNull 
        @JsonProperty("shell") val shell: List<Coords>,

        @get:NotNull 
        @JsonProperty("holes") val holes: List<List<Coords>>
) {

}

