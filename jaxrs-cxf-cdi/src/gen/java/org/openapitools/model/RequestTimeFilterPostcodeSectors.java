package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsDepartureSearch;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTimeFilterPostcodeSectors   {
  
  private List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = null;

  private List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = null;


  /**
   **/
  public RequestTimeFilterPostcodeSectors departureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodeSectors addDepartureSearchesItem(RequestTimeFilterPostcodeSectorsDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestTimeFilterPostcodeSectorsDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }


  /**
   **/
  public RequestTimeFilterPostcodeSectors arrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeFilterPostcodeSectors addArrivalSearchesItem(RequestTimeFilterPostcodeSectorsArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<RequestTimeFilterPostcodeSectorsArrivalSearch>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }



  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

