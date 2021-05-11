package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTimeFilterPostcode
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
 * @param postcodes 
 */
data class ResponseTimeFilterPostcodesResult(

    @field:JsonProperty("search_id", required = true) val searchId: kotlin.String,

    @field:Valid
    @field:JsonProperty("postcodes", required = true) val postcodes: kotlin.collections.List<ResponseTimeFilterPostcode>
) {

}

