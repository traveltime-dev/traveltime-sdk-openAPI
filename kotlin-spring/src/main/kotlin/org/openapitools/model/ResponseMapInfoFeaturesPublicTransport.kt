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
import javax.validation.Valid

/**
 * 
 * @param dateStart 
 * @param dateEnd 
 */
data class ResponseMapInfoFeaturesPublicTransport(

    @field:JsonProperty("date_start", required = true) val dateStart: java.time.OffsetDateTime,

    @field:JsonProperty("date_end", required = true) val dateEnd: java.time.OffsetDateTime
) {

}

