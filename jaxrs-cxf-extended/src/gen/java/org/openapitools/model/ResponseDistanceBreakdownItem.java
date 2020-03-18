package org.openapitools.model;

import org.openapitools.model.ResponseTransportationMode;
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


public class ResponseDistanceBreakdownItem  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseTransportationMode mode;

  @ApiModelProperty(required = true, value = "")
  private Integer distance;
 /**
  * Get mode
  * @return mode
  */
  @JsonProperty("mode")
  @NotNull
  public ResponseTransportationMode getMode() {
    return mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   * Sets the <code>mode</code> property.
   */
  public ResponseDistanceBreakdownItem mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

 /**
  * Get distance
  * @return distance
  */
  @JsonProperty("distance")
  @NotNull
  public Integer getDistance() {
    return distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public ResponseDistanceBreakdownItem distance(Integer distance) {
    this.distance = distance;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseDistanceBreakdownItem {\n");
    
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
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

