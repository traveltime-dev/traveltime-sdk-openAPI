package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.RequestArrivalTimePeriod;
import org.openapitools.vertxweb.server.model.RequestTimeFilterFastProperty;
import org.openapitools.vertxweb.server.model.RequestTransportationFast;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestTimeFilterFastArrivalManyToOneSearch   {
  
  private String id;
  private String arrivalLocationId;
  private List<String> departureLocationIds = new ArrayList<>();
  private RequestTransportationFast transportation;
  private Integer travelTime;
  private RequestArrivalTimePeriod arrivalTimePeriod;
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<>();

  public RequestTimeFilterFastArrivalManyToOneSearch () {

  }

  public RequestTimeFilterFastArrivalManyToOneSearch (String id, String arrivalLocationId, List<String> departureLocationIds, RequestTransportationFast transportation, Integer travelTime, RequestArrivalTimePeriod arrivalTimePeriod, List<RequestTimeFilterFastProperty> properties) {
    this.id = id;
    this.arrivalLocationId = arrivalLocationId;
    this.departureLocationIds = departureLocationIds;
    this.transportation = transportation;
    this.travelTime = travelTime;
    this.arrivalTimePeriod = arrivalTimePeriod;
    this.properties = properties;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("arrival_location_id")
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }
  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

    
  @JsonProperty("departure_location_ids")
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }
  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

    
  @JsonProperty("transportation")
  public RequestTransportationFast getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

    
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

    
  @JsonProperty("arrival_time_period")
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }
  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

    
  @JsonProperty("properties")
  public List<RequestTimeFilterFastProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterFastArrivalManyToOneSearch requestTimeFilterFastArrivalManyToOneSearch = (RequestTimeFilterFastArrivalManyToOneSearch) o;
    return Objects.equals(id, requestTimeFilterFastArrivalManyToOneSearch.id) &&
        Objects.equals(arrivalLocationId, requestTimeFilterFastArrivalManyToOneSearch.arrivalLocationId) &&
        Objects.equals(departureLocationIds, requestTimeFilterFastArrivalManyToOneSearch.departureLocationIds) &&
        Objects.equals(transportation, requestTimeFilterFastArrivalManyToOneSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterFastArrivalManyToOneSearch.travelTime) &&
        Objects.equals(arrivalTimePeriod, requestTimeFilterFastArrivalManyToOneSearch.arrivalTimePeriod) &&
        Objects.equals(properties, requestTimeFilterFastArrivalManyToOneSearch.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, arrivalLocationId, departureLocationIds, transportation, travelTime, arrivalTimePeriod, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalManyToOneSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    arrivalLocationId: ").append(toIndentedString(arrivalLocationId)).append("\n");
    sb.append("    departureLocationIds: ").append(toIndentedString(departureLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTimePeriod: ").append(toIndentedString(arrivalTimePeriod)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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
