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
 * @param shell 
 * @param holes 
 */
data class ResponseShape(

    @field:Valid
    @field:JsonProperty("shell", required = true) val shell: kotlin.collections.List<Coords>,

    @field:JsonProperty("holes", required = true) val holes: kotlin.collections.List<kotlin.collections.List<Coords>>
) {

}

