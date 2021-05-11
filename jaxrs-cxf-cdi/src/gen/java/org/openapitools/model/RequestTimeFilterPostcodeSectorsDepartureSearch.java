package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class RequestTimeFilterPostcodeSectorsDepartureSearch   {
  
  private String id;

  private RequestTransportation transportation;

  private Integer travelTime;

  private java.util.Date departureTime;

  private Double reachablePostcodesThreshold;

  private List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<RequestTimeFilterPostcodeSectorsProperty>();

  private RequestRangeFull range;


  /**
   **/
  public RequestTimeFilterPostcodeSectorsDepartureSearch id(String id) {
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
  public RequestTimeFilterPostcodeSectorsDepartureSearch transportation(RequestTransportation transportation) {
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
   * minimum: 60
   * maximum: 14400
   **/
  public RequestTimeFilterPostcodeSectorsDepartureSearch travelTime(Integer travelTime) {
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
  public RequestTimeFilterPostcodeSectorsDepartureSearch departureTime(java.util.Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_time")
  @NotNull
  public java.util.Date getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(java.util.Date departureTime) {
    this.departureTime = departureTime;
  }


  /**
   **/
  public RequestTimeFilterPostcodeSectorsDepartureSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("reachable_postcodes_threshold")
  @NotNull
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }
  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }


  /**
   **/
  public RequestTimeFilterPostcodeSectorsDepartureSearch properties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterPostcodeSectorsProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch addPropertiesItem(RequestTimeFilterPostcodeSectorsProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }


  /**
   **/
  public RequestTimeFilterPostcodeSectorsDepartureSearch range(RequestRangeFull range) {
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
    RequestTimeFilterPostcodeSectorsDepartureSearch requestTimeFilterPostcodeSectorsDepartureSearch = (RequestTimeFilterPostcodeSectorsDepartureSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodeSectorsDepartureSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodeSectorsDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodeSectorsDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeFilterPostcodeSectorsDepartureSearch.departureTime) &&
        Objects.equals(reachablePostcodesThreshold, requestTimeFilterPostcodeSectorsDepartureSearch.reachablePostcodesThreshold) &&
        Objects.equals(properties, requestTimeFilterPostcodeSectorsDepartureSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodeSectorsDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, departureTime, reachablePostcodesThreshold, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeSectorsDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
    sb.append("    reachablePostcodesThreshold: ").append(toIndentedString(reachablePostcodesThreshold)).append("\n");
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

