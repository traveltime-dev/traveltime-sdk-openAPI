package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.Coords;
import org.openapitools.vertxweb.server.model.RequestRangeNoMaxResults;
import org.openapitools.vertxweb.server.model.RequestTimeMapProperty;
import org.openapitools.vertxweb.server.model.RequestTransportation;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeMapDepartureSearch   {
  
  private String id;
  private Coords coords;
  private RequestTransportation transportation;
  private Integer travelTime;
  private OffsetDateTime departureTime;
  private List<RequestTimeMapProperty> properties = new ArrayList<>();
  private RequestRangeNoMaxResults range;

  public RequestTimeMapDepartureSearch () {

  }

  public RequestTimeMapDepartureSearch (String id, Coords coords, RequestTransportation transportation, Integer travelTime, OffsetDateTime departureTime, List<RequestTimeMapProperty> properties, RequestRangeNoMaxResults range) {
    this.id = id;
    this.coords = coords;
    this.transportation = transportation;
    this.travelTime = travelTime;
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

    
  @JsonProperty("departure_time")
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
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
    RequestTimeMapDepartureSearch requestTimeMapDepartureSearch = (RequestTimeMapDepartureSearch) o;
    return Objects.equals(id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(range, requestTimeMapDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeMapDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    coords: ").append(toIndentedString(coords)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
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
