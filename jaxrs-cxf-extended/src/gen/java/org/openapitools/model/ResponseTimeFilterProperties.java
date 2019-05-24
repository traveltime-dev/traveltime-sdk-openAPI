package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseDistanceBreakdownItem;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;
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

public class ResponseTimeFilterProperties  {
  
  @ApiModelProperty(value = "")
  private Integer travelTime;

  @ApiModelProperty(value = "")
  private Integer distance;

  @ApiModelProperty(value = "")
  @Valid
  private List<ResponseDistanceBreakdownItem> distanceBreakdown = null;

  @ApiModelProperty(value = "")
  @Valid
  private ResponseFares fares = null;

  @ApiModelProperty(value = "")
  @Valid
  private ResponseRoute route = null;
 /**
  * Get travelTime
  * @return travelTime
  */
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
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
  public ResponseTimeFilterProperties travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

 /**
  * Get distance
  * @return distance
  */
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   * Sets the <code>distance</code> property.
   */
  public ResponseTimeFilterProperties distance(Integer distance) {
    this.distance = distance;
    return this;
  }

 /**
  * Get distanceBreakdown
  * @return distanceBreakdown
  */
  @JsonProperty("distance_breakdown")
  public List<ResponseDistanceBreakdownItem> getDistanceBreakdown() {
    return distanceBreakdown;
  }

  /**
   * Sets the <code>distanceBreakdown</code> property.
   */
  public void setDistanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
  }

  /**
   * Sets the <code>distanceBreakdown</code> property.
   */
  public ResponseTimeFilterProperties distanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
    return this;
  }

  /**
   * Adds a new item to the <code>distanceBreakdown</code> list.
   */
  public ResponseTimeFilterProperties addDistanceBreakdownItem(ResponseDistanceBreakdownItem distanceBreakdownItem) {
    this.distanceBreakdown.add(distanceBreakdownItem);
    return this;
  }

 /**
  * Get fares
  * @return fares
  */
  @JsonProperty("fares")
  public ResponseFares getFares() {
    return fares;
  }

  /**
   * Sets the <code>fares</code> property.
   */
  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

  /**
   * Sets the <code>fares</code> property.
   */
  public ResponseTimeFilterProperties fares(ResponseFares fares) {
    this.fares = fares;
    return this;
  }

 /**
  * Get route
  * @return route
  */
  @JsonProperty("route")
  public ResponseRoute getRoute() {
    return route;
  }

  /**
   * Sets the <code>route</code> property.
   */
  public void setRoute(ResponseRoute route) {
    this.route = route;
  }

  /**
   * Sets the <code>route</code> property.
   */
  public ResponseTimeFilterProperties route(ResponseRoute route) {
    this.route = route;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterProperties {\n");
    
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
    sb.append("    distanceBreakdown: ").append(toIndentedString(distanceBreakdown)).append("\n");
    sb.append("    fares: ").append(toIndentedString(fares)).append("\n");
    sb.append("    route: ").append(toIndentedString(route)).append("\n");
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

