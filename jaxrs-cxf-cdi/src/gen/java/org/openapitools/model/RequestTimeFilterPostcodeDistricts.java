package org.openapitools.model;

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
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTimeFilterPostcodeDistricts   {
  
  private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = null;

  private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = null;


  /**
   **/
  public RequestTimeFilterPostcodeDistricts departureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }
  public void setDepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodeDistricts addDepartureSearchesItem(RequestTimeFilterPostcodeDistrictsDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }


  /**
   **/
  public RequestTimeFilterPostcodeDistricts arrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeDistrictsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }
  public void setArrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeFilterPostcodeDistricts addArrivalSearchesItem(RequestTimeFilterPostcodeDistrictsArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<RequestTimeFilterPostcodeDistrictsArrivalSearch>();
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

