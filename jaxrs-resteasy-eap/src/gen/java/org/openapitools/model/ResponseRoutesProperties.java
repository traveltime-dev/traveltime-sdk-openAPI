package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseFares;
import org.openapitools.model.ResponseRoute;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class ResponseRoutesProperties   {
  

  private Integer travelTime;

  private Integer distance;

  private ResponseFares fares;

  private ResponseRoute route;

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
  public boolean equals(Object o) {
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

