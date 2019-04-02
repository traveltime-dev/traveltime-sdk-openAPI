package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseTimeFilterPostcodesProperties   {
  
  private Integer travelTime = ;
  private Integer distance = ;

  public ResponseTimeFilterPostcodesProperties () {

  }

  public ResponseTimeFilterPostcodesProperties (Integer travelTime, Integer distance) {
    this.travelTime = travelTime;
    this.distance = distance;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodesProperties responseTimeFilterPostcodesProperties = (ResponseTimeFilterPostcodesProperties) o;
    return Objects.equals(travelTime, responseTimeFilterPostcodesProperties.travelTime) &&
        Objects.equals(distance, responseTimeFilterPostcodesProperties.distance);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, distance);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodesProperties {\n");
    
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
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
