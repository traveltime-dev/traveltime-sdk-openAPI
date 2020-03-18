package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestLocation;
import org.openapitools.server.api.model.RequestTimeFilterFastArrivalSearches;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterFast   {
  
  private List<RequestLocation> locations = new ArrayList<>();
  private RequestTimeFilterFastArrivalSearches arrivalSearches;

  public RequestTimeFilterFast () {

  }

  public RequestTimeFilterFast (List<RequestLocation> locations, RequestTimeFilterFastArrivalSearches arrivalSearches) {
    this.locations = locations;
    this.arrivalSearches = arrivalSearches;
  }

    
  @JsonProperty("locations")
  public List<RequestLocation> getLocations() {
    return locations;
  }
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

    
  @JsonProperty("arrival_searches")
  public RequestTimeFilterFastArrivalSearches getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
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
    RequestTimeFilterFast requestTimeFilterFast = (RequestTimeFilterFast) o;
    return Objects.equals(locations, requestTimeFilterFast.locations) &&
        Objects.equals(arrivalSearches, requestTimeFilterFast.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(locations, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFast {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
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
