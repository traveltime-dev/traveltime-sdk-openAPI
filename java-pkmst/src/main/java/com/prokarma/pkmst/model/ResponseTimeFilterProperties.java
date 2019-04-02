package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseDistanceBreakdownItem;
import com.prokarma.pkmst.model.ResponseFares;
import com.prokarma.pkmst.model.ResponseRoute;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseTimeFilterProperties
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2019-04-02T12:37:43.845Z[Etc/UTC]")

public class ResponseTimeFilterProperties   {
  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("distance")
  private Integer distance;

  @JsonProperty("distance_breakdown")
  
  private List<ResponseDistanceBreakdownItem> distanceBreakdown = null;

  @JsonProperty("fares")
  private ResponseFares fares = null;

  @JsonProperty("route")
  private ResponseRoute route = null;

  public ResponseTimeFilterProperties travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * @return travelTime
  **/
  @ApiModelProperty(value = "")
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public ResponseTimeFilterProperties distance(Integer distance) {
    this.distance = distance;
    return this;
  }

   /**
   * Get distance
   * @return distance
  **/
  @ApiModelProperty(value = "")
  public Integer getDistance() {
    return distance;
  }

  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  public ResponseTimeFilterProperties distanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
    return this;
  }

  public ResponseTimeFilterProperties addDistanceBreakdownItem(ResponseDistanceBreakdownItem distanceBreakdownItem) {
    if (this.distanceBreakdown == null) {
      this.distanceBreakdown = new ArrayList<>();
    }
    this.distanceBreakdown.add(distanceBreakdownItem);
    return this;
  }

   /**
   * Get distanceBreakdown
   * @return distanceBreakdown
  **/
  @ApiModelProperty(value = "")
  public List<ResponseDistanceBreakdownItem> getDistanceBreakdown() {
    return distanceBreakdown;
  }

  public void setDistanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
  }

  public ResponseTimeFilterProperties fares(ResponseFares fares) {
    this.fares = fares;
    return this;
  }

   /**
   * Get fares
   * @return fares
  **/
  @ApiModelProperty(value = "")
  public ResponseFares getFares() {
    return fares;
  }

  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

  public ResponseTimeFilterProperties route(ResponseRoute route) {
    this.route = route;
    return this;
  }

   /**
   * Get route
   * @return route
  **/
  @ApiModelProperty(value = "")
  public ResponseRoute getRoute() {
    return route;
  }

  public void setRoute(ResponseRoute route) {
    this.route = route;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterProperties responseTimeFilterProperties = (ResponseTimeFilterProperties) o;
    return Objects.equals(this.travelTime, responseTimeFilterProperties.travelTime) &&
        Objects.equals(this.distance, responseTimeFilterProperties.distance) &&
        Objects.equals(this.distanceBreakdown, responseTimeFilterProperties.distanceBreakdown) &&
        Objects.equals(this.fares, responseTimeFilterProperties.fares) &&
        Objects.equals(this.route, responseTimeFilterProperties.route);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, distance, distanceBreakdown, fares, route);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

