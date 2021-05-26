package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseTimeFilterPostcodesProperties   {
  
  private @Valid Integer travelTime;
  private @Valid Integer distance;

  /**
   **/
  public ResponseTimeFilterPostcodesProperties travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  

  
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
  public ResponseTimeFilterPostcodesProperties distance(Integer distance) {
    this.distance = distance;
    return this;
  }

  

  
  @ApiModelProperty(value = "")
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
    return Objects.equals(this.travelTime, responseTimeFilterPostcodesProperties.travelTime) &&
        Objects.equals(this.distance, responseTimeFilterPostcodesProperties.distance);
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

