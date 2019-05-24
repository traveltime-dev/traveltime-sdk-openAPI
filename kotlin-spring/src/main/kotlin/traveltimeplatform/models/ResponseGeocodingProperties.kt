package traveltimeplatform.models

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import traveltimeplatform.models.ResponseMapInfoFeatures
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size

/**
 * 
 * @param name 
 * @param label 
 * @param score 
 * @param houseNumber 
 * @param street 
 * @param region 
 * @param regionCode 
 * @param neighbourhood 
 * @param county 
 * @param macroregion 
 * @param city 
 * @param country 
 * @param countryCode 
 * @param continent 
 * @param postcode 
 * @param features 
 */
data class ResponseGeocodingProperties (

        @get:NotNull 
        @JsonProperty("name") val name: String,

        @get:NotNull 
        @JsonProperty("label") val label: String,

        @JsonProperty("score") val score: Double? = null,

        @JsonProperty("house_number") val houseNumber: String? = null,

        @JsonProperty("street") val street: String? = null,

        @JsonProperty("region") val region: String? = null,

        @JsonProperty("region_code") val regionCode: String? = null,

        @JsonProperty("neighbourhood") val neighbourhood: String? = null,

        @JsonProperty("county") val county: String? = null,

        @JsonProperty("macroregion") val macroregion: String? = null,

        @JsonProperty("city") val city: String? = null,

        @JsonProperty("country") val country: String? = null,

        @JsonProperty("country_code") val countryCode: String? = null,

        @JsonProperty("continent") val continent: String? = null,

        @JsonProperty("postcode") val postcode: String? = null,

        @JsonProperty("features") val features: ResponseMapInfoFeatures? = null
) {

}

