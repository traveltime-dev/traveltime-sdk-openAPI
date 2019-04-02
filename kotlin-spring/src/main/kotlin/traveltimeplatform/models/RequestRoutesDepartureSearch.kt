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
 * @param departureLocationId 
 * @param arrivalLocationIds 
 * @param transportation 
 * @param departureTime 
 * @param properties 
 * @param range 
 */
data class RequestRoutesDepartureSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("departure_location_id") val departureLocationId: String,

        @get:NotNull @get:Size(min=1,max=2) 
        @JsonProperty("arrival_location_ids") val arrivalLocationIds: List<String>,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull 
        @JsonProperty("departure_time") val departureTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestRoutesProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

