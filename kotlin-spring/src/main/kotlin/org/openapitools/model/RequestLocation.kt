package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.Coords
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
 * @param id 
 * @param coords 
 */
data class RequestLocation(

    @field:JsonProperty("id", required = true) val id: kotlin.String,

    @field:Valid
    @field:JsonProperty("coords", required = true) val coords: Coords
) {

}

