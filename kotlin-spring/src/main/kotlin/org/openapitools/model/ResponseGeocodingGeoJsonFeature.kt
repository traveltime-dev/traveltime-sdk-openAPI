package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseGeocodingGeometry
import org.openapitools.model.ResponseGeocodingProperties
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
data class ResponseGeocodingGeoJsonFeature(

    @get:NotNull 
    @field:JsonProperty("type") val type: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("geometry") val geometry: ResponseGeocodingGeometry,

    @get:NotNull 
    @field:JsonProperty("properties") val properties: ResponseGeocodingProperties
) {

}

