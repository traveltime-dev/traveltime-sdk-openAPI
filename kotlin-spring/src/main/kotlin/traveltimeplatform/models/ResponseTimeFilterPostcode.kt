package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodesProperties
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param code 
 * @param properties 
 */
data class ResponseTimeFilterPostcode (

        @get:NotNull 
        @JsonProperty("code") val code: String,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<ResponseTimeFilterPostcodesProperties>
) {

}

