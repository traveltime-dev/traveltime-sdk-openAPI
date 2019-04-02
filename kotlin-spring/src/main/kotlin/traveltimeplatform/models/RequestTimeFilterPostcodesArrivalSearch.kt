package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestRangeFull
import traveltimeplatform.models.RequestTimeFilterPostcodesProperty
import traveltimeplatform.models.RequestTransportation
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTime 
 * @param properties 
 * @param range 
 */
data class RequestTimeFilterPostcodesArrivalSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportation,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("arrival_time") val arrivalTime: java.time.OffsetDateTime,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestTimeFilterPostcodesProperty>,

        @JsonProperty("range") val range: RequestRangeFull? = null
) {

}

