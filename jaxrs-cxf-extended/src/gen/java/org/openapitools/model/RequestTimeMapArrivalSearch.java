package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
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

public class RequestTimeMapArrivalSearch  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private Coords coords = null;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestTransportation transportation = null;

  @ApiModelProperty(required = true, value = "")
  private Integer travelTime;

  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date arrivalTime;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeMapProperty> properties = null;

  @ApiModelProperty(value = "")
  @Valid
  private RequestRangeNoMaxResults range = null;
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
  public RequestTimeMapArrivalSearch id(String id) {
    this.id = id;
    return this;
  }

 /**
  * Get coords
  * @return coords
  */
  @JsonProperty("coords")
  @NotNull
  public Coords getCoords() {
    return coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public void setCoords(Coords coords) {
    this.coords = coords;
  }

  /**
   * Sets the <code>coords</code> property.
   */
  public RequestTimeMapArrivalSearch coords(Coords coords) {
    this.coords = coords;
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
  public RequestTimeMapArrivalSearch transportation(RequestTransportation transportation) {
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
  public RequestTimeMapArrivalSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
  * Get arrivalTime
  * @return arrivalTime
  */
  @JsonProperty("arrival_time")
  @NotNull
  public Date getArrivalTime() {
    return arrivalTime;
  }

  /**
   * Sets the <code>arrivalTime</code> property.
   */
  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  /**
   * Sets the <code>arrivalTime</code> property.
   */
  public RequestTimeMapArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public RequestTimeMapArrivalSearch properties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
    return this;
  }

  /**
   * Adds a new item to the <code>properties</code> list.
   */
  public RequestTimeMapArrivalSearch addPropertiesItem(RequestTimeMapProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

 /**
  * Get range
  * @return range
  */
  @JsonProperty("range")
  public RequestRangeNoMaxResults getRange() {
    return range;
  }

  /**
   * Sets the <code>range</code> property.
   */
  public void setRange(RequestRangeNoMaxResults range) {
    this.range = range;
  }

  /**
   * Sets the <code>range</code> property.
   */
  public RequestTimeMapArrivalSearch range(RequestRangeNoMaxResults range) {
    this.range = range;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMapArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

