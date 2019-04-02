package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseMapInfoFeatures
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param name 
 * @param features 
 */
data class ResponseMapInfoMap (

        @get:NotNull 
        @JsonProperty("name") val name: String,

        @get:NotNull 
        @JsonProperty("features") val features: ResponseMapInfoFeatures
) {

}

