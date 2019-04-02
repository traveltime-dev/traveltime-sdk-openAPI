package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.server.api.model.ResponseGeocodingGeometry;
import org.openapitools.server.api.model.ResponseGeocodingProperties;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseGeocodingGeoJsonFeature   {
  
  private String type = ;
  private ResponseGeocodingGeometry geometry = null;
  private ResponseGeocodingProperties properties = null;

  public ResponseGeocodingGeoJsonFeature () {

  }

  public ResponseGeocodingGeoJsonFeature (String type, ResponseGeocodingGeometry geometry, ResponseGeocodingProperties properties) {
    this.type = type;
    this.geometry = geometry;
    this.properties = properties;
  }

    
  @JsonProperty("type")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

    
  @JsonProperty("geometry")
  public ResponseGeocodingGeometry getGeometry() {
    return geometry;
  }
  public void setGeometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
  }

    
  @JsonProperty("properties")
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }
  public void setProperties(ResponseGeocodingProperties properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseGeocodingGeoJsonFeature responseGeocodingGeoJsonFeature = (ResponseGeocodingGeoJsonFeature) o;
    return Objects.equals(type, responseGeocodingGeoJsonFeature.type) &&
        Objects.equals(geometry, responseGeocodingGeoJsonFeature.geometry) &&
        Objects.equals(properties, responseGeocodingGeoJsonFeature.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, geometry, properties);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
