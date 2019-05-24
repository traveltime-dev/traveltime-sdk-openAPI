package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseGeocodingGeoJsonFeature
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

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

