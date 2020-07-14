package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.RequestTimeFilterFastArrivalManyToOneSearch
import org.openapitools.model.RequestTimeFilterFastArrivalOneToManySearch
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param manyToOne 
 * @param oneToMany 
 */
data class RequestTimeFilterFastArrivalSearches(
@get:Size(max=10) 
    @field:JsonProperty("many_to_one") val manyToOne: kotlin.collections.List<RequestTimeFilterFastArrivalManyToOneSearch>? = null,
@get:Size(max=10) 
    @field:JsonProperty("one_to_many") val oneToMany: kotlin.collections.List<RequestTimeFilterFastArrivalOneToManySearch>? = null
) {

}

