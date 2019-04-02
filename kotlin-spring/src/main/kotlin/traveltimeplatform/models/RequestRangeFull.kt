package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param enabled 
 * @param maxResults 
 * @param width 
 */
data class RequestRangeFull (

        @get:NotNull 
        @JsonProperty("enabled") val enabled: Boolean,

        @get:NotNull @get:Min(1) @get:Max(5) 
        @JsonProperty("max_results") val maxResults: Int,

        @get:NotNull @get:Min(1) @get:Max(43200) 
        @JsonProperty("width") val width: Int
) {

}

