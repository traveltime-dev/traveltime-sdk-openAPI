package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodeSectorsDepartureSearch;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * RequestTimeFilterPostcodeSectors
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-07-14T11:27:13.425Z[Etc/UTC]")
public class RequestTimeFilterPostcodeSectors   {
  @JsonProperty("departure_searches")
  
  private List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = null;

  @JsonProperty("arrival_searches")
  
  private List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = null;

  public RequestTimeFilterPostcodeSectors departureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilterPostcodeSectors addDepartureSearchesItem(RequestTimeFilterPostcodeSectorsDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

   /**
   * Get departureSearches
   * @return departureSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodeSectors arrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilterPostcodeSectors addArrivalSearchesItem(RequestTimeFilterPostcodeSectorsArrivalSearch arrivalSearchesItem) {
    if (this.arrivalSearches == null) {
      this.arrivalSearches = new ArrayList<>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

   /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @ApiModelProperty(value = "")
  public List<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
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
    return Objects.equals(this.departureSearches, requestTimeFilterPostcodeSectors.departureSearches) &&
        Objects.equals(this.arrivalSearches, requestTimeFilterPostcodeSectors.arrivalSearches);
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

