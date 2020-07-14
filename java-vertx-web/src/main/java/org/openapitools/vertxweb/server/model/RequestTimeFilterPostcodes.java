package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodesArrivalSearch;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodesDepartureSearch;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterPostcodes   {
  
  private List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = new ArrayList<>();
  private List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = new ArrayList<>();

  public RequestTimeFilterPostcodes () {

  }

  public RequestTimeFilterPostcodes (List<RequestTimeFilterPostcodesDepartureSearch> departureSearches, List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
    this.departureSearches = departureSearches;
    this.arrivalSearches = arrivalSearches;
  }

    
  @JsonProperty("departure_searches")
  public List<RequestTimeFilterPostcodesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

    
  @JsonProperty("arrival_searches")
  public List<RequestTimeFilterPostcodesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
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
    RequestTimeFilterPostcodes requestTimeFilterPostcodes = (RequestTimeFilterPostcodes) o;
    return Objects.equals(departureSearches, requestTimeFilterPostcodes.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeFilterPostcodes.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodes {\n");
    
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
