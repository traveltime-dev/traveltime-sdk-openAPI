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
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseBox  {
  
  @ApiModelProperty(required = true, value = "")
  private Double minLat;

  @ApiModelProperty(required = true, value = "")
  private Double maxLat;

  @ApiModelProperty(required = true, value = "")
  private Double minLng;

  @ApiModelProperty(required = true, value = "")
  private Double maxLng;
 /**
   * Get minLat
   * @return minLat
  **/
  @JsonProperty("min_lat")
  @NotNull
  public Double getMinLat() {
    return minLat;
  }

  public void setMinLat(Double minLat) {
    this.minLat = minLat;
  }

  public ResponseBox minLat(Double minLat) {
    this.minLat = minLat;
    return this;
  }

 /**
   * Get maxLat
   * @return maxLat
  **/
  @JsonProperty("max_lat")
  @NotNull
  public Double getMaxLat() {
    return maxLat;
  }

  public void setMaxLat(Double maxLat) {
    this.maxLat = maxLat;
  }

  public ResponseBox maxLat(Double maxLat) {
    this.maxLat = maxLat;
    return this;
  }

 /**
   * Get minLng
   * @return minLng
  **/
  @JsonProperty("min_lng")
  @NotNull
  public Double getMinLng() {
    return minLng;
  }

  public void setMinLng(Double minLng) {
    this.minLng = minLng;
  }

  public ResponseBox minLng(Double minLng) {
    this.minLng = minLng;
    return this;
  }

 /**
   * Get maxLng
   * @return maxLng
  **/
  @JsonProperty("max_lng")
  @NotNull
  public Double getMaxLng() {
    return maxLng;
  }

  public void setMaxLng(Double maxLng) {
    this.maxLng = maxLng;
  }

  public ResponseBox maxLng(Double maxLng) {
    this.maxLng = maxLng;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseBox {\n");
    
    sb.append("    minLat: ").append(toIndentedString(minLat)).append("\n");
    sb.append("    maxLat: ").append(toIndentedString(maxLat)).append("\n");
    sb.append("    minLng: ").append(toIndentedString(minLng)).append("\n");
    sb.append("    maxLng: ").append(toIndentedString(maxLng)).append("\n");
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

