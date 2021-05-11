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
 * @param lat 
 * @param lng 
 */
data class Coords(

    @field:JsonProperty("lat", required = true) val lat: kotlin.Double,

    @field:JsonProperty("lng", required = true) val lng: kotlin.Double
) {

}

