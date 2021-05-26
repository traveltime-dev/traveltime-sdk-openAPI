package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeMapArrivalSearch;
import org.openapitools.model.RequestTimeMapDepartureSearch;
import org.openapitools.model.RequestUnionOnIntersection;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class RequestTimeMap   {
  

  private List<RequestTimeMapDepartureSearch> departureSearches = new ArrayList<RequestTimeMapDepartureSearch>();

  private List<RequestTimeMapArrivalSearch> arrivalSearches = new ArrayList<RequestTimeMapArrivalSearch>();

  private List<RequestUnionOnIntersection> unions = new ArrayList<RequestUnionOnIntersection>();

  private List<RequestUnionOnIntersection> intersections = new ArrayList<RequestUnionOnIntersection>();

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeMapDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeMapArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("unions")
 @Size(max=10)  public List<RequestUnionOnIntersection> getUnions() {
    return unions;
  }
  public void setUnions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("intersections")
 @Size(max=10)  public List<RequestUnionOnIntersection> getIntersections() {
    return intersections;
  }
  public void setIntersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeMap requestTimeMap = (RequestTimeMap) o;
    return Objects.equals(departureSearches, requestTimeMap.departureSearches) &&
        Objects.equals(arrivalSearches, requestTimeMap.arrivalSearches) &&
        Objects.equals(unions, requestTimeMap.unions) &&
        Objects.equals(intersections, requestTimeMap.intersections);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureSearches, arrivalSearches, unions, intersections);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMap {\n");
    
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
    sb.append("    unions: ").append(toIndentedString(unions)).append("\n");
    sb.append("    intersections: ").append(toIndentedString(intersections)).append("\n");
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

