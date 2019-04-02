package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeMapProperties
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param shape 
 * @param properties 
 */
data class ResponseTimeMapWktResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("shape") val shape: String,

        @get:NotNull 
        @JsonProperty("properties") val properties: ResponseTimeMapProperties
) {

}

