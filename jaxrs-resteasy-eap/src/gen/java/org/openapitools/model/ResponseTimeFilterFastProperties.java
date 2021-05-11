package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseFaresFast;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-11T08:38:18.755Z[Etc/UTC]")
public class ResponseTimeFilterFastProperties   {
  

  private Integer travelTime;

  private ResponseFaresFast fares;

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
  @JsonProperty("fares")
  public ResponseFaresFast getFares() {
    return fares;
  }
  public void setFares(ResponseFaresFast fares) {
    this.fares = fares;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterFastProperties responseTimeFilterFastProperties = (ResponseTimeFilterFastProperties) o;
    return Objects.equals(travelTime, responseTimeFilterFastProperties.travelTime) &&
        Objects.equals(fares, responseTimeFilterFastProperties.fares);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, fares);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFastProperties {\n");
    
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    fares: ").append(toIndentedString(fares)).append("\n");
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

