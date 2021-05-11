package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestArrivalTimePeriod;
import org.openapitools.model.RequestTimeFilterFastProperty;
import org.openapitools.model.RequestTransportationFast;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RequestTimeFilterFastArrivalManyToOneSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private String arrivalLocationId;

  @ApiModelProperty(required = true, value = "")
  private List<String> departureLocationIds = new ArrayList<String>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestTransportationFast transportation;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestArrivalTimePeriod arrivalTimePeriod;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<RequestTimeFilterFastProperty>();
 /**
  * Get id
  * @return id
  */
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Sets the <code>id</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get arrivalLocationId
  * @return arrivalLocationId
  */
  @JsonProperty("arrival_location_id")
  @NotNull
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  /**
   * Sets the <code>arrivalLocationId</code> property.
   */
  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  /**
   * Sets the <code>arrivalLocationId</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

 /**
  * Get departureLocationIds
  * @return departureLocationIds
  */
  @JsonProperty("departure_location_ids")
  @NotNull
 @Size(min=1,max=100000)  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  /**
   * Sets the <code>departureLocationIds</code> property.
   */
  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  /**
   * Sets the <code>departureLocationIds</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  /**
   * Adds a new item to the <code>departureLocationIds</code> list.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    this.departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

 /**
  * Get transportation
  * @return transportation
  */
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportationFast getTransportation() {
    return transportation;
  }

  /**
   * Sets the <code>transportation</code> property.
   */
  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

  /**
   * Sets the <code>transportation</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch transportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
    return this;
  }

 /**
  * Get travelTime
  * minimum: 60
  * maximum: 14400
  * @return travelTime
  */
  @JsonProperty("travel_time")
  @NotNull
 @Min(60) @Max(14400)  public Integer getTravelTime() {
    return travelTime;
  }

  /**
   * Sets the <code>travelTime</code> property.
   */
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   * Sets the <code>travelTime</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
  * Get arrivalTimePeriod
  * @return arrivalTimePeriod
  */
  @JsonProperty("arrival_time_period")
  @NotNull
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }

  /**
   * Sets the <code>arrivalTimePeriod</code> property.
   */
  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

  /**
   * Sets the <code>arrivalTimePeriod</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterFastProperty> getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  /**
   * Adds a new item to the <code>properties</code> list.
   */
  public RequestTimeFilterFastArrivalManyToOneSearch addPropertiesItem(RequestTimeFilterFastProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

