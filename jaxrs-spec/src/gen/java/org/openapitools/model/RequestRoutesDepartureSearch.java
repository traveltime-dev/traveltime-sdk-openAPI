package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestRoutesProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class RequestRoutesDepartureSearch   {
  
  private @Valid String id;
  private @Valid String departureLocationId;
  private @Valid List<String> arrivalLocationIds = new ArrayList<String>();
  private @Valid RequestTransportation transportation;
  private @Valid Date departureTime;
  private @Valid List<RequestRoutesProperty> properties = new ArrayList<RequestRoutesProperty>();
  private @Valid RequestRangeFull range;

  /**
   **/
  public RequestRoutesDepartureSearch id(String id) {
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
  public RequestRoutesDepartureSearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_location_id")
  @NotNull
  public String getDepartureLocationId() {
    return departureLocationId;
  }

  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

/**
   **/
  public RequestRoutesDepartureSearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_location_ids")
  @NotNull
 @Size(min=1,max=2)  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }

  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

/**
   **/
  public RequestRoutesDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

/**
   **/
  public RequestRoutesDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_time")
  @NotNull
  public Date getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

/**
   **/
  public RequestRoutesDepartureSearch properties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
  }

/**
   **/
  public RequestRoutesDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
  @JsonProperty("range")
  public RequestRangeFull getRange() {
    return range;
  }

  public void setRange(RequestRangeFull range) {
    this.range = range;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRoutesDepartureSearch requestRoutesDepartureSearch = (RequestRoutesDepartureSearch) o;
    return Objects.equals(this.id, requestRoutesDepartureSearch.id) &&
        Objects.equals(this.departureLocationId, requestRoutesDepartureSearch.departureLocationId) &&
        Objects.equals(this.arrivalLocationIds, requestRoutesDepartureSearch.arrivalLocationIds) &&
        Objects.equals(this.transportation, requestRoutesDepartureSearch.transportation) &&
        Objects.equals(this.departureTime, requestRoutesDepartureSearch.departureTime) &&
        Objects.equals(this.properties, requestRoutesDepartureSearch.properties) &&
        Objects.equals(this.range, requestRoutesDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
    sb.append("    range: ").append(toIndentedString(range)).append("\n");
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

