package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import com.fasterxml.jackson.annotation.JsonValue
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid

/**
 * 
 * @param scaleType 
 * @param level 
 */
data class RequestLevelOfDetail(

    @field:JsonProperty("scale_type", required = true) val scaleType: RequestLevelOfDetail.ScaleType,

    @field:JsonProperty("level", required = true) val level: RequestLevelOfDetail.Level
) {

    /**
    * 
    * Values: simple
    */
    enum class ScaleType(val value: kotlin.String) {
    
        @JsonProperty("simple") simple("simple");
    
    }

    /**
    * 
    * Values: lowest,low,medium,high,highest
    */
    enum class Level(val value: kotlin.String) {
    
        @JsonProperty("lowest") lowest("lowest"),
    
        @JsonProperty("low") low("low"),
    
        @JsonProperty("medium") medium("medium"),
    
        @JsonProperty("high") high("high"),
    
        @JsonProperty("highest") highest("highest");
    
    }

}

