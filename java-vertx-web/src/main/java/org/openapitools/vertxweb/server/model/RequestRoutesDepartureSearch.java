package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestRangeFull;
import org.openapitools.vertxweb.server.model.RequestRoutesProperty;
import org.openapitools.vertxweb.server.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestRoutesDepartureSearch   {
  
  private String id;
  private String departureLocationId;
  private List<String> arrivalLocationIds = new ArrayList<>();
  private RequestTransportation transportation;
  private OffsetDateTime departureTime;
  private List<RequestRoutesProperty> properties = new ArrayList<>();
  private RequestRangeFull range;

  public RequestRoutesDepartureSearch () {

  }

  public RequestRoutesDepartureSearch (String id, String departureLocationId, List<String> arrivalLocationIds, RequestTransportation transportation, OffsetDateTime departureTime, List<RequestRoutesProperty> properties, RequestRangeFull range) {
    this.id = id;
    this.departureLocationId = departureLocationId;
    this.arrivalLocationIds = arrivalLocationIds;
    this.transportation = transportation;
    this.departureTime = departureTime;
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

    
  @JsonProperty("departure_location_id")
  public String getDepartureLocationId() {
    return departureLocationId;
  }
  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

    
  @JsonProperty("arrival_location_ids")
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }
  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

    
  @JsonProperty("transportation")
  public RequestTransportation getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

    
  @JsonProperty("departure_time")
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
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
    RequestRoutesDepartureSearch requestRoutesDepartureSearch = (RequestRoutesDepartureSearch) o;
    return Objects.equals(id, requestRoutesDepartureSearch.id) &&
        Objects.equals(departureLocationId, requestRoutesDepartureSearch.departureLocationId) &&
        Objects.equals(arrivalLocationIds, requestRoutesDepartureSearch.arrivalLocationIds) &&
        Objects.equals(transportation, requestRoutesDepartureSearch.transportation) &&
        Objects.equals(departureTime, requestRoutesDepartureSearch.departureTime) &&
        Objects.equals(properties, requestRoutesDepartureSearch.properties) &&
        Objects.equals(range, requestRoutesDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
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
