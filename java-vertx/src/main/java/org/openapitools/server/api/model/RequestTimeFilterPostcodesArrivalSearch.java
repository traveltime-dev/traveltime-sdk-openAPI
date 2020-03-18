package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestRangeFull;
import org.openapitools.server.api.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.server.api.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterPostcodesArrivalSearch   {
  
  private String id;
  private RequestTransportation transportation;
  private Integer travelTime;
  private OffsetDateTime arrivalTime;
  private List<RequestTimeFilterPostcodesProperty> properties = new ArrayList<>();
  private RequestRangeFull range;

  public RequestTimeFilterPostcodesArrivalSearch () {

  }

  public RequestTimeFilterPostcodesArrivalSearch (String id, RequestTransportation transportation, Integer travelTime, OffsetDateTime arrivalTime, List<RequestTimeFilterPostcodesProperty> properties, RequestRangeFull range) {
    this.id = id;
    this.transportation = transportation;
    this.travelTime = travelTime;
    this.arrivalTime = arrivalTime;
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

    
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodesProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodesProperty> properties) {
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
    RequestTimeFilterPostcodesArrivalSearch requestTimeFilterPostcodesArrivalSearch = (RequestTimeFilterPostcodesArrivalSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodesArrivalSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodesArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodesArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeFilterPostcodesArrivalSearch.arrivalTime) &&
        Objects.equals(properties, requestTimeFilterPostcodesArrivalSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodesArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, arrivalTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodesArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
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
