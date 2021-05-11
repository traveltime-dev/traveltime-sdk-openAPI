package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
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
 * @param type 
 * @param price 
 * @param currency 
 */
data class ResponseFareTicket(

    @field:JsonProperty("type", required = true) val type: ResponseFareTicket.Type,

    @field:JsonProperty("price", required = true) val price: kotlin.Double,

    @field:JsonProperty("currency", required = true) val currency: kotlin.String
) {

    /**
    * 
    * Values: single,week,month,year
    */
    enum class Type(val value: kotlin.String) {
    
        @JsonProperty("single") single("single"),
    
        @JsonProperty("week") week("week"),
    
        @JsonProperty("month") month("month"),
    
        @JsonProperty("year") year("year");
    
    }

}

