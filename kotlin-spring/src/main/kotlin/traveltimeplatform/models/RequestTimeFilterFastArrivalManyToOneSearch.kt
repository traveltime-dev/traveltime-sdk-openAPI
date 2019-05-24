package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.RequestArrivalTimePeriod
import traveltimeplatform.models.RequestTimeFilterFastProperty
import traveltimeplatform.models.RequestTransportationFast
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param id 
 * @param arrivalLocationId 
 * @param departureLocationIds 
 * @param transportation 
 * @param travelTime 
 * @param arrivalTimePeriod 
 * @param properties 
 */
data class RequestTimeFilterFastArrivalManyToOneSearch (

        @get:NotNull 
        @JsonProperty("id") val id: String,

        @get:NotNull 
        @JsonProperty("arrival_location_id") val arrivalLocationId: String,

        @get:NotNull @get:Size(min=1,max=100000) 
        @JsonProperty("departure_location_ids") val departureLocationIds: List<String>,

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

