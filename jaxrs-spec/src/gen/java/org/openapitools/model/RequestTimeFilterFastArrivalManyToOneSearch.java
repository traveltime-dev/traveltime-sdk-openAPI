package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestArrivalTimePeriod;
import org.openapitools.model.RequestTimeFilterFastProperty;
import org.openapitools.model.RequestTransportationFast;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class RequestTimeFilterFastArrivalManyToOneSearch   {
  
  private @Valid String id;
  private @Valid String arrivalLocationId;
  private @Valid List<String> departureLocationIds = new ArrayList<String>();
  private @Valid RequestTransportationFast transportation;
  private @Valid Integer travelTime;
  private @Valid RequestArrivalTimePeriod arrivalTimePeriod;
  private @Valid List<RequestTimeFilterFastProperty> properties = new ArrayList<RequestTimeFilterFastProperty>();

  /**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch id(String id) {
    this.id = id;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

/**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_location_id")
  @NotNull
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

/**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_location_ids")
  @NotNull
 @Size(min=1,max=100000)  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

/**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch transportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportationFast getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

/**
   * minimum: 60
   * maximum: 14400
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  @NotNull
 @Min(60) @Max(14400)  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

/**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time_period")
  @NotNull
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }

  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

/**
   **/
  public RequestTimeFilterFastArrivalManyToOneSearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterFastProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

