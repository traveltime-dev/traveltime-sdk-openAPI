package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseTravelTimeStatistics   {
  
  private @Valid Integer min;
  private @Valid Integer max;
  private @Valid Integer mean;
  private @Valid Integer median;

  /**
   **/
  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("min")
  @NotNull
  public Integer getMin() {
    return min;
  }

  public void setMin(Integer min) {
    this.min = min;
  }

/**
   **/
  public ResponseTravelTimeStatistics max(Integer max) {
    this.max = max;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("max")
  @NotNull
  public Integer getMax() {
    return max;
  }

  public void setMax(Integer max) {
    this.max = max;
  }

/**
   **/
  public ResponseTravelTimeStatistics mean(Integer mean) {
    this.mean = mean;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("mean")
  @NotNull
  public Integer getMean() {
    return mean;
  }

  public void setMean(Integer mean) {
    this.mean = mean;
  }

/**
   **/
  public ResponseTravelTimeStatistics median(Integer median) {
    this.median = median;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("median")
  @NotNull
  public Integer getMedian() {
    return median;
  }

  public void setMedian(Integer median) {
    this.median = median;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTravelTimeStatistics responseTravelTimeStatistics = (ResponseTravelTimeStatistics) o;
    return Objects.equals(this.min, responseTravelTimeStatistics.min) &&
        Objects.equals(this.max, responseTravelTimeStatistics.max) &&
        Objects.equals(this.mean, responseTravelTimeStatistics.mean) &&
        Objects.equals(this.median, responseTravelTimeStatistics.median);
  }

  @Override
  public int hashCode() {
    return Objects.hash(min, max, mean, median);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTravelTimeStatistics {\n");
    
    sb.append("    min: ").append(toIndentedString(min)).append("\n");
    sb.append("    max: ").append(toIndentedString(max)).append("\n");
    sb.append("    mean: ").append(toIndentedString(mean)).append("\n");
    sb.append("    median: ").append(toIndentedString(median)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

