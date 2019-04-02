package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseTimeFilterPostcodeDistrictsResult
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param results 
 */
data class ResponseTimeFilterPostcodeDistricts (

        @get:NotNull 
        @JsonProperty("results") val results: List<ResponseTimeFilterPostcodeDistrictsResult>
) {

}

