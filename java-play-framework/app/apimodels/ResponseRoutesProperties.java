package apimodels;

import apimodels.ResponseFares;
import apimodels.ResponseRoute;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseRoutesProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-07-14T11:27:15.847Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseRoutesProperties   {
  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("distance")
  private Integer distance;

  @JsonProperty("fares")
  private ResponseFares fares;

  @JsonProperty("route")
  private ResponseRoute route;

  public ResponseRoutesProperties travelTime(Integer travelTime) {
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

  public ResponseRoutesProperties distance(Integer distance) {
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

  public ResponseRoutesProperties fares(ResponseFares fares) {
    this.fares = fares;
    return this;
  }

   /**
   * Get fares
   * @return fares
  **/
  @Valid
  public ResponseFares getFares() {
    return fares;
  }

  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

  public ResponseRoutesProperties route(ResponseRoute route) {
    this.route = route;
    return this;
  }

   /**
   * Get route
   * @return route
  **/
  @Valid
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
    ResponseRoutesProperties responseRoutesProperties = (ResponseRoutesProperties) o;
    return Objects.equals(travelTime, responseRoutesProperties.travelTime) &&
        Objects.equals(distance, responseRoutesProperties.distance) &&
        Objects.equals(fares, responseRoutesProperties.fares) &&
        Objects.equals(route, responseRoutesProperties.route);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, distance, fares, route);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesProperties {\n");
    
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
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

