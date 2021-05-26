package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestLevelOfDetail;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class RequestTimeMapDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("coords")
  private Coords coords;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("departure_time")
  private Date departureTime;

  @JsonProperty("properties")
  private List<RequestTimeMapProperty> properties = null;

  @JsonProperty("range")
  private RequestRangeNoMaxResults range;

  @JsonProperty("level_of_detail")
  private RequestLevelOfDetail levelOfDetail;

  /**
   **/
  public RequestTimeMapDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
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
  public Integer getTravelTime() {
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

  /**
   **/
  public RequestTimeMapDepartureSearch levelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("level_of_detail")
  public RequestLevelOfDetail getLevelOfDetail() {
    return levelOfDetail;
  }
  public void setLevelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
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
    return Objects.equals(id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(range, requestTimeMapDepartureSearch.range) &&
        Objects.equals(levelOfDetail, requestTimeMapDepartureSearch.levelOfDetail);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, departureTime, properties, range, levelOfDetail);
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
    sb.append("    levelOfDetail: ").append(toIndentedString(levelOfDetail)).append("\n");
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

