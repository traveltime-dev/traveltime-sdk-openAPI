package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseSupportedLocation;
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
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseSupportedLocations  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseSupportedLocation> locations = new ArrayList<ResponseSupportedLocation>();

  @ApiModelProperty(required = true, value = "")
  private List<String> unsupportedLocations = new ArrayList<String>();
 /**
   * Get locations
   * @return locations
  **/
  @JsonProperty("locations")
  @NotNull
  public List<ResponseSupportedLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
  }

  public ResponseSupportedLocations locations(List<ResponseSupportedLocation> locations) {
    this.locations = locations;
    return this;
  }

  public ResponseSupportedLocations addLocationsItem(ResponseSupportedLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
   * Get unsupportedLocations
   * @return unsupportedLocations
  **/
  @JsonProperty("unsupported_locations")
  @NotNull
  public List<String> getUnsupportedLocations() {
    return unsupportedLocations;
  }

  public void setUnsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
  }

  public ResponseSupportedLocations unsupportedLocations(List<String> unsupportedLocations) {
    this.unsupportedLocations = unsupportedLocations;
    return this;
  }

  public ResponseSupportedLocations addUnsupportedLocationsItem(String unsupportedLocationsItem) {
    this.unsupportedLocations.add(unsupportedLocationsItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

