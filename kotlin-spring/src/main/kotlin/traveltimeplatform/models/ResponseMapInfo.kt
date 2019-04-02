package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseMapInfoMap
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param maps 
 */
data class ResponseMapInfo (

        @get:NotNull 
        @JsonProperty("maps") val maps: List<ResponseMapInfoMap>
) {

}

