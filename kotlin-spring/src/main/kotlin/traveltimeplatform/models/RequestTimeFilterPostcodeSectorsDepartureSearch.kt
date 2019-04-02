package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestRangeFull
import traveltimeplatform.models.RequestTimeFilterPostcodeSectorsProperty
import traveltimeplatform.models.RequestTransportation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param departureTime 
 * @param reachablePostcodesThreshold 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterPostcodeSectorsDepartureSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("reachable_postcodes_threshold") val reachablePostcodesThreshold: Double,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestTimeFilterPostcodeSectorsProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

