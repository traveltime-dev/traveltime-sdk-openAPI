package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.Coords
import traveltimeplatform.models.RequestRangeNoMaxResults
import traveltimeplatform.models.RequestTimeMapProperty
import traveltimeplatform.models.RequestTransportation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param coords 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeMapArrivalSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("coords") val coords: Coords,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

        @JsonProperty("properties") val properties: List<RequestTimeMapProperty>? = null,

        @JsonProperty("range") val range: RequestRangeNoMaxResults? = null
) {

}

