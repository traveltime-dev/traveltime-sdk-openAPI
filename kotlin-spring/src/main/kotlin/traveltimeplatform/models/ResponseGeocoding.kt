package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseGeocodingGeoJsonFeature
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param type 
 * @param features 
 */
data class ResponseGeocoding (

        @get:NotNull 
        @JsonProperty("type") val type: String,

        @get:NotNull 
        @JsonProperty("features") val features: List<ResponseGeocodingGeoJsonFeature>
) {

}

