package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-26T18:50:31.276Z[Etc/UTC]")public class ResponseDistanceBreakdownItem   {
  
  private @Valid ResponseTransportationMode mode;
  private @Valid Integer distance;

  /**
   **/
  public ResponseDistanceBreakdownItem mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

  

  
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
  public ResponseDistanceBreakdownItem distance(Integer distance) {
    this.distance = distance;
    return this;
  }

  

  
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
    return Objects.equals(this.mode, responseDistanceBreakdownItem.mode) &&
        Objects.equals(this.distance, responseDistanceBreakdownItem.distance);
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

