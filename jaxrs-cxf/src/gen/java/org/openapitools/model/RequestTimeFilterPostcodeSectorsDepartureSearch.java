package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.model.RequestTransportation;
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
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestTimeFilterPostcodeSectorsDepartureSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestTransportation transportation;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  private Date departureTime;

  @ApiModelProperty(required = true, value = "")
  private Double reachablePostcodesThreshold;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<RequestTimeFilterPostcodeSectorsProperty>();

  @ApiModelProperty(value = "")
  @Valid
  private RequestRangeFull range;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get transportation
   * @return transportation
  **/
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch transportation(RequestTransportation transportation) {
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
  @NotNull
 @Min(60) @Max(14400)  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
   * Get departureTime
   * @return departureTime
  **/
  @JsonProperty("departure_time")
  @NotNull
  public Date getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

 /**
   * Get reachablePostcodesThreshold
   * @return reachablePostcodesThreshold
  **/
  @JsonProperty("reachable_postcodes_threshold")
  @NotNull
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }

  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

 /**
   * Get properties
   * @return properties
  **/
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterPostcodeSectorsProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch properties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeSectorsDepartureSearch addPropertiesItem(RequestTimeFilterPostcodeSectorsProperty propertiesItem) {
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

  public RequestTimeFilterPostcodeSectorsDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

