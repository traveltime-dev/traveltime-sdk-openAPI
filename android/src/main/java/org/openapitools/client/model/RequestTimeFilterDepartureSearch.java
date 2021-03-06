/**
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

import java.util.*;
import java.util.Date;
import org.openapitools.client.model.RequestRangeFull;
import org.openapitools.client.model.RequestTimeFilterProperty;
import org.openapitools.client.model.RequestTransportation;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class RequestTimeFilterDepartureSearch {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("departure_location_id")
  private String departureLocationId = null;
  @SerializedName("arrival_location_ids")
  private List<String> arrivalLocationIds = null;
  @SerializedName("transportation")
  private RequestTransportation transportation = null;
  @SerializedName("travel_time")
  private Integer travelTime = null;
  @SerializedName("departure_time")
  private Date departureTime = null;
  @SerializedName("properties")
  private List<RequestTimeFilterProperty> properties = null;
  @SerializedName("range")
  private RequestRangeFull range = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getDepartureLocationId() {
    return departureLocationId;
  }
  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }
  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public RequestTransportation getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  /**
   * minimum: 60
   * maximum: 14400
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Date getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
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
    RequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch = (RequestTimeFilterDepartureSearch) o;
    return (this.id == null ? requestTimeFilterDepartureSearch.id == null : this.id.equals(requestTimeFilterDepartureSearch.id)) &&
        (this.departureLocationId == null ? requestTimeFilterDepartureSearch.departureLocationId == null : this.departureLocationId.equals(requestTimeFilterDepartureSearch.departureLocationId)) &&
        (this.arrivalLocationIds == null ? requestTimeFilterDepartureSearch.arrivalLocationIds == null : this.arrivalLocationIds.equals(requestTimeFilterDepartureSearch.arrivalLocationIds)) &&
        (this.transportation == null ? requestTimeFilterDepartureSearch.transportation == null : this.transportation.equals(requestTimeFilterDepartureSearch.transportation)) &&
        (this.travelTime == null ? requestTimeFilterDepartureSearch.travelTime == null : this.travelTime.equals(requestTimeFilterDepartureSearch.travelTime)) &&
        (this.departureTime == null ? requestTimeFilterDepartureSearch.departureTime == null : this.departureTime.equals(requestTimeFilterDepartureSearch.departureTime)) &&
        (this.properties == null ? requestTimeFilterDepartureSearch.properties == null : this.properties.equals(requestTimeFilterDepartureSearch.properties)) &&
        (this.range == null ? requestTimeFilterDepartureSearch.range == null : this.range.equals(requestTimeFilterDepartureSearch.range));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.departureLocationId == null ? 0: this.departureLocationId.hashCode());
    result = 31 * result + (this.arrivalLocationIds == null ? 0: this.arrivalLocationIds.hashCode());
    result = 31 * result + (this.transportation == null ? 0: this.transportation.hashCode());
    result = 31 * result + (this.travelTime == null ? 0: this.travelTime.hashCode());
    result = 31 * result + (this.departureTime == null ? 0: this.departureTime.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    result = 31 * result + (this.range == null ? 0: this.range.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterDepartureSearch {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  departureLocationId: ").append(departureLocationId).append("\n");
    sb.append("  arrivalLocationIds: ").append(arrivalLocationIds).append("\n");
    sb.append("  transportation: ").append(transportation).append("\n");
    sb.append("  travelTime: ").append(travelTime).append("\n");
    sb.append("  departureTime: ").append(departureTime).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("  range: ").append(range).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
