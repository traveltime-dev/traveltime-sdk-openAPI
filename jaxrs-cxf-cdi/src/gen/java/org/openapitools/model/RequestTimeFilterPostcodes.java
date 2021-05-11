package org.openapitools.model;

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
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTimeFilterPostcodes   {
  
  private List<RequestTimeFilterPostcodesDepartureSearch> departureSearches = null;

  private List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches = null;


  /**
   **/
  public RequestTimeFilterPostcodes departureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodesDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodesDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodes addDepartureSearchesItem(RequestTimeFilterPostcodesDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestTimeFilterPostcodesDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }


  /**
   **/
  public RequestTimeFilterPostcodes arrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodesArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeFilterPostcodes addArrivalSearchesItem(RequestTimeFilterPostcodesArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<RequestTimeFilterPostcodesArrivalSearch>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
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

