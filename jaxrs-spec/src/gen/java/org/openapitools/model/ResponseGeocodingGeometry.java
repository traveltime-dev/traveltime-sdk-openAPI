package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseGeocodingGeometry   {
  
  private @Valid String type;
  private @Valid List<Double> coordinates = new ArrayList<Double>();

  /**
   **/
  public ResponseGeocodingGeometry type(String type) {
    this.type = type;
    return this;
  }

  

  
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
  public ResponseGeocodingGeometry coordinates(List<Double> coordinates) {
    this.coordinates = coordinates;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("coordinates")
  @NotNull
  public List<Double> getCoordinates() {
    return coordinates;
  }

  public void setCoordinates(List<Double> coordinates) {
    this.coordinates = coordinates;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseGeocodingGeometry responseGeocodingGeometry = (ResponseGeocodingGeometry) o;
    return Objects.equals(this.type, responseGeocodingGeometry.type) &&
        Objects.equals(this.coordinates, responseGeocodingGeometry.coordinates);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, coordinates);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

