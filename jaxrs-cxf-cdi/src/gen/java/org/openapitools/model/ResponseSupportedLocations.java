package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseSupportedLocation;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class ResponseSupportedLocations   {
  
  private List<ResponseSupportedLocation> locations = new ArrayList<ResponseSupportedLocation>();

  private List<String> unsupportedLocations = new ArrayList<String>();


  /**
   **/
  public ResponseSupportedLocations locations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("locations")
  @NotNull
  public List<ResponseSupportedLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
  }

  public ResponseSupportedLocations addLocationsItem(ResponseSupportedLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }


  /**
   **/
  public ResponseSupportedLocations unsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("unsupported_locations")
  @NotNull
  public List<String> getUnsupportedLocations() {
    return unsupportedLocations;
  }
  public void setUnsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
  }

  public ResponseSupportedLocations addUnsupportedLocationsItem(String unsupportedLocationsItem) {
    this.unsupportedLocations.add(unsupportedLocationsItem);
    return this;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseSupportedLocations responseSupportedLocations = (ResponseSupportedLocations) o;
    return Objects.equals(locations, responseSupportedLocations.locations) &&
        Objects.equals(unsupportedLocations, responseSupportedLocations.unsupportedLocations);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, unsupportedLocations);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseSupportedLocations {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    unsupportedLocations: ").append(toIndentedString(unsupportedLocations)).append("\n");
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

