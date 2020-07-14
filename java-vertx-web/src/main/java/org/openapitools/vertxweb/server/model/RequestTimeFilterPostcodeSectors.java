package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodeSectorsDepartureSearch;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterPostcodeSectors   {
  
  private List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = new ArrayList<>();
  private List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = new ArrayList<>();

  public RequestTimeFilterPostcodeSectors () {

  }

  public RequestTimeFilterPostcodeSectors (List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches, List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.departureSearches = departureSearches;
    this.arrivalSearches = arrivalSearches;
  }

    
  @JsonProperty("departure_searches")
  public List<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

    
  @JsonProperty("arrival_searches")
  public List<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
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
    RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = (RequestTimeFilterPostcodeSectors) o;
    return Objects.equals(departureSearches, requestTimeFilterPostcodeSectors.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeFilterPostcodeSectors.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeSectors {\n");
    
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
