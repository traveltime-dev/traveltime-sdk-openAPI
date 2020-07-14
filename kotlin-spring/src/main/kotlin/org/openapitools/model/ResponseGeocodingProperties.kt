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
data class ResponseGeocodingProperties(

    @get:NotNull 
    @field:JsonProperty("name") val name: kotlin.String,

    @get:NotNull 
    @field:JsonProperty("label") val label: kotlin.String,

    @field:JsonProperty("score") val score: kotlin.Double? = null,

    @field:JsonProperty("house_number") val houseNumber: kotlin.String? = null,

    @field:JsonProperty("street") val street: kotlin.String? = null,

    @field:JsonProperty("region") val region: kotlin.String? = null,

    @field:JsonProperty("region_code") val regionCode: kotlin.String? = null,

    @field:JsonProperty("neighbourhood") val neighbourhood: kotlin.String? = null,

    @field:JsonProperty("county") val county: kotlin.String? = null,

    @field:JsonProperty("macroregion") val macroregion: kotlin.String? = null,

    @field:JsonProperty("city") val city: kotlin.String? = null,

    @field:JsonProperty("country") val country: kotlin.String? = null,

    @field:JsonProperty("country_code") val countryCode: kotlin.String? = null,

    @field:JsonProperty("continent") val continent: kotlin.String? = null,

    @field:JsonProperty("postcode") val postcode: kotlin.String? = null,

    @field:JsonProperty("features") val features: ResponseMapInfoFeatures? = null
) {

}

