package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseGeocodingGeoJsonFeature
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
 * @param features 
 */
data class ResponseGeocoding(

    @field:JsonProperty("type", required = true) val type: kotlin.String,

    @field:Valid
    @field:JsonProperty("features", required = true) val features: kotlin.collections.List<ResponseGeocodingGeoJsonFeature>
) {

}

