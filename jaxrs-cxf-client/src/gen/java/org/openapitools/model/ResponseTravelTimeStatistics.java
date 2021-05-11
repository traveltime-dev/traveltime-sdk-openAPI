package org.openapitools.model;


import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
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
  **/
  @JsonProperty("min")
  public Integer getMin() {
    return min;
  }

  public void setMin(Integer min) {
    this.min = min;
  }

  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

 /**
   * Get max
   * @return max
  **/
  @JsonProperty("max")
  public Integer getMax() {
    return max;
  }

  public void setMax(Integer max) {
    this.max = max;
  }

  public ResponseTravelTimeStatistics max(Integer max) {
    this.max = max;
    return this;
  }

 /**
   * Get mean
   * @return mean
  **/
  @JsonProperty("mean")
  public Integer getMean() {
    return mean;
  }

  public void setMean(Integer mean) {
    this.mean = mean;
  }

  public ResponseTravelTimeStatistics mean(Integer mean) {
    this.mean = mean;
    return this;
  }

 /**
   * Get median
   * @return median
  **/
  @JsonProperty("median")
  public Integer getMedian() {
    return median;
  }

  public void setMedian(Integer median) {
    this.median = median;
  }

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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

