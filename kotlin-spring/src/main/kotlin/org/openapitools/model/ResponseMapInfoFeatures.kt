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

/**
 * 
 * @param fares 
 * @param postcodes 
 * @param publicTransport 
 */
data class ResponseMapInfoFeatures(

    @get:NotNull 
    @JsonProperty("fares") val fares: kotlin.Boolean,

    @get:NotNull 
    @JsonProperty("postcodes") val postcodes: kotlin.Boolean,

    @JsonProperty("public_transport") val publicTransport: ResponseMapInfoFeaturesPublicTransport? = null
) {

}

