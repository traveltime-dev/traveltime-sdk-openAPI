package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterArrivalSearch;
import org.openapitools.model.RequestTimeFilterDepartureSearch;
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

public class RequestTimeFilter  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterArrivalSearch> arrivalSearches = null;
 /**
   * Get locations
   * @return locations
  **/
  @JsonProperty("locations")
  @NotNull
 @Size(min=1)  public List<RequestLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  public RequestTimeFilter locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestTimeFilter addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
   * Get departureSearches
   * @return departureSearches
  **/
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilter departureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilter addDepartureSearchesItem(RequestTimeFilterDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeFilter arrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilter addArrivalSearchesItem(RequestTimeFilterArrivalSearch arrivalSearchesItem) {
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilter {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
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

