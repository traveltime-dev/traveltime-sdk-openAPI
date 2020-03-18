package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ResponseMapInfoFeatures
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
        @JsonProperty("name") val name: kotlin.String,

        @get:NotNull 
        @JsonProperty("label") val label: kotlin.String,

        @JsonProperty("score") val score: kotlin.Double? = null,

        @JsonProperty("house_number") val houseNumber: kotlin.String? = null,

        @JsonProperty("street") val street: kotlin.String? = null,

        @JsonProperty("region") val region: kotlin.String? = null,

        @JsonProperty("region_code") val regionCode: kotlin.String? = null,

        @JsonProperty("neighbourhood") val neighbourhood: kotlin.String? = null,

        @JsonProperty("county") val county: kotlin.String? = null,

        @JsonProperty("macroregion") val macroregion: kotlin.String? = null,

        @JsonProperty("city") val city: kotlin.String? = null,

        @JsonProperty("country") val country: kotlin.String? = null,

        @JsonProperty("country_code") val countryCode: kotlin.String? = null,

        @JsonProperty("continent") val continent: kotlin.String? = null,

        @JsonProperty("postcode") val postcode: kotlin.String? = null,

        @JsonProperty("features") val features: ResponseMapInfoFeatures? = null
) {

}

