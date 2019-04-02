package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcode
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param postcodes 
 */
data class ResponseTimeFilterPostcodesResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("postcodes") val postcodes: List<ResponseTimeFilterPostcode>
) {

}

