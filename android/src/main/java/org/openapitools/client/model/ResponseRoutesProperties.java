/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.ResponseFares;
import org.openapitools.client.model.ResponseRoute;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseRoutesProperties {
  
  @SerializedName("travel_time")
  private Integer travelTime = null;
  @SerializedName("distance")
  private Integer distance = null;
  @SerializedName("fares")
  private ResponseFares fares = null;
  @SerializedName("route")
  private ResponseRoute route = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getDistance() {
    return distance;
  }
  public void setDistance(Integer distance) {
    this.distance = distance;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ResponseFares getFares() {
    return fares;
  }
  public void setFares(ResponseFares fares) {
    this.fares = fares;
  }

  /**
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
    return (this.travelTime == null ? responseRoutesProperties.travelTime == null : this.travelTime.equals(responseRoutesProperties.travelTime)) &&
        (this.distance == null ? responseRoutesProperties.distance == null : this.distance.equals(responseRoutesProperties.distance)) &&
        (this.fares == null ? responseRoutesProperties.fares == null : this.fares.equals(responseRoutesProperties.fares)) &&
        (this.route == null ? responseRoutesProperties.route == null : this.route.equals(responseRoutesProperties.route));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.travelTime == null ? 0: this.travelTime.hashCode());
    result = 31 * result + (this.distance == null ? 0: this.distance.hashCode());
    result = 31 * result + (this.fares == null ? 0: this.fares.hashCode());
    result = 31 * result + (this.route == null ? 0: this.route.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesProperties {\n");
    
    sb.append("  travelTime: ").append(travelTime).append("\n");
    sb.append("  distance: ").append(distance).append("\n");
    sb.append("  fares: ").append(fares).append("\n");
    sb.append("  route: ").append(route).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
