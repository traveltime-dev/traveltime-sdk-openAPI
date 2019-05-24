package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseTravelTimeStatistics  {
  
  @ApiModelProperty(required = true, value = "")
  private Integer min;

  @ApiModelProperty(required = true, value = "")
  private Integer max;

  @ApiModelProperty(required = true, value = "")
  private Integer mean;

  @ApiModelProperty(required = true, value = "")
  private Integer median;
 /**
  * Get min
  * @return min
  */
  @JsonProperty("min")
  @NotNull
  public Integer getMin() {
    return min;
  }

  /**
   * Sets the <code>min</code> property.
   */
  public void setMin(Integer min) {
    this.min = min;
  }

  /**
   * Sets the <code>min</code> property.
   */
  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

 /**
  * Get max
  * @return max
  */
  @JsonProperty("max")
  @NotNull
  public Integer getMax() {
    return max;
  }

  /**
   * Sets the <code>max</code> property.
   */
  public void setMax(Integer max) {
    this.max = max;
  }

  /**
   * Sets the <code>max</code> property.
   */
  public ResponseTravelTimeStatistics max(Integer max) {
    this.max = max;
    return this;
  }

 /**
  * Get mean
  * @return mean
  */
  @JsonProperty("mean")
  @NotNull
  public Integer getMean() {
    return mean;
  }

  /**
   * Sets the <code>mean</code> property.
   */
  public void setMean(Integer mean) {
    this.mean = mean;
  }

  /**
   * Sets the <code>mean</code> property.
   */
  public ResponseTravelTimeStatistics mean(Integer mean) {
    this.mean = mean;
    return this;
  }

 /**
  * Get median
  * @return median
  */
  @JsonProperty("median")
  @NotNull
  public Integer getMedian() {
    return median;
  }

  /**
   * Sets the <code>median</code> property.
   */
  public void setMedian(Integer median) {
    this.median = median;
  }

  /**
   * Sets the <code>median</code> property.
   */
  public ResponseTravelTimeStatistics median(Integer median) {
    this.median = median;
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

