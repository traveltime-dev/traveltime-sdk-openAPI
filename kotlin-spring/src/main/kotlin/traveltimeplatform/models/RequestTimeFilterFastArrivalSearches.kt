package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestTimeFilterFastArrivalManyToOneSearch
import traveltimeplatform.models.RequestTimeFilterFastArrivalOneToManySearch
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param manyToOne 
 * @param oneToMany 
 */
data class RequestTimeFilterFastArrivalSearches (
@get:Size(max=10) 
        @JsonProperty("many_to_one") val manyToOne: List<RequestTimeFilterFastArrivalManyToOneSearch>? = null,
@get:Size(max=10) 
        @JsonProperty("one_to_many") val oneToMany: List<RequestTimeFilterFastArrivalOneToManySearch>? = null
) {

}

