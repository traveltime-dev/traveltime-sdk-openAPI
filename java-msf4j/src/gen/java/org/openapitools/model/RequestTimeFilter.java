package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterArrivalSearch;
import org.openapitools.model.RequestTimeFilterDepartureSearch;

/**
 * RequestTimeFilter
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-26T18:50:02.407Z[Etc/UTC]")
public class RequestTimeFilter   {
  @JsonProperty("locations")
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @JsonProperty("departure_searches")
  private List<RequestTimeFilterDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  private List<RequestTimeFilterArrivalSearch> arrivalSearches = null;

  public RequestTimeFilter locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  public RequestTimeFilter addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

   /**
   * Get locations
   * @return locations
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestLocation> getLocations() {
    return locations;
  }

  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  public RequestTimeFilter departureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilter addDepartureSearchesItem(RequestTimeFilterDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestTimeFilterDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

   /**
   * Get departureSearches
   * @return departureSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestTimeFilterDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilter arrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilter addArrivalSearchesItem(RequestTimeFilterArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<RequestTimeFilterArrivalSearch>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestTimeFilterArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilter requestTimeFilter = (RequestTimeFilter) o;
    return Objects.equals(this.locations, requestTimeFilter.locations) &&
        Objects.equals(this.departureSearches, requestTimeFilter.departureSearches) &&
        Objects.equals(this.arrivalSearches, requestTimeFilter.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, departureSearches, arrivalSearches);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

