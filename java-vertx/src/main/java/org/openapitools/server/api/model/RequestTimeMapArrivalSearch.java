package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.Coords;
import org.openapitools.server.api.model.RequestRangeNoMaxResults;
import org.openapitools.server.api.model.RequestTimeMapProperty;
import org.openapitools.server.api.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestTimeMapArrivalSearch   {
  
  private String id;
  private Coords coords = null;
  private RequestTransportation transportation = null;
  private Integer travelTime;
  private OffsetDateTime arrivalTime;
  private List<RequestTimeMapProperty> properties = new ArrayList<>();
  private RequestRangeNoMaxResults range = null;

  public RequestTimeMapArrivalSearch () {

  }

  public RequestTimeMapArrivalSearch (String id, Coords coords, RequestTransportation transportation, Integer travelTime, OffsetDateTime arrivalTime, List<RequestTimeMapProperty> properties, RequestRangeNoMaxResults range) {
    this.id = id;
    this.coords = coords;
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

    
  @JsonProperty("coords")
  public Coords getCoords() {
    return coords;
  }
  public void setCoords(Coords coords) {
    this.coords = coords;
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
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

    
  @JsonProperty("range")
  public RequestRangeNoMaxResults getRange() {
    return range;
  }
  public void setRange(RequestRangeNoMaxResults range) {
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
    RequestTimeMapArrivalSearch requestTimeMapArrivalSearch = (RequestTimeMapArrivalSearch) o;
    return Objects.equals(id, requestTimeMapArrivalSearch.id) &&
        Objects.equals(coords, requestTimeMapArrivalSearch.coords) &&
        Objects.equals(transportation, requestTimeMapArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeMapArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeMapArrivalSearch.arrivalTime) &&
        Objects.equals(properties, requestTimeMapArrivalSearch.properties) &&
        Objects.equals(range, requestTimeMapArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, arrivalTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMapArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
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
