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
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.model.RequestTransportation;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * RequestTimeFilterPostcodesArrivalSearch
 */
@JsonPropertyOrder({
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_ID,
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_TRANSPORTATION,
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_TRAVEL_TIME,
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_ARRIVAL_TIME,
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_PROPERTIES,
  RequestTimeFilterPostcodesArrivalSearch.JSON_PROPERTY_RANGE
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class RequestTimeFilterPostcodesArrivalSearch   {
  public static final String JSON_PROPERTY_ID = "id";
  @JsonProperty(JSON_PROPERTY_ID)
  private String id;

  public static final String JSON_PROPERTY_TRANSPORTATION = "transportation";
  @JsonProperty(JSON_PROPERTY_TRANSPORTATION)
  private RequestTransportation transportation;

  public static final String JSON_PROPERTY_TRAVEL_TIME = "travel_time";
  @JsonProperty(JSON_PROPERTY_TRAVEL_TIME)
  private Integer travelTime;

  public static final String JSON_PROPERTY_ARRIVAL_TIME = "arrival_time";
  @JsonProperty(JSON_PROPERTY_ARRIVAL_TIME)
  private Date arrivalTime;

  public static final String JSON_PROPERTY_PROPERTIES = "properties";
  @JsonProperty(JSON_PROPERTY_PROPERTIES)
  private List<RequestTimeFilterPostcodesProperty> properties = new ArrayList<RequestTimeFilterPostcodesProperty>();

  public static final String JSON_PROPERTY_RANGE = "range";
  @JsonProperty(JSON_PROPERTY_RANGE)
  private RequestRangeFull range;

  public RequestTimeFilterPostcodesArrivalSearch id(String id) {
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

  public RequestTimeFilterPostcodesArrivalSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodesArrivalSearch travelTime(Integer travelTime) {
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

  public RequestTimeFilterPostcodesArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

  /**
   * Get arrivalTime
   * @return arrivalTime
   **/
  @JsonProperty(value = "arrival_time")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public Date getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestTimeFilterPostcodesArrivalSearch properties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodesArrivalSearch addPropertiesItem(RequestTimeFilterPostcodesProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
   **/
  @JsonProperty(value = "properties")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public List<RequestTimeFilterPostcodesProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodesArrivalSearch range(RequestRangeFull range) {
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
    RequestTimeFilterPostcodesArrivalSearch requestTimeFilterPostcodesArrivalSearch = (RequestTimeFilterPostcodesArrivalSearch) o;
    return Objects.equals(this.id, requestTimeFilterPostcodesArrivalSearch.id) &&
        Objects.equals(this.transportation, requestTimeFilterPostcodesArrivalSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterPostcodesArrivalSearch.travelTime) &&
        Objects.equals(this.arrivalTime, requestTimeFilterPostcodesArrivalSearch.arrivalTime) &&
        Objects.equals(this.properties, requestTimeFilterPostcodesArrivalSearch.properties) &&
        Objects.equals(this.range, requestTimeFilterPostcodesArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, arrivalTime, properties, range);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodesArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

