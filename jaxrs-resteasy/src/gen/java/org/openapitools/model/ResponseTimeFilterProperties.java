package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseDistanceBreakdownItem;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;
import javax.validation.constraints.*;
import io.swagger.annotations.*;


@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2019-04-02T12:38:00.929Z[Etc/UTC]")
public class ResponseTimeFilterProperties   {
  
  private Integer travelTime;
  private Integer distance;
  private List<ResponseDistanceBreakdownItem> distanceBreakdown = new ArrayList<ResponseDistanceBreakdownItem>();
  private ResponseFares fares = null;
  private ResponseRoute route = null;

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("distance_breakdown")
  public List<ResponseDistanceBreakdownItem> getDistanceBreakdown() {
    return distanceBreakdown;
  }
  public void setDistanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("fares")
  public ResponseFares getFares() {
    return fares;
  }
  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("route")
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
    return Objects.equals(travelTime, responseTimeFilterProperties.travelTime) &&
        Objects.equals(distance, responseTimeFilterProperties.distance) &&
        Objects.equals(distanceBreakdown, responseTimeFilterProperties.distanceBreakdown) &&
        Objects.equals(fares, responseTimeFilterProperties.fares) &&
        Objects.equals(route, responseTimeFilterProperties.route);
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

