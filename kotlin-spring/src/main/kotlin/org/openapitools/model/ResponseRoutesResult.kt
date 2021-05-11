package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseRoutesLocation
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
 * @param searchId 
 * @param locations 
 * @param unreachable 
 */
data class ResponseRoutesResult(

    @field:JsonProperty("search_id", required = true) val searchId: kotlin.String,

    @field:Valid
    @field:JsonProperty("locations", required = true) val locations: kotlin.collections.List<ResponseRoutesLocation>,

    @field:JsonProperty("unreachable", required = true) val unreachable: kotlin.collections.List<kotlin.String>
) {

}

