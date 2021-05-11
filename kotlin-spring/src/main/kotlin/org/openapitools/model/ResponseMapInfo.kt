package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseMapInfoMap
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
 * @param maps 
 */
data class ResponseMapInfo(

    @field:Valid
    @field:JsonProperty("maps", required = true) val maps: kotlin.collections.List<ResponseMapInfoMap>
) {

}

