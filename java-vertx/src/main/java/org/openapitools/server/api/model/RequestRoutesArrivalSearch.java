package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.RequestRangeFull;
import org.openapitools.server.api.model.RequestRoutesProperty;
import org.openapitools.server.api.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestRoutesArrivalSearch   {
  
  private String id = ;
  private List<String> departureLocationIds = new ArrayList<>();
  private String arrivalLocationId = ;
  private RequestTransportation transportation = null;
  private OffsetDateTime arrivalTime = ;
  private List<RequestRoutesProperty> properties = new ArrayList<>();
  private RequestRangeFull range = null;

  public RequestRoutesArrivalSearch () {

  }

  public RequestRoutesArrivalSearch (String id, List<String> departureLocationIds, String arrivalLocationId, RequestTransportation transportation, OffsetDateTime arrivalTime, List<RequestRoutesProperty> properties, RequestRangeFull range) {
    this.id = id;
    this.departureLocationIds = departureLocationIds;
    this.arrivalLocationId = arrivalLocationId;
    this.transportation = transportation;
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

    
  @JsonProperty("arrival_time")
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

    
  @JsonProperty("properties")
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestRoutesProperty> properties) {
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
    RequestRoutesArrivalSearch requestRoutesArrivalSearch = (RequestRoutesArrivalSearch) o;
    return Objects.equals(id, requestRoutesArrivalSearch.id) &&
        Objects.equals(departureLocationIds, requestRoutesArrivalSearch.departureLocationIds) &&
        Objects.equals(arrivalLocationId, requestRoutesArrivalSearch.arrivalLocationId) &&
        Objects.equals(transportation, requestRoutesArrivalSearch.transportation) &&
        Objects.equals(arrivalTime, requestRoutesArrivalSearch.arrivalTime) &&
        Objects.equals(properties, requestRoutesArrivalSearch.properties) &&
        Objects.equals(range, requestRoutesArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationIds, arrivalLocationId, transportation, arrivalTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutesArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationIds: ").append(toIndentedString(departureLocationIds)).append("\n");
    sb.append("    arrivalLocationId: ").append(toIndentedString(arrivalLocationId)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
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
