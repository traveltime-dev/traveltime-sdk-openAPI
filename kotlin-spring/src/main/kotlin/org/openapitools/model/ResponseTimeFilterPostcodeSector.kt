package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTimeFilterPostcodeSectorProperties
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
 * @param code 
 * @param properties 
 */
data class ResponseTimeFilterPostcodeSector(

    @field:JsonProperty("code", required = true) val code: kotlin.String,

    @field:Valid
    @field:JsonProperty("properties", required = true) val properties: ResponseTimeFilterPostcodeSectorProperties
) {

}

