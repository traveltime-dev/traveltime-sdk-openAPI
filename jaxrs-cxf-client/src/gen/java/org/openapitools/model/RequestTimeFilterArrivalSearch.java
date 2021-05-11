package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterProperty;
import org.openapitools.model.RequestTransportation;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestTimeFilterArrivalSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private List<String> departureLocationIds = new ArrayList<String>();

  @ApiModelProperty(required = true, value = "")
  private String arrivalLocationId;

  @ApiModelProperty(required = true, value = "")
  private RequestTransportation transportation;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  private Date arrivalTime;

  @ApiModelProperty(required = true, value = "")
  private List<RequestTimeFilterProperty> properties = new ArrayList<RequestTimeFilterProperty>();

  @ApiModelProperty(value = "")
  private RequestRangeFull range;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterArrivalSearch id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get departureLocationIds
   * @return departureLocationIds
  **/
  @JsonProperty("departure_location_ids")
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  public RequestTimeFilterArrivalSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestTimeFilterArrivalSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    this.departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

 /**
   * Get arrivalLocationId
   * @return arrivalLocationId
  **/
  @JsonProperty("arrival_location_id")
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  public RequestTimeFilterArrivalSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

 /**
   * Get transportation
   * @return transportation
  **/
  @JsonProperty("transportation")
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterArrivalSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

 /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterArrivalSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  @JsonProperty("arrival_time")
  public Date getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestTimeFilterArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

 /**
   * Get properties
   * @return properties
  **/
  @JsonProperty("properties")
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterArrivalSearch properties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterArrivalSearch addPropertiesItem(RequestTimeFilterProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

 /**
   * Get range
   * @return range
  **/
  @JsonProperty("range")
  public RequestRangeFull getRange() {
    return range;
  }

  public void setRange(RequestRangeFull range) {
    this.range = range;
  }

  public RequestTimeFilterArrivalSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationIds: ").append(toIndentedString(departureLocationIds)).append("\n");
    sb.append("    arrivalLocationId: ").append(toIndentedString(arrivalLocationId)).append("\n");
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

