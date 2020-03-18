package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2020-03-18T07:54:20.248Z[Etc/UTC]")
public class ResponseTravelTimeStatistics   {
  
  private Integer min;
  private Integer max;
  private Integer mean;
  private Integer median;

  /**
   **/
  
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
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTravelTimeStatistics responseTravelTimeStatistics = (ResponseTravelTimeStatistics) o;
    return Objects.equals(min, responseTravelTimeStatistics.min) &&
        Objects.equals(max, responseTravelTimeStatistics.max) &&
        Objects.equals(mean, responseTravelTimeStatistics.mean) &&
        Objects.equals(median, responseTravelTimeStatistics.median);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

