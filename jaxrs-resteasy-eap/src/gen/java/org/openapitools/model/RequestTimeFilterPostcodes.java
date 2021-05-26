package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodesArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodesDepartureSearch;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class RequestTimeFilterPostcodes   {
  

  private List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterPostcodesDepartureSearch>();

  private List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterPostcodesArrivalSearch>();

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodesArrivalSearch> getArrivalSearches() {
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

