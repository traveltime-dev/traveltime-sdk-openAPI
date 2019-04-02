package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeDistrict
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param searchId 
 * @param districts 
 */
data class ResponseTimeFilterPostcodeDistrictsResult (

        @get:NotNull 
        @JsonProperty("search_id") val searchId: String,

        @get:NotNull 
        @JsonProperty("districts") val districts: List<ResponseTimeFilterPostcodeDistrict>
) {

}

