package apimodels;

import apimodels.ResponseDistanceBreakdownItem;
import apimodels.ResponseFares;
import apimodels.ResponseRoute;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterProperties   {
  @JsonProperty("travel_time")
  
  private Integer travelTime;

  @JsonProperty("distance")
  
  private Integer distance;

  @JsonProperty("distance_breakdown")
  @Valid

  private List<ResponseDistanceBreakdownItem> distanceBreakdown = null;

  @JsonProperty("fares")
  @Valid

  private ResponseFares fares;

  @JsonProperty("route")
  @Valid

  private ResponseRoute route;

  public ResponseTimeFilterProperties travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * @return travelTime
  **/
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
    if (distanceBreakdown == null) {
      distanceBreakdown = new ArrayList<>();
    }
    distanceBreakdown.add(distanceBreakdownItem);
    return this;
  }

   /**
   * Get distanceBreakdown
   * @return distanceBreakdown
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

