package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestRangeFull;
import org.openapitools.vertxweb.server.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.vertxweb.server.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterPostcodeSectorsArrivalSearch   {
  
  private String id;
  private RequestTransportation transportation;
  private Integer travelTime;
  private OffsetDateTime arrivalTime;
  private Double reachablePostcodesThreshold;
  private List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<>();
  private RequestRangeFull range;

  public RequestTimeFilterPostcodeSectorsArrivalSearch () {

  }

  public RequestTimeFilterPostcodeSectorsArrivalSearch (String id, RequestTransportation transportation, Integer travelTime, OffsetDateTime arrivalTime, Double reachablePostcodesThreshold, List<RequestTimeFilterPostcodeSectorsProperty> properties, RequestRangeFull range) {
    this.id = id;
    this.transportation = transportation;
    this.travelTime = travelTime;
    this.arrivalTime = arrivalTime;
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    this.properties = properties;
    this.range = range;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("transportation")
  public RequestTransportation getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

    
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

    
  @JsonProperty("arrival_time")
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

    
  @JsonProperty("reachable_postcodes_threshold")
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }
  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

    
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodeSectorsProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodeSectorsProperty> properties) {
    this.properties = properties;
  }

    
  @JsonProperty("range")
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
    RequestTimeFilterPostcodeSectorsArrivalSearch requestTimeFilterPostcodeSectorsArrivalSearch = (RequestTimeFilterPostcodeSectorsArrivalSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodeSectorsArrivalSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodeSectorsArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodeSectorsArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeFilterPostcodeSectorsArrivalSearch.arrivalTime) &&
        Objects.equals(reachablePostcodesThreshold, requestTimeFilterPostcodeSectorsArrivalSearch.reachablePostcodesThreshold) &&
        Objects.equals(properties, requestTimeFilterPostcodeSectorsArrivalSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodeSectorsArrivalSearch.range);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
