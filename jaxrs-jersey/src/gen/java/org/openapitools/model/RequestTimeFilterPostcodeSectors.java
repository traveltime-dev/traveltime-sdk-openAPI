/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsDepartureSearch;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * RequestTimeFilterPostcodeSectors
 */
@JsonPropertyOrder({
  RequestTimeFilterPostcodeSectors.JSON_PROPERTY_DEPARTURE_SEARCHES,
  RequestTimeFilterPostcodeSectors.JSON_PROPERTY_ARRIVAL_SEARCHES
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-11T08:38:13.963Z[Etc/UTC]")
public class RequestTimeFilterPostcodeSectors   {
  public static final String JSON_PROPERTY_DEPARTURE_SEARCHES = "departure_searches";
  @JsonProperty(JSON_PROPERTY_DEPARTURE_SEARCHES)
  private List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = null;

  public static final String JSON_PROPERTY_ARRIVAL_SEARCHES = "arrival_searches";
  @JsonProperty(JSON_PROPERTY_ARRIVAL_SEARCHES)
  private List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = null;

  public RequestTimeFilterPostcodeSectors departureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilterPostcodeSectors addDepartureSearchesItem(RequestTimeFilterPostcodeSectorsDepartureSearch departureSearchesItem) {
    if (this.departureSearches == null) {
      this.departureSearches = new ArrayList<RequestTimeFilterPostcodeSectorsDepartureSearch>();
    }
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

  /**
   * Get departureSearches
   * @return departureSearches
   **/
  @JsonProperty(value = "departure_searches")
  @ApiModelProperty(value = "")
  @Valid  @Size(max=10)
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
      this.arrivalSearches = new ArrayList<RequestTimeFilterPostcodeSectorsArrivalSearch>();
    }
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }

  /**
   * Get arrivalSearches
   * @return arrivalSearches
   **/
  @JsonProperty(value = "arrival_searches")
  @ApiModelProperty(value = "")
  @Valid  @Size(max=10)
  public List<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

