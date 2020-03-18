package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2020-03-18T08:51:11.573Z[Etc/UTC]")
public class Coords   {
  
  private @Valid Double lat;
  private @Valid Double lng;

  /**
   **/
  public Coords lat(Double lat) {
    this.lat = lat;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("lat")
  @NotNull
  public Double getLat() {
    return lat;
  }
  public void setLat(Double lat) {
    this.lat = lat;
  }

  /**
   **/
  public Coords lng(Double lng) {
    this.lng = lng;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("lng")
  @NotNull
  public Double getLng() {
    return lng;
  }
  public void setLng(Double lng) {
    this.lng = lng;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Coords coords = (Coords) o;
    return Objects.equals(this.lat, coords.lat) &&
        Objects.equals(this.lng, coords.lng);
  }

  @Override
  public int hashCode() {
    return Objects.hash(lat, lng);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

