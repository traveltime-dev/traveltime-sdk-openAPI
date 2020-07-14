package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestLocation;
import org.openapitools.vertxweb.server.model.RequestTimeFilterArrivalSearch;
import org.openapitools.vertxweb.server.model.RequestTimeFilterDepartureSearch;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilter   {
  
  private List<RequestLocation> locations = new ArrayList<>();
  private List<RequestTimeFilterDepartureSearch> departureSearches = new ArrayList<>();
  private List<RequestTimeFilterArrivalSearch> arrivalSearches = new ArrayList<>();

  public RequestTimeFilter () {

  }

  public RequestTimeFilter (List<RequestLocation> locations, List<RequestTimeFilterDepartureSearch> departureSearches, List<RequestTimeFilterArrivalSearch> arrivalSearches) {
    this.locations = locations;
    this.departureSearches = departureSearches;
    this.arrivalSearches = arrivalSearches;
  }

    
  @JsonProperty("locations")
  public List<RequestLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

    
  @JsonProperty("departure_searches")
  public List<RequestTimeFilterDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

    
  @JsonProperty("arrival_searches")
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
    return Objects.equals(locations, requestTimeFilter.locations) &&
        Objects.equals(departureSearches, requestTimeFilter.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeFilter.arrivalSearches);
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
