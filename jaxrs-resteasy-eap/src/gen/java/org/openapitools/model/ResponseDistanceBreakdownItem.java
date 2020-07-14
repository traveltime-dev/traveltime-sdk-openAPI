package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-07-14T11:27:37.641Z[Etc/UTC]")
public class ResponseDistanceBreakdownItem   {
  

  private ResponseTransportationMode mode;

  private Integer distance;

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("mode")
  @NotNull
  public ResponseTransportationMode getMode() {
    return mode;
  }
  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("distance")
  @NotNull
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
    ResponseDistanceBreakdownItem responseDistanceBreakdownItem = (ResponseDistanceBreakdownItem) o;
    return Objects.equals(mode, responseDistanceBreakdownItem.mode) &&
        Objects.equals(distance, responseDistanceBreakdownItem.distance);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mode, distance);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseDistanceBreakdownItem {\n");
    
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
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

