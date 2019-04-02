package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseBox
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param envelope 
 * @param boxes 
 */
data class ResponseBoundingBox (

        @get:NotNull 
        @JsonProperty("envelope") val envelope: ResponseBox,

        @get:NotNull 
        @JsonProperty("boxes") val boxes: List<ResponseBox>
) {

}

