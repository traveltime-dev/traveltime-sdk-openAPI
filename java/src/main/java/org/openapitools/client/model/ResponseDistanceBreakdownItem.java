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
import org.openapitools.client.model.ResponseTransportationMode;

/**
 * ResponseDistanceBreakdownItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-26T18:49:54.230Z[Etc/UTC]")
public class ResponseDistanceBreakdownItem {
  public static final String SERIALIZED_NAME_MODE = "mode";
  @SerializedName(SERIALIZED_NAME_MODE)
  private ResponseTransportationMode mode;

  public static final String SERIALIZED_NAME_DISTANCE = "distance";
  @SerializedName(SERIALIZED_NAME_DISTANCE)
  private Integer distance;


  public ResponseDistanceBreakdownItem mode(ResponseTransportationMode mode) {
    
    this.mode = mode;
    return this;
  }

   /**
   * Get mode
   * @return mode
  **/
  @ApiModelProperty(required = true, value = "")

  public ResponseTransportationMode getMode() {
    return mode;
  }


  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }


  public ResponseDistanceBreakdownItem distance(Integer distance) {
    
    this.distance = distance;
    return this;
  }

   /**
   * Get distance
   * @return distance
  **/
  @ApiModelProperty(required = true, value = "")

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

