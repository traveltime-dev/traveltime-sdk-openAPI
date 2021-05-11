package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseTimeFilterPostcodeDistrict
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
 * @param districts 
 */
data class ResponseTimeFilterPostcodeDistrictsResult(

    @field:JsonProperty("search_id", required = true) val searchId: kotlin.String,

    @field:Valid
    @field:JsonProperty("districts", required = true) val districts: kotlin.collections.List<ResponseTimeFilterPostcodeDistrict>
) {

}

