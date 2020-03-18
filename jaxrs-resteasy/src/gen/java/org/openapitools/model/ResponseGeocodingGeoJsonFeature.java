package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseGeocodingGeometry;
import org.openapitools.model.ResponseGeocodingProperties;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2020-03-18T07:54:20.248Z[Etc/UTC]")
public class ResponseGeocodingGeoJsonFeature   {
  
  private String type;
  private ResponseGeocodingGeometry geometry;
  private ResponseGeocodingProperties properties;

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("type")
  @NotNull
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("geometry")
  @NotNull
  public ResponseGeocodingGeometry getGeometry() {
    return geometry;
  }
  public void setGeometry(ResponseGeocodingGeometry geometry) {
    this.geometry = geometry;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public ResponseGeocodingProperties getProperties() {
    return properties;
  }
  public void setProperties(ResponseGeocodingProperties properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

