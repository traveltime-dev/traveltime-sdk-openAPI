package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseMapInfoFeaturesPublicTransport
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param publicTransport 
 * @param fares 
 * @param postcodes 
 */
data class ResponseMapInfoFeatures (

        @get:NotNull 
        @JsonProperty("fares") val fares: Boolean,

        @get:NotNull 
        @JsonProperty("postcodes") val postcodes: Boolean,

        @JsonProperty("public_transport") val publicTransport: ResponseMapInfoFeaturesPublicTransport? = null
) {

}

