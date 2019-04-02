package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param isOnlyWalking 
 */
data class ResponseTimeMapProperties (

        @JsonProperty("is_only_walking") val isOnlyWalking: Boolean? = null
) {

}

