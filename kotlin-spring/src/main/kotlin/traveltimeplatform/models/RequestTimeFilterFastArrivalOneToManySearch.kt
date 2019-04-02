package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestArrivalTimePeriod
import traveltimeplatform.models.RequestTimeFilterFastProperty
import traveltimeplatform.models.RequestTransportationFast
import javax.validation.Valid
import javax.validation.constraints.*

/**
 * 
 * @param id 
 * @param departureLocationId 
 * @param arrivalLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTimePeriod 
 * @param properties 
 */
data class RequestTimeFilterFastArrivalOneToManySearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("departure_location_id") val departureLocationId: String,

        @get:NotNull @get:Size(min=1,max=100000) 
        @JsonProperty("arrival_location_ids") val arrivalLocationIds: List<String>,

        @get:NotNull 
        @JsonProperty("transportation") val transportation: RequestTransportationFast,

        @get:NotNull @get:Min(60) @get:Max(14400) 
        @JsonProperty("travel_time") val travelTime: Int,

        @get:NotNull 
        @JsonProperty("arrival_time_period") val arrivalTimePeriod: RequestArrivalTimePeriod,

        @get:NotNull 
        @JsonProperty("properties") val properties: List<RequestTimeFilterFastProperty>
) {

}

