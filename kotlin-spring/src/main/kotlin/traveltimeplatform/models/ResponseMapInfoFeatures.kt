package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseMapInfoFeaturesPublicTransport
import javax.validation.Valid
import javax.validation.constraints.*

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

