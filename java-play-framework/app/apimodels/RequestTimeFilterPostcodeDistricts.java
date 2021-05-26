package apimodels;

import apimodels.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import apimodels.RequestTimeFilterPostcodeDistrictsDepartureSearch;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterPostcodeDistricts
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterPostcodeDistricts   {
  @JsonProperty("departure_searches")
  @Size(max=10)
@Valid

  private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  @Size(max=10)
@Valid

  private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = null;

  public RequestTimeFilterPostcodeDistricts departureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilterPostcodeDistricts addDepartureSearchesItem(RequestTimeFilterPostcodeDistrictsDepartureSearch departureSearchesItem) {
    if (departureSearches == null) {
      departureSearches = new ArrayList<>();
    }
    departureSearches.add(departureSearchesItem);
    return this;
  }

   /**
   * Get departureSearches
   * @return departureSearches
  **/
  public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodeDistricts arrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilterPostcodeDistricts addArrivalSearchesItem(RequestTimeFilterPostcodeDistrictsArrivalSearch arrivalSearchesItem) {
    if (arrivalSearches == null) {
      arrivalSearches = new ArrayList<>();
    }
    arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

