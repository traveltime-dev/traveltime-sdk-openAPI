package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.model.RequestTransportation;

/**
 * RequestTimeFilterPostcodeSectorsArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2019-04-02T12:37:41.410Z[Etc/UTC]")
public class RequestTimeFilterPostcodeSectorsArrivalSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("transportation")
  private RequestTransportation transportation = null;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("arrival_time")
  private Date arrivalTime;

  @JsonProperty("reachable_postcodes_threshold")
  private Double reachablePostcodesThreshold;

  @JsonProperty("properties")
  private List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<RequestTimeFilterPostcodeSectorsProperty>();

  @JsonProperty("range")
  private RequestRangeFull range = null;

  public RequestTimeFilterPostcodeSectorsArrivalSearch id(String id) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch travelTime(Integer travelTime) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

   /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  @ApiModelProperty(required = true, value = "")
  public Date getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
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

  public RequestTimeFilterPostcodeSectorsArrivalSearch properties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch addPropertiesItem(RequestTimeFilterPostcodeSectorsProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestTimeFilterPostcodeSectorsProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
  @ApiModelProperty(value = "")
  public RequestRangeFull getRange() {
    return range;
  }

  public void setRange(RequestRangeFull range) {
    this.range = range;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterPostcodeSectorsArrivalSearch requestTimeFilterPostcodeSectorsArrivalSearch = (RequestTimeFilterPostcodeSectorsArrivalSearch) o;
    return Objects.equals(this.id, requestTimeFilterPostcodeSectorsArrivalSearch.id) &&
        Objects.equals(this.transportation, requestTimeFilterPostcodeSectorsArrivalSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterPostcodeSectorsArrivalSearch.travelTime) &&
        Objects.equals(this.arrivalTime, requestTimeFilterPostcodeSectorsArrivalSearch.arrivalTime) &&
        Objects.equals(this.reachablePostcodesThreshold, requestTimeFilterPostcodeSectorsArrivalSearch.reachablePostcodesThreshold) &&
        Objects.equals(this.properties, requestTimeFilterPostcodeSectorsArrivalSearch.properties) &&
        Objects.equals(this.range, requestTimeFilterPostcodeSectorsArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeSectorsArrivalSearch {\n");
    
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
