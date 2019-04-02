package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestRangeFull
import traveltimeplatform.models.RequestTimeFilterProperty
import traveltimeplatform.models.RequestTransportation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param departureLocationIds 
 * @param arrivalLocationId 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterArrivalSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull @get:Size(min=1,max=2000) 
        @JsonProperty("departure_location_ids") val departureLocationIds: List<String>,

        @get:NotNull 
        @JsonProperty("arrival_location_id") val arrivalLocationId: String,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestTimeFilterProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

