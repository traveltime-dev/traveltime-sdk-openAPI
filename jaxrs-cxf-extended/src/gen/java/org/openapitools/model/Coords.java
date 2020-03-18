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


public class Coords  {
  
  @ApiModelProperty(required = true, value = "")
  private Double lat;

  @ApiModelProperty(required = true, value = "")
  private Double lng;
 /**
  * Get lat
  * @return lat
  */
  @JsonProperty("lat")
  @NotNull
  public Double getLat() {
    return lat;
  }

  /**
   * Sets the <code>lat</code> property.
   */
  public void setLat(Double lat) {
    this.lat = lat;
  }

  /**
   * Sets the <code>lat</code> property.
   */
  public Coords lat(Double lat) {
    this.lat = lat;
    return this;
  }

 /**
  * Get lng
  * @return lng
  */
  @JsonProperty("lng")
  @NotNull
  public Double getLng() {
    return lng;
  }

  /**
   * Sets the <code>lng</code> property.
   */
  public void setLng(Double lng) {
    this.lng = lng;
  }

  /**
   * Sets the <code>lng</code> property.
   */
  public Coords lng(Double lng) {
    this.lng = lng;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Coords {\n");
    
    sb.append("    lat: ").append(toIndentedString(lat)).append("\n");
    sb.append("    lng: ").append(toIndentedString(lng)).append("\n");
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

