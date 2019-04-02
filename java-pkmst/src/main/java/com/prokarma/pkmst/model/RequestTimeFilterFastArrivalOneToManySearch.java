package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.RequestArrivalTimePeriod;
import com.prokarma.pkmst.model.RequestTimeFilterFastProperty;
import com.prokarma.pkmst.model.RequestTransportationFast;
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
 * RequestTimeFilterFastArrivalOneToManySearch
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2019-04-02T12:37:43.845Z[Etc/UTC]")

public class RequestTimeFilterFastArrivalOneToManySearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("departure_location_id")
  private String departureLocationId;

  @JsonProperty("arrival_location_ids")
  
  private List<String> arrivalLocationIds = new ArrayList<>();

  @JsonProperty("transportation")
  private RequestTransportationFast transportation = null;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("arrival_time_period")
  private RequestArrivalTimePeriod arrivalTimePeriod = null;

  @JsonProperty("properties")
  
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<>();

  public RequestTimeFilterFastArrivalOneToManySearch id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterFastArrivalOneToManySearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

   /**
   * Get departureLocationId
   * @return departureLocationId
  **/
  @ApiModelProperty(required = true, value = "")
  public String getDepartureLocationId() {
    return departureLocationId;
  }

  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  public RequestTimeFilterFastArrivalOneToManySearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  public RequestTimeFilterFastArrivalOneToManySearch addArrivalLocationIdsItem(String arrivalLocationIdsItem) {
    this.arrivalLocationIds.add(arrivalLocationIdsItem);
    return this;
  }

   /**
   * Get arrivalLocationIds
   * @return arrivalLocationIds
  **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }

  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  public RequestTimeFilterFastArrivalOneToManySearch transportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  @ApiModelProperty(required = true, value = "")
  public RequestTransportationFast getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterFastArrivalOneToManySearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterFastArrivalOneToManySearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
    return this;
  }

   /**
   * Get arrivalTimePeriod
   * @return arrivalTimePeriod
  **/
  @ApiModelProperty(required = true, value = "")
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }

  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

  public RequestTimeFilterFastArrivalOneToManySearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterFastArrivalOneToManySearch addPropertiesItem(RequestTimeFilterFastProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestTimeFilterFastProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterFastArrivalOneToManySearch requestTimeFilterFastArrivalOneToManySearch = (RequestTimeFilterFastArrivalOneToManySearch) o;
    return Objects.equals(this.id, requestTimeFilterFastArrivalOneToManySearch.id) &&
        Objects.equals(this.departureLocationId, requestTimeFilterFastArrivalOneToManySearch.departureLocationId) &&
        Objects.equals(this.arrivalLocationIds, requestTimeFilterFastArrivalOneToManySearch.arrivalLocationIds) &&
        Objects.equals(this.transportation, requestTimeFilterFastArrivalOneToManySearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterFastArrivalOneToManySearch.travelTime) &&
        Objects.equals(this.arrivalTimePeriod, requestTimeFilterFastArrivalOneToManySearch.arrivalTimePeriod) &&
        Objects.equals(this.properties, requestTimeFilterFastArrivalOneToManySearch.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, travelTime, arrivalTimePeriod, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalOneToManySearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTimePeriod: ").append(toIndentedString(arrivalTimePeriod)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

