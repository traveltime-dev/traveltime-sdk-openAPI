package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseShape
import traveltimeplatform.models.ResponseTimeMapProperties
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param shapes 
 * @param properties 
 */
data class ResponseTimeMapResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("shapes") val shapes: List<ResponseShape>,

        @get:NotNull 
        @JsonProperty("properties") val properties: ResponseTimeMapProperties
) {

}

