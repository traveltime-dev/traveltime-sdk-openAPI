package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestArrivalTimePeriod;
import org.openapitools.model.RequestTimeFilterFastProperty;
import org.openapitools.model.RequestTransportationFast;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2020-03-18T07:55:23.027Z[Etc/UTC]")

public class RequestTimeFilterFastArrivalManyToOneSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("arrival_location_id")
  private String arrivalLocationId;

  @JsonProperty("departure_location_ids")
  @Valid
  private List<String> departureLocationIds = new ArrayList<>();

  @JsonProperty("transportation")
  private RequestTransportationFast transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("arrival_time_period")
  private RequestArrivalTimePeriod arrivalTimePeriod;

  @JsonProperty("properties")
  @Valid
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<>();

  public RequestTimeFilterFastArrivalManyToOneSearch id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

  /**
   * Get arrivalLocationId
   * @return arrivalLocationId
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    this.departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

  /**
   * Get departureLocationIds
   * @return departureLocationIds
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

@Size(min=1,max=100000) 
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch transportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
    return this;
  }

  /**
   * Get transportation
   * @return transportation
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

  public RequestTransportationFast getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

@Min(60) @Max(14400) 
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
    return this;
  }

  /**
   * Get arrivalTimePeriod
   * @return arrivalTimePeriod
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }

  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch addPropertiesItem(RequestTimeFilterFastProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
    RequestTimeFilterFastArrivalManyToOneSearch requestTimeFilterFastArrivalManyToOneSearch = (RequestTimeFilterFastArrivalManyToOneSearch) o;
    return Objects.equals(this.id, requestTimeFilterFastArrivalManyToOneSearch.id) &&
        Objects.equals(this.arrivalLocationId, requestTimeFilterFastArrivalManyToOneSearch.arrivalLocationId) &&
        Objects.equals(this.departureLocationIds, requestTimeFilterFastArrivalManyToOneSearch.departureLocationIds) &&
        Objects.equals(this.transportation, requestTimeFilterFastArrivalManyToOneSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterFastArrivalManyToOneSearch.travelTime) &&
        Objects.equals(this.arrivalTimePeriod, requestTimeFilterFastArrivalManyToOneSearch.arrivalTimePeriod) &&
        Objects.equals(this.properties, requestTimeFilterFastArrivalManyToOneSearch.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, arrivalLocationId, departureLocationIds, transportation, travelTime, arrivalTimePeriod, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalManyToOneSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    arrivalLocationId: ").append(toIndentedString(arrivalLocationId)).append("\n");
    sb.append("    departureLocationIds: ").append(toIndentedString(departureLocationIds)).append("\n");
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

