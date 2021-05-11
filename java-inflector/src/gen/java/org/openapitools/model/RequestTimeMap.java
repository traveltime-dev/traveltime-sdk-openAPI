package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeMapArrivalSearch;
import org.openapitools.model.RequestTimeMapDepartureSearch;
import org.openapitools.model.RequestUnionOnIntersection;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-11T08:37:52.749Z[Etc/UTC]")
public class RequestTimeMap   {
  @JsonProperty("departure_searches")
  private List<RequestTimeMapDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  private List<RequestTimeMapArrivalSearch> arrivalSearches = null;

  @JsonProperty("unions")
  private List<RequestUnionOnIntersection> unions = null;

  @JsonProperty("intersections")
  private List<RequestUnionOnIntersection> intersections = null;

  /**
   **/
  public RequestTimeMap departureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
  public List<RequestTimeMapDepartureSearch> getDepartureSearches() {
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
  public List<RequestTimeMapArrivalSearch> getArrivalSearches() {
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
  public List<RequestUnionOnIntersection> getUnions() {
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
  public List<RequestUnionOnIntersection> getIntersections() {
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

