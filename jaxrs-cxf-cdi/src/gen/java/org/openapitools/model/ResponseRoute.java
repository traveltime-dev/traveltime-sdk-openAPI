package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseRoutePart;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class ResponseRoute   {
  
  private java.util.Date departureTime;

  private java.util.Date arrivalTime;

  private List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>();


  /**
   **/
  public ResponseRoute departureTime(java.util.Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_time")
  @NotNull
  public java.util.Date getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(java.util.Date departureTime) {
    this.departureTime = departureTime;
  }


  /**
   **/
  public ResponseRoute arrivalTime(java.util.Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time")
  @NotNull
  public java.util.Date getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(java.util.Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }


  /**
   **/
  public ResponseRoute parts(List<ResponseRoutePart> parts) {
    this.parts = parts;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("parts")
  @NotNull
  public List<ResponseRoutePart> getParts() {
    return parts;
  }
  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }

  public ResponseRoute addPartsItem(ResponseRoutePart partsItem) {
    this.parts.add(partsItem);
    return this;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoute responseRoute = (ResponseRoute) o;
    return Objects.equals(departureTime, responseRoute.departureTime) &&
        Objects.equals(arrivalTime, responseRoute.arrivalTime) &&
        Objects.equals(parts, responseRoute.parts);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

