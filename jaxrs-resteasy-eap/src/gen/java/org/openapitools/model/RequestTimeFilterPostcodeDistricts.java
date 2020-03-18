package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-03-18T08:51:09.112Z[Etc/UTC]")
public class RequestTimeFilterPostcodeDistricts   {
  

  private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsDepartureSearch>();

  private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsArrivalSearch>();

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
  @Size(max=10)
  public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
  @Size(max=10)
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

