package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty;
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

public class RequestTimeFilterPostcodeSectorsArrivalSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private RequestTransportation transportation;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  private Date arrivalTime;

  @ApiModelProperty(required = true, value = "")
  private Double reachablePostcodesThreshold;

  @ApiModelProperty(required = true, value = "")
  private List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<RequestTimeFilterPostcodeSectorsProperty>();

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

  public RequestTimeFilterPostcodeSectorsArrivalSearch id(String id) {
    this.id = id;
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch travelTime(Integer travelTime) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

 /**
   * Get reachablePostcodesThreshold
   * @return reachablePostcodesThreshold
  **/
  @JsonProperty("reachable_postcodes_threshold")
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }

  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

 /**
   * Get properties
   * @return properties
  **/
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodeSectorsProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch properties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch addPropertiesItem(RequestTimeFilterPostcodeSectorsProperty propertiesItem) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeSectorsArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

