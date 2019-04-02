package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeMapArrivalSearch;
import org.openapitools.model.RequestTimeMapDepartureSearch;
import org.openapitools.model.RequestUnionOnIntersection;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestTimeMap  {
  
  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeMapDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeMapArrivalSearch> arrivalSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestUnionOnIntersection> unions = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestUnionOnIntersection> intersections = null;
 /**
   * Get departureSearches
   * @return departureSearches
  **/
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeMapDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeMap departureSearches(List<RequestTimeMapDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeMap addDepartureSearchesItem(RequestTimeMapDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeMapArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeMap arrivalSearches(List<RequestTimeMapArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeMap addArrivalSearchesItem(RequestTimeMapArrivalSearch arrivalSearchesItem) {
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

 /**
   * Get unions
   * @return unions
  **/
  @JsonProperty("unions")
 @Size(max=10)  public List<RequestUnionOnIntersection> getUnions() {
    return unions;
  }

  public void setUnions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
  }

  public RequestTimeMap unions(List<RequestUnionOnIntersection> unions) {
    this.unions = unions;
    return this;
  }

  public RequestTimeMap addUnionsItem(RequestUnionOnIntersection unionsItem) {
    this.unions.add(unionsItem);
    return this;
  }

 /**
   * Get intersections
   * @return intersections
  **/
  @JsonProperty("intersections")
 @Size(max=10)  public List<RequestUnionOnIntersection> getIntersections() {
    return intersections;
  }

  public void setIntersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
  }

  public RequestTimeMap intersections(List<RequestUnionOnIntersection> intersections) {
    this.intersections = intersections;
    return this;
  }

  public RequestTimeMap addIntersectionsItem(RequestUnionOnIntersection intersectionsItem) {
    this.intersections.add(intersectionsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

