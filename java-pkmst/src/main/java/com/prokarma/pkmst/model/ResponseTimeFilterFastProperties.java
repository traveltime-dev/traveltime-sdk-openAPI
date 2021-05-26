package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseFaresFast;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseTimeFilterFastProperties
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class ResponseTimeFilterFastProperties   {
  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("fares")
  private ResponseFaresFast fares;

  public ResponseTimeFilterFastProperties travelTime(Integer travelTime) {
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

  public ResponseTimeFilterFastProperties fares(ResponseFaresFast fares) {
    this.fares = fares;
    return this;
  }

   /**
   * Get fares
   * @return fares
  **/
  @ApiModelProperty(value = "")
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
    return Objects.equals(this.travelTime, responseTimeFilterFastProperties.travelTime) &&
        Objects.equals(this.fares, responseTimeFilterFastProperties.fares);
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

