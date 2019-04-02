package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import org.openapitools.server.api.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestTimeFilterPostcodeDistricts   {
  
  private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = new ArrayList<>();
  private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = new ArrayList<>();

  public RequestTimeFilterPostcodeDistricts () {

  }

  public RequestTimeFilterPostcodeDistricts (List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches, List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.departureSearches = departureSearches;
    this.arrivalSearches = arrivalSearches;
  }

    
  @JsonProperty("departure_searches")
  public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

    
  @JsonProperty("arrival_searches")
  public List<RequestTimeFilterPostcodeDistrictsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
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
    RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts = (RequestTimeFilterPostcodeDistricts) o;
    return Objects.equals(departureSearches, requestTimeFilterPostcodeDistricts.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeFilterPostcodeDistricts.arrivalSearches);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeDistricts {\n");
    
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
