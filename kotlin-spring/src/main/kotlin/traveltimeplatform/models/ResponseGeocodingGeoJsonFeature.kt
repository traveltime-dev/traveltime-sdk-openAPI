package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseGeocodingGeometry
import traveltimeplatform.models.ResponseGeocodingProperties
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
 * @param geometry 
 * @param properties 
 */
data class ResponseGeocodingGeoJsonFeature (

        @get:NotNull 
        @JsonProperty("type") val type: String,

        @get:NotNull 
        @JsonProperty("geometry") val geometry: ResponseGeocodingGeometry,

        @get:NotNull 
        @JsonProperty("properties") val properties: ResponseGeocodingProperties
) {

}

