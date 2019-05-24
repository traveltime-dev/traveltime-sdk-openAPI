package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseDistanceBreakdownItem;
import org.openapitools.server.api.model.ResponseFares;
import org.openapitools.server.api.model.ResponseRoute;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseTimeFilterProperties   {
  
  private Integer travelTime;
  private Integer distance;
  private List<ResponseDistanceBreakdownItem> distanceBreakdown = new ArrayList<>();
  private ResponseFares fares = null;
  private ResponseRoute route = null;

  public ResponseTimeFilterProperties () {

  }

  public ResponseTimeFilterProperties (Integer travelTime, Integer distance, List<ResponseDistanceBreakdownItem> distanceBreakdown, ResponseFares fares, ResponseRoute route) {
    this.travelTime = travelTime;
    this.distance = distance;
    this.distanceBreakdown = distanceBreakdown;
    this.fares = fares;
    this.route = route;
  }

    
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

    
  @JsonProperty("distance")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

    
  @JsonProperty("distance_breakdown")
  public List<ResponseDistanceBreakdownItem> getDistanceBreakdown() {
    return distanceBreakdown;
  }
  public void setDistanceBreakdown(List<ResponseDistanceBreakdownItem> distanceBreakdown) {
    this.distanceBreakdown = distanceBreakdown;
  }

    
  @JsonProperty("fares")
  public ResponseFares getFares() {
    return fares;
  }
  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

    
  @JsonProperty("route")
  public ResponseRoute getRoute() {
    return route;
  }
  public void setRoute(ResponseRoute route) {
    this.route = route;
  }


  @Override
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
