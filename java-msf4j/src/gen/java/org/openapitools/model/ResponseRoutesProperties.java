package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;

/**
 * ResponseRoutesProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-26T18:50:02.407Z[Etc/UTC]")
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
  @ApiModelProperty(value = "")
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
  @ApiModelProperty(value = "")
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
  @ApiModelProperty(value = "")
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
  @ApiModelProperty(value = "")
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
    ResponseRoutesProperties responseRoutesProperties = (ResponseRoutesProperties) o;
    return Objects.equals(this.travelTime, responseRoutesProperties.travelTime) &&
        Objects.equals(this.distance, responseRoutesProperties.distance) &&
        Objects.equals(this.fares, responseRoutesProperties.fares) &&
        Objects.equals(this.route, responseRoutesProperties.route);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, distance, fares, route);
  }

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

