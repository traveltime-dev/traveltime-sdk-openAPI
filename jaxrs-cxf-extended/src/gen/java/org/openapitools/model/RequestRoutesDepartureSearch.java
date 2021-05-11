package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestRoutesProperty;
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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RequestRoutesDepartureSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private String departureLocationId;

  @ApiModelProperty(required = true, value = "")
  private List<String> arrivalLocationIds = new ArrayList<String>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestTransportation transportation;

  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date departureTime;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestRoutesProperty> properties = new ArrayList<RequestRoutesProperty>();

  @ApiModelProperty(value = "")
  @Valid
  private RequestRangeFull range;
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
  public RequestRoutesDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get departureLocationId
  * @return departureLocationId
  */
  @JsonProperty("departure_location_id")
  @NotNull
  public String getDepartureLocationId() {
    return departureLocationId;
  }

  /**
   * Sets the <code>departureLocationId</code> property.
   */
  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  /**
   * Sets the <code>departureLocationId</code> property.
   */
  public RequestRoutesDepartureSearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

 /**
  * Get arrivalLocationIds
  * @return arrivalLocationIds
  */
  @JsonProperty("arrival_location_ids")
  @NotNull
 @Size(min=1,max=2)  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }

  /**
   * Sets the <code>arrivalLocationIds</code> property.
   */
  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  /**
   * Sets the <code>arrivalLocationIds</code> property.
   */
  public RequestRoutesDepartureSearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  /**
   * Adds a new item to the <code>arrivalLocationIds</code> list.
   */
  public RequestRoutesDepartureSearch addArrivalLocationIdsItem(String arrivalLocationIdsItem) {
    this.arrivalLocationIds.add(arrivalLocationIdsItem);
    return this;
  }

 /**
  * Get transportation
  * @return transportation
  */
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportation getTransportation() {
    return transportation;
  }

  /**
   * Sets the <code>transportation</code> property.
   */
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  /**
   * Sets the <code>transportation</code> property.
   */
  public RequestRoutesDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

 /**
  * Get departureTime
  * @return departureTime
  */
  @JsonProperty("departure_time")
  @NotNull
  public Date getDepartureTime() {
    return departureTime;
  }

  /**
   * Sets the <code>departureTime</code> property.
   */
  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  /**
   * Sets the <code>departureTime</code> property.
   */
  public RequestRoutesDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  @NotNull
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public RequestRoutesDepartureSearch properties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
    return this;
  }

  /**
   * Adds a new item to the <code>properties</code> list.
   */
  public RequestRoutesDepartureSearch addPropertiesItem(RequestRoutesProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

 /**
  * Get range
  * @return range
  */
  @JsonProperty("range")
  public RequestRangeFull getRange() {
    return range;
  }

  /**
   * Sets the <code>range</code> property.
   */
  public void setRange(RequestRangeFull range) {
    this.range = range;
  }

  /**
   * Sets the <code>range</code> property.
   */
  public RequestRoutesDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
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

