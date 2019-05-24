package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.Coords
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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

