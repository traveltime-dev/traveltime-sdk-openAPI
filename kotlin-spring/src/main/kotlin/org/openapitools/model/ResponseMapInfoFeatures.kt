package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseMapInfoFeaturesPublicTransport
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
 * @param fares 
 * @param postcodes 
 * @param publicTransport 
 */
data class ResponseMapInfoFeatures(

    @field:JsonProperty("fares", required = true) val fares: kotlin.Boolean,

    @field:JsonProperty("postcodes", required = true) val postcodes: kotlin.Boolean,

    @field:Valid
    @field:JsonProperty("public_transport") val publicTransport: ResponseMapInfoFeaturesPublicTransport? = null
) {

}

