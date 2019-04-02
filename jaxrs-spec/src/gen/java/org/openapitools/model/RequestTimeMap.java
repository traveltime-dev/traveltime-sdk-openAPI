package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeMapArrivalSearch;
import org.openapitools.model.RequestTimeMapDepartureSearch;
import org.openapitools.model.RequestUnionOnIntersection;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



public class RequestTimeMap   {
  
  private @Valid List<RequestTimeMapDepartureSearch> departureSearches = new ArrayList<RequestTimeMapDepartureSearch>();
  private @Valid List<RequestTimeMapArrivalSearch> arrivalSearches = new ArrayList<RequestTimeMapArrivalSearch>();
  private @Valid List<RequestUnionOnIntersection> unions = new ArrayList<RequestUnionOnIntersection>();
  private @Valid List<RequestUnionOnIntersection> intersections = new ArrayList<RequestUnionOnIntersection>();

  /**
   **/
  public RequestTimeMap departureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  
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
  public RequestTimeMap arrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  
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
  public RequestTimeMap unions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
    return this;
  }

  
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
  public RequestTimeMap intersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("intersections")
 @Size(max=10)  public List<RequestUnionOnIntersection> getIntersections() {
    return intersections;
  }
  public void setIntersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

