/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ResponseTravelTimeStatistics
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-02T12:37:58.515Z[Etc/UTC]")
public class ResponseTravelTimeStatistics   {
  @JsonProperty("min")
  private Integer min;

  @JsonProperty("max")
  private Integer max;

  @JsonProperty("mean")
  private Integer mean;

  @JsonProperty("median")
  private Integer median;

  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

  /**
   * Get min
   * @return min
   **/
  @JsonProperty("min")
  @ApiModelProperty(required = true, value = "")
    @NotNull

  public Integer getMin() {
    return min;
  }

  public void setMin(Integer min) {
    this.min = min;
  }

  public ResponseTravelTimeStatistics max(Integer max) {
    this.max = max;
    return this;
  }

  /**
   * Get max
   * @return max
   **/
  @JsonProperty("max")
  @ApiModelProperty(required = true, value = "")
    @NotNull

  public Integer getMax() {
    return max;
  }

  public void setMax(Integer max) {
    this.max = max;
  }

  public ResponseTravelTimeStatistics mean(Integer mean) {
    this.mean = mean;
    return this;
  }

  /**
   * Get mean
   * @return mean
   **/
  @JsonProperty("mean")
  @ApiModelProperty(required = true, value = "")
    @NotNull

  public Integer getMean() {
    return mean;
  }

  public void setMean(Integer mean) {
    this.mean = mean;
  }

  public ResponseTravelTimeStatistics median(Integer median) {
    this.median = median;
    return this;
  }

  /**
   * Get median
   * @return median
   **/
  @JsonProperty("median")
  @ApiModelProperty(required = true, value = "")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
