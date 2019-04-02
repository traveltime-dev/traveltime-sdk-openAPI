package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param httpStatus 
 * @param errorCode 
 * @param description 
 * @param documentationLink 
 * @param additionalInfo 
 */
data class ResponseError (

        @JsonProperty("http_status") val httpStatus: Int? = null,

        @JsonProperty("error_code") val errorCode: Int? = null,

        @JsonProperty("description") val description: String? = null,

        @JsonProperty("documentation_link") val documentationLink: String? = null,

        @JsonProperty("additional_info") val additionalInfo: Map<kotlin.String, List<String>>? = null
) {

}

