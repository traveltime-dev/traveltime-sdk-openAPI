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
import javax.validation.Valid

/**
 * 
 * @param type 
 * @param geometry 
 * @param properties 
 */
data class ResponseGeocodingGeoJsonFeature(

    @field:JsonProperty("type", required = true) val type: kotlin.String,

    @field:Valid
    @field:JsonProperty("geometry", required = true) val geometry: ResponseGeocodingGeometry,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: ResponseGeocodingProperties
) {

}

