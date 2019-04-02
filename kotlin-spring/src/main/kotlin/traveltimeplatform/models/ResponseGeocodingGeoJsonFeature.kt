package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseGeocodingGeometry
import traveltimeplatform.models.ResponseGeocodingProperties
import javax.validation.Valid
import javax.validation.constraints.*

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

