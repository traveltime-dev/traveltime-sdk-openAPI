/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.ResponseRoutePart;
import org.threeten.bp.OffsetDateTime;

/**
 * ResponseRoute
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-26T18:49:54.230Z[Etc/UTC]")
public class ResponseRoute {
  public static final String SERIALIZED_NAME_DEPARTURE_TIME = "departure_time";
  @SerializedName(SERIALIZED_NAME_DEPARTURE_TIME)
  private OffsetDateTime departureTime;

  public static final String SERIALIZED_NAME_ARRIVAL_TIME = "arrival_time";
  @SerializedName(SERIALIZED_NAME_ARRIVAL_TIME)
  private OffsetDateTime arrivalTime;

  public static final String SERIALIZED_NAME_PARTS = "parts";
  @SerializedName(SERIALIZED_NAME_PARTS)
  private List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>();


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
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

