package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestRangeFull
import traveltimeplatform.models.RequestRoutesProperty
import traveltimeplatform.models.RequestTransportation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param departureLocationIds 
 * @param arrivalLocationId 
 * @param transportation 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestRoutesArrivalSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull @get:Size(min=1,max=2) 
        @JsonProperty("departure_location_ids") val departureLocationIds: List<String>,

        @get:NotNull 
        @JsonProperty("arrival_location_id") val arrivalLocationId: String,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull 
        @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestRoutesProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

