package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseSupportedLocation
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
 * @param locations 
 * @param unsupportedLocations 
 */
data class ResponseSupportedLocations(

    @field:Valid
    @field:JsonProperty("locations", required = true) val locations: kotlin.collections.List<ResponseSupportedLocation>,

    @field:JsonProperty("unsupported_locations", required = true) val unsupportedLocations: kotlin.collections.List<kotlin.String>
) {

}

