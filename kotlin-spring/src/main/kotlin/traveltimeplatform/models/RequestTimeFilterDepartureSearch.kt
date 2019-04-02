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
 * @param departureLocationId 
 * @param arrivalLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param departureTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterDepartureSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("departure_location_id") val departureLocationId: String,

        @get:NotNull @get:Size(min=1,max=2000) 
        @JsonProperty("arrival_location_ids") val arrivalLocationIds: List<String>,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestTimeFilterProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

