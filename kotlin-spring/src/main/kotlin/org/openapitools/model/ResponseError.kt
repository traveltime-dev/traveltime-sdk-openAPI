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

/**
 * 
 * @param httpStatus 
 * @param errorCode 
 * @param description 
 * @param documentationLink 
 * @param additionalInfo 
 */
data class ResponseError (

        @JsonProperty("http_status") val httpStatus: kotlin.Int? = null,

        @JsonProperty("error_code") val errorCode: kotlin.Int? = null,

        @JsonProperty("description") val description: kotlin.String? = null,

        @JsonProperty("documentation_link") val documentationLink: kotlin.String? = null,

        @JsonProperty("additional_info") val additionalInfo: kotlin.collections.Map<kotlin.String, kotlin.collections.List<kotlin.String>>? = null
) {

}

