package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestLocation;
import org.openapitools.vertxweb.server.model.RequestRoutesArrivalSearch;
import org.openapitools.vertxweb.server.model.RequestRoutesDepartureSearch;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestRoutes   {
  
  private List<RequestLocation> locations = new ArrayList<>();
  private List<RequestRoutesDepartureSearch> departureSearches = new ArrayList<>();
  private List<RequestRoutesArrivalSearch> arrivalSearches = new ArrayList<>();

  public RequestRoutes () {

  }

  public RequestRoutes (List<RequestLocation> locations, List<RequestRoutesDepartureSearch> departureSearches, List<RequestRoutesArrivalSearch> arrivalSearches) {
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
  public List<RequestRoutesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestRoutesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

    
  @JsonProperty("arrival_searches")
  public List<RequestRoutesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestRoutesArrivalSearch> arrivalSearches) {
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
    RequestRoutes requestRoutes = (RequestRoutes) o;
    return Objects.equals(locations, requestRoutes.locations) &&
        Objects.equals(departureSearches, requestRoutes.departureSearches) &&
        Objects.equals(arrivalSearches, requestRoutes.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutes {\n");
    
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
