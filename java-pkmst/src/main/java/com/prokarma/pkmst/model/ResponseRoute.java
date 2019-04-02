package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseRoutePart;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.threeten.bp.OffsetDateTime;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseRoute
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2019-04-02T12:37:43.845Z[Etc/UTC]")

public class ResponseRoute   {
  @JsonProperty("departure_time")
  private OffsetDateTime departureTime;

  @JsonProperty("arrival_time")
  private OffsetDateTime arrivalTime;

  @JsonProperty("parts")
  
  private List<ResponseRoutePart> parts = new ArrayList<>();

  public ResponseRoute departureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
    return this;
  }

   /**
   * Get departureTime
   * @return departureTime
  **/
  @ApiModelProperty(required = true, value = "")
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
  }

  public ResponseRoute arrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

   /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  @ApiModelProperty(required = true, value = "")
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public ResponseRoute parts(List<ResponseRoutePart> parts) {
    this.parts = parts;
    return this;
  }

  public ResponseRoute addPartsItem(ResponseRoutePart partsItem) {
    this.parts.add(partsItem);
    return this;
  }

   /**
   * Get parts
   * @return parts
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseRoutePart> getParts() {
    return parts;
  }

  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoute responseRoute = (ResponseRoute) o;
    return Objects.equals(this.departureTime, responseRoute.departureTime) &&
        Objects.equals(this.arrivalTime, responseRoute.arrivalTime) &&
        Objects.equals(this.parts, responseRoute.parts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureTime, arrivalTime, parts);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoute {\n");
    
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
    sb.append("    parts: ").append(toIndentedString(parts)).append("\n");
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

