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
import org.openapitools.client.model.ResponseTravelTimeStatistics;

/**
 * ResponseTimeFilterPostcodeSectorProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-26T18:49:54.230Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeSectorProperties {
  public static final String SERIALIZED_NAME_TRAVEL_TIME_REACHABLE = "travel_time_reachable";
  @SerializedName(SERIALIZED_NAME_TRAVEL_TIME_REACHABLE)
  private ResponseTravelTimeStatistics travelTimeReachable;

  public static final String SERIALIZED_NAME_TRAVEL_TIME_ALL = "travel_time_all";
  @SerializedName(SERIALIZED_NAME_TRAVEL_TIME_ALL)
  private ResponseTravelTimeStatistics travelTimeAll;

  public static final String SERIALIZED_NAME_COVERAGE = "coverage";
  @SerializedName(SERIALIZED_NAME_COVERAGE)
  private Double coverage;


  public ResponseTimeFilterPostcodeSectorProperties travelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    
    this.travelTimeReachable = travelTimeReachable;
    return this;
  }

   /**
   * Get travelTimeReachable
   * @return travelTimeReachable
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ResponseTravelTimeStatistics getTravelTimeReachable() {
    return travelTimeReachable;
  }


  public void setTravelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    this.travelTimeReachable = travelTimeReachable;
  }


  public ResponseTimeFilterPostcodeSectorProperties travelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    
    this.travelTimeAll = travelTimeAll;
    return this;
  }

   /**
   * Get travelTimeAll
   * @return travelTimeAll
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public ResponseTravelTimeStatistics getTravelTimeAll() {
    return travelTimeAll;
  }


  public void setTravelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    this.travelTimeAll = travelTimeAll;
  }


  public ResponseTimeFilterPostcodeSectorProperties coverage(Double coverage) {
    
    this.coverage = coverage;
    return this;
  }

   /**
   * Get coverage
   * @return coverage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public Double getCoverage() {
    return coverage;
  }


  public void setCoverage(Double coverage) {
    this.coverage = coverage;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeSectorProperties responseTimeFilterPostcodeSectorProperties = (ResponseTimeFilterPostcodeSectorProperties) o;
    return Objects.equals(this.travelTimeReachable, responseTimeFilterPostcodeSectorProperties.travelTimeReachable) &&
        Objects.equals(this.travelTimeAll, responseTimeFilterPostcodeSectorProperties.travelTimeAll) &&
        Objects.equals(this.coverage, responseTimeFilterPostcodeSectorProperties.coverage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTimeReachable, travelTimeAll, coverage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSectorProperties {\n");
    sb.append("    travelTimeReachable: ").append(toIndentedString(travelTimeReachable)).append("\n");
    sb.append("    travelTimeAll: ").append(toIndentedString(travelTimeAll)).append("\n");
    sb.append("    coverage: ").append(toIndentedString(coverage)).append("\n");
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

