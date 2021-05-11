package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
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
 * @param coordinates 
 */
data class ResponseGeocodingGeometry(

    @field:JsonProperty("type", required = true) val type: kotlin.String,

    @field:JsonProperty("coordinates", required = true) val coordinates: kotlin.collections.List<kotlin.Double>
) {

}

