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



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class RequestTimeMapDepartureSearch   {
  
  private @Valid String id;
  private @Valid Coords coords;
  private @Valid RequestTransportation transportation;
  private @Valid Integer travelTime;
  private @Valid Date departureTime;
  private @Valid List<RequestTimeMapProperty> properties = new ArrayList<RequestTimeMapProperty>();
  private @Valid RequestRangeNoMaxResults range;

  /**
   **/
  public RequestTimeMapDepartureSearch id(String id) {
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
  public RequestTimeMapDepartureSearch coords(Coords coords) {
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
  public RequestTimeMapDepartureSearch transportation(RequestTransportation transportation) {
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
  public RequestTimeMapDepartureSearch travelTime(Integer travelTime) {
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
  public RequestTimeMapDepartureSearch departureTime(Date departureTime) {
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
  public RequestTimeMapDepartureSearch properties(List<RequestTimeMapProperty> properties) {
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
  public RequestTimeMapDepartureSearch range(RequestRangeNoMaxResults range) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeMapDepartureSearch requestTimeMapDepartureSearch = (RequestTimeMapDepartureSearch) o;
    return Objects.equals(this.id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(this.coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(this.transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(this.departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(this.properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(this.range, requestTimeMapDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMapDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
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

