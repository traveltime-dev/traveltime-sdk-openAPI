package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



public class RequestTimeMapArrivalSearch   {
  
  private @Valid String id;
  private @Valid Coords coords = null;
  private @Valid RequestTransportation transportation = null;
  private @Valid Integer travelTime;
  private @Valid Date arrivalTime;
  private @Valid List<RequestTimeMapProperty> properties = new ArrayList<RequestTimeMapProperty>();
  private @Valid RequestRangeNoMaxResults range = null;

  /**
   **/
  public RequestTimeMapArrivalSearch id(String id) {
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
  public RequestTimeMapArrivalSearch coords(Coords coords) {
    this.coords = coords;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("coords")
  @NotNull
  public Coords getCoords() {
    return coords;
  }
  public void setCoords(Coords coords) {
    this.coords = coords;
  }

  /**
   **/
  public RequestTimeMapArrivalSearch transportation(RequestTransportation transportation) {
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
  public RequestTimeMapArrivalSearch travelTime(Integer travelTime) {
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
  public RequestTimeMapArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time")
  @NotNull
  public Date getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  /**
   **/
  public RequestTimeMapArrivalSearch properties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("properties")
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  public RequestTimeMapArrivalSearch range(RequestRangeNoMaxResults range) {
    this.range = range;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("range")
  public RequestRangeNoMaxResults getRange() {
    return range;
  }
  public void setRange(RequestRangeNoMaxResults range) {
    this.range = range;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeMapArrivalSearch requestTimeMapArrivalSearch = (RequestTimeMapArrivalSearch) o;
    return Objects.equals(id, requestTimeMapArrivalSearch.id) &&
        Objects.equals(coords, requestTimeMapArrivalSearch.coords) &&
        Objects.equals(transportation, requestTimeMapArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeMapArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeMapArrivalSearch.arrivalTime) &&
        Objects.equals(properties, requestTimeMapArrivalSearch.properties) &&
        Objects.equals(range, requestTimeMapArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, arrivalTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMapArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
    sb.append("    range: ").append(toIndentedString(range)).append("\n");
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

