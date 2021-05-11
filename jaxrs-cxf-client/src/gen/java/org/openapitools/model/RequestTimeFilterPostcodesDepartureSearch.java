package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodesProperty;
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

public class RequestTimeFilterPostcodesDepartureSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private RequestTransportation transportation;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  private Date departureTime;

  @ApiModelProperty(required = true, value = "")
  private List<RequestTimeFilterPostcodesProperty> properties = new ArrayList<RequestTimeFilterPostcodesProperty>();

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

  public RequestTimeFilterPostcodesDepartureSearch id(String id) {
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

  public RequestTimeFilterPostcodesDepartureSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodesDepartureSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
   * Get departureTime
   * @return departureTime
  **/
  @JsonProperty("departure_time")
  public Date getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  public RequestTimeFilterPostcodesDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

 /**
   * Get properties
   * @return properties
  **/
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodesProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodesDepartureSearch properties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodesDepartureSearch addPropertiesItem(RequestTimeFilterPostcodesProperty propertiesItem) {
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

  public RequestTimeFilterPostcodesDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

