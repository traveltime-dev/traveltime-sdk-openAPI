/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
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
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.client.model.RequestTransportation;
import org.threeten.bp.OffsetDateTime;

/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-11T08:37:47.480Z[Etc/UTC]")
public class RequestTimeFilterPostcodeDistrictsArrivalSearch {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_TRANSPORTATION = "transportation";
  @SerializedName(SERIALIZED_NAME_TRANSPORTATION)
  private RequestTransportation transportation;

  public static final String SERIALIZED_NAME_TRAVEL_TIME = "travel_time";
  @SerializedName(SERIALIZED_NAME_TRAVEL_TIME)
  private Integer travelTime;

  public static final String SERIALIZED_NAME_ARRIVAL_TIME = "arrival_time";
  @SerializedName(SERIALIZED_NAME_ARRIVAL_TIME)
  private OffsetDateTime arrivalTime;

  public static final String SERIALIZED_NAME_REACHABLE_POSTCODES_THRESHOLD = "reachable_postcodes_threshold";
  @SerializedName(SERIALIZED_NAME_REACHABLE_POSTCODES_THRESHOLD)
  private Double reachablePostcodesThreshold;

  public static final String SERIALIZED_NAME_PROPERTIES = "properties";
  @SerializedName(SERIALIZED_NAME_PROPERTIES)
  private List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<RequestTimeFilterPostcodeDistrictsProperty>();

  public static final String SERIALIZED_NAME_RANGE = "range";
  @SerializedName(SERIALIZED_NAME_RANGE)
  private RequestRangeFull range;


  public RequestTimeFilterPostcodeDistrictsArrivalSearch id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public RequestTimeFilterPostcodeDistrictsArrivalSearch transportation(RequestTransportation transportation) {
    
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  @ApiModelProperty(required = true, value = "")

  public RequestTransportation getTransportation() {
    return transportation;
  }


  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }


  public RequestTimeFilterPostcodeDistrictsArrivalSearch travelTime(Integer travelTime) {
    
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  @ApiModelProperty(required = true, value = "")

  public Integer getTravelTime() {
    return travelTime;
  }


  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }


  public RequestTimeFilterPostcodeDistrictsArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
    
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


  public RequestTimeFilterPostcodeDistrictsArrivalSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

   /**
   * Get reachablePostcodesThreshold
   * @return reachablePostcodesThreshold
  **/
  @ApiModelProperty(required = true, value = "")

  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }


  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }


  public RequestTimeFilterPostcodeDistrictsArrivalSearch properties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch addPropertiesItem(RequestTimeFilterPostcodeDistrictsProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")

  public List<RequestTimeFilterPostcodeDistrictsProperty> getProperties() {
    return properties;
  }


  public void setProperties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
  }


  public RequestTimeFilterPostcodeDistrictsArrivalSearch range(RequestRangeFull range) {
    
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public RequestRangeFull getRange() {
    return range;
  }


  public void setRange(RequestRangeFull range) {
    this.range = range;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterPostcodeDistrictsArrivalSearch requestTimeFilterPostcodeDistrictsArrivalSearch = (RequestTimeFilterPostcodeDistrictsArrivalSearch) o;
    return Objects.equals(this.id, requestTimeFilterPostcodeDistrictsArrivalSearch.id) &&
        Objects.equals(this.transportation, requestTimeFilterPostcodeDistrictsArrivalSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterPostcodeDistrictsArrivalSearch.travelTime) &&
        Objects.equals(this.arrivalTime, requestTimeFilterPostcodeDistrictsArrivalSearch.arrivalTime) &&
        Objects.equals(this.reachablePostcodesThreshold, requestTimeFilterPostcodeDistrictsArrivalSearch.reachablePostcodesThreshold) &&
        Objects.equals(this.properties, requestTimeFilterPostcodeDistrictsArrivalSearch.properties) &&
        Objects.equals(this.range, requestTimeFilterPostcodeDistrictsArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeDistrictsArrivalSearch {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
    sb.append("    reachablePostcodesThreshold: ").append(toIndentedString(reachablePostcodesThreshold)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
    sb.append("    range: ").append(toIndentedString(range)).append("\n");
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

