package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeSectorProperties
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param code 
 * @param properties 
 */
data class ResponseTimeFilterPostcodeSector (

        @get:NotNull 
        @JsonProperty("code") val code: String,

        @get:NotNull 
        @JsonProperty("properties") val properties: ResponseTimeFilterPostcodeSectorProperties
) {

}

