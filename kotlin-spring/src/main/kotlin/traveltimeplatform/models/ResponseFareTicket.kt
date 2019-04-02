package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param type 
 * @param price 
 * @param currency 
 */
data class ResponseFareTicket (

        @get:NotNull 
        @JsonProperty("type") val type: ResponseFareTicket.Type,

        @get:NotNull 
        @JsonProperty("price") val price: Double,

        @get:NotNull 
        @JsonProperty("currency") val currency: String
) {

    /**
    * 
    * Values: single,week,month,year
    */
    enum class Type(val value: String) {
    
        @JsonProperty("single") single("single"),
    
        @JsonProperty("week") week("week"),
    
        @JsonProperty("month") month("month"),
    
        @JsonProperty("year") year("year");
    
    }

}

