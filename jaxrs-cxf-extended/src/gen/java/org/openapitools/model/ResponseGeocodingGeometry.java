package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
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


public class ResponseGeocodingGeometry  {
  
  @ApiModelProperty(required = true, value = "")
  private String type;

  @ApiModelProperty(required = true, value = "")
  private List<Double> coordinates = new ArrayList<Double>();
 /**
  * Get type
  * @return type
  */
  @JsonProperty("type")
  @NotNull
  public String getType() {
    return type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public void setType(String type) {
    this.type = type;
  }

  /**
   * Sets the <code>type</code> property.
   */
  public ResponseGeocodingGeometry type(String type) {
    this.type = type;
    return this;
  }

 /**
  * Get coordinates
  * @return coordinates
  */
  @JsonProperty("coordinates")
  @NotNull
  public List<Double> getCoordinates() {
    return coordinates;
  }

  /**
   * Sets the <code>coordinates</code> property.
   */
  public void setCoordinates(List<Double> coordinates) {
    this.coordinates = coordinates;
  }

  /**
   * Sets the <code>coordinates</code> property.
   */
  public ResponseGeocodingGeometry coordinates(List<Double> coordinates) {
    this.coordinates = coordinates;
    return this;
  }

  /**
   * Adds a new item to the <code>coordinates</code> list.
   */
  public ResponseGeocodingGeometry addCoordinatesItem(Double coordinatesItem) {
    this.coordinates.add(coordinatesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocodingGeometry {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    coordinates: ").append(toIndentedString(coordinates)).append("\n");
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

