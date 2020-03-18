package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestRangeFull;
import org.openapitools.server.api.model.RequestTimeFilterProperty;
import org.openapitools.server.api.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterArrivalSearch   {
  
  private String id;
  private List<String> departureLocationIds = new ArrayList<>();
  private String arrivalLocationId;
  private RequestTransportation transportation;
  private Integer travelTime;
  private OffsetDateTime arrivalTime;
  private List<RequestTimeFilterProperty> properties = new ArrayList<>();
  private RequestRangeFull range;

  public RequestTimeFilterArrivalSearch () {

  }

  public RequestTimeFilterArrivalSearch (String id, List<String> departureLocationIds, String arrivalLocationId, RequestTransportation transportation, Integer travelTime, OffsetDateTime arrivalTime, List<RequestTimeFilterProperty> properties, RequestRangeFull range) {
    this.id = id;
    this.departureLocationIds = departureLocationIds;
    this.arrivalLocationId = arrivalLocationId;
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

    
  @JsonProperty("departure_location_ids")
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }
  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

    
  @JsonProperty("arrival_location_id")
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }
  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
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
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterProperty> properties) {
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
    RequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch = (RequestTimeFilterArrivalSearch) o;
    return Objects.equals(id, requestTimeFilterArrivalSearch.id) &&
        Objects.equals(departureLocationIds, requestTimeFilterArrivalSearch.departureLocationIds) &&
        Objects.equals(arrivalLocationId, requestTimeFilterArrivalSearch.arrivalLocationId) &&
        Objects.equals(transportation, requestTimeFilterArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeFilterArrivalSearch.arrivalTime) &&
        Objects.equals(properties, requestTimeFilterArrivalSearch.properties) &&
        Objects.equals(range, requestTimeFilterArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationIds: ").append(toIndentedString(departureLocationIds)).append("\n");
    sb.append("    arrivalLocationId: ").append(toIndentedString(arrivalLocationId)).append("\n");
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
