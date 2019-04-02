package org.openapitools.model;

import org.openapitools.model.ResponseGeocodingGeometry;
import org.openapitools.model.ResponseGeocodingProperties;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseGeocodingGeoJsonFeature  {
  
  @ApiModelProperty(required = true, value = "")
  private String type;

  @ApiModelProperty(required = true, value = "")
  private ResponseGeocodingGeometry geometry = null;

  @ApiModelProperty(required = true, value = "")
  private ResponseGeocodingProperties properties = null;
 /**
   * Get type
   * @return type
  **/
  @JsonProperty("type")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public ResponseGeocodingGeoJsonFeature type(String type) {
    this.type = type;
    return this;
  }

 /**
   * Get geometry
   * @return geometry
  **/
  @JsonProperty("geometry")
  public ResponseGeocodingGeometry getGeometry() {
    return geometry;
  }

  public void setGeometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
  }

  public ResponseGeocodingGeoJsonFeature geometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
    return this;
  }

 /**
   * Get properties
   * @return properties
  **/
  @JsonProperty("properties")
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseGeocodingProperties properties) {
    this.properties = properties;
  }

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

