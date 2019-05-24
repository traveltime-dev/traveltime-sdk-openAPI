package org.openapitools.model;

import org.openapitools.model.ResponseGeocodingGeometry;
import org.openapitools.model.ResponseGeocodingProperties;
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

public class ResponseGeocodingGeoJsonFeature  {
  
  @ApiModelProperty(required = true, value = "")
  private String type;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseGeocodingGeometry geometry = null;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseGeocodingProperties properties = null;
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
  public ResponseGeocodingGeoJsonFeature type(String type) {
    this.type = type;
    return this;
  }

 /**
  * Get geometry
  * @return geometry
  */
  @JsonProperty("geometry")
  @NotNull
  public ResponseGeocodingGeometry getGeometry() {
    return geometry;
  }

  /**
   * Sets the <code>geometry</code> property.
   */
  public void setGeometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
  }

  /**
   * Sets the <code>geometry</code> property.
   */
  public ResponseGeocodingGeoJsonFeature geometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  @NotNull
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(ResponseGeocodingProperties properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public ResponseGeocodingGeoJsonFeature properties(ResponseGeocodingProperties properties) {
    this.properties = properties;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseGeocodingGeoJsonFeature {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    geometry: ").append(toIndentedString(geometry)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

