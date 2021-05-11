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
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestTimeFilter
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-11T08:39:43.646Z[Etc/UTC]")
public class RequestTimeFilter   {
  @JsonProperty("locations")
  @Valid
  private List<RequestLocation> locations = new ArrayList<>();

  @JsonProperty("departure_searches")
  @Valid
  private List<RequestTimeFilterDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  @Valid
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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid
@Size(min=1) 
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
      this.departureSearches = new ArrayList<>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

  /**
   * Get departureSearches
   * @return departureSearches
  */
  @ApiModelProperty(value = "")

  @Valid
@Size(max=10) 
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
      this.arrivalSearches = new ArrayList<>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

  /**
   * Get arrivalSearches
   * @return arrivalSearches
  */
  @ApiModelProperty(value = "")

  @Valid
@Size(max=10) 
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

