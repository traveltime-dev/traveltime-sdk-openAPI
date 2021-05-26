/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
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
import java.util.Date;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestLevelOfDetail;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * RequestTimeMapDepartureSearch
 */
@JsonPropertyOrder({
  RequestTimeMapDepartureSearch.JSON_PROPERTY_ID,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_COORDS,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_TRANSPORTATION,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_TRAVEL_TIME,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_DEPARTURE_TIME,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_PROPERTIES,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_RANGE,
  RequestTimeMapDepartureSearch.JSON_PROPERTY_LEVEL_OF_DETAIL
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class RequestTimeMapDepartureSearch   {
  public static final String JSON_PROPERTY_ID = "id";
  @JsonProperty(JSON_PROPERTY_ID)
  private String id;

  public static final String JSON_PROPERTY_COORDS = "coords";
  @JsonProperty(JSON_PROPERTY_COORDS)
  private Coords coords;

  public static final String JSON_PROPERTY_TRANSPORTATION = "transportation";
  @JsonProperty(JSON_PROPERTY_TRANSPORTATION)
  private RequestTransportation transportation;

  public static final String JSON_PROPERTY_TRAVEL_TIME = "travel_time";
  @JsonProperty(JSON_PROPERTY_TRAVEL_TIME)
  private Integer travelTime;

  public static final String JSON_PROPERTY_DEPARTURE_TIME = "departure_time";
  @JsonProperty(JSON_PROPERTY_DEPARTURE_TIME)
  private Date departureTime;

  public static final String JSON_PROPERTY_PROPERTIES = "properties";
  @JsonProperty(JSON_PROPERTY_PROPERTIES)
  private List<RequestTimeMapProperty> properties = null;

  public static final String JSON_PROPERTY_RANGE = "range";
  @JsonProperty(JSON_PROPERTY_RANGE)
  private RequestRangeNoMaxResults range;

  public static final String JSON_PROPERTY_LEVEL_OF_DETAIL = "level_of_detail";
  @JsonProperty(JSON_PROPERTY_LEVEL_OF_DETAIL)
  private RequestLevelOfDetail levelOfDetail;

  public RequestTimeMapDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
   **/
  @JsonProperty(value = "id")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeMapDepartureSearch coords(Coords coords) {
    this.coords = coords;
    return this;
  }

  /**
   * Get coords
   * @return coords
   **/
  @JsonProperty(value = "coords")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public Coords getCoords() {
    return coords;
  }

  public void setCoords(Coords coords) {
    this.coords = coords;
  }

  public RequestTimeMapDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

  /**
   * Get transportation
   * @return transportation
   **/
  @JsonProperty(value = "transportation")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeMapDepartureSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
   **/
  @JsonProperty(value = "travel_time")
  @ApiModelProperty(required = true, value = "")
  @NotNull  @Min(60) @Max(14400)
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeMapDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

  /**
   * Get departureTime
   * @return departureTime
   **/
  @JsonProperty(value = "departure_time")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public Date getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  public RequestTimeMapDepartureSearch properties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeMapDepartureSearch addPropertiesItem(RequestTimeMapProperty propertiesItem) {
    if (this.properties == null) {
      this.properties = new ArrayList<RequestTimeMapProperty>();
    }
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
   **/
  @JsonProperty(value = "properties")
  @ApiModelProperty(value = "")
  @Valid 
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeMapDepartureSearch range(RequestRangeNoMaxResults range) {
    this.range = range;
    return this;
  }

  /**
   * Get range
   * @return range
   **/
  @JsonProperty(value = "range")
  @ApiModelProperty(value = "")
  @Valid 
  public RequestRangeNoMaxResults getRange() {
    return range;
  }

  public void setRange(RequestRangeNoMaxResults range) {
    this.range = range;
  }

  public RequestTimeMapDepartureSearch levelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
    return this;
  }

  /**
   * Get levelOfDetail
   * @return levelOfDetail
   **/
  @JsonProperty(value = "level_of_detail")
  @ApiModelProperty(value = "")
  @Valid 
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
    return Objects.equals(this.id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(this.coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(this.transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(this.departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(this.properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(this.range, requestTimeMapDepartureSearch.range) &&
        Objects.equals(this.levelOfDetail, requestTimeMapDepartureSearch.levelOfDetail);
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

