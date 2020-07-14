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
public class RequestTimeFilterFastArrivalOneToManySearch   {
  
  private String id;
  private String departureLocationId;
  private List<String> arrivalLocationIds = new ArrayList<>();
  private RequestTransportationFast transportation;
  private Integer travelTime;
  private RequestArrivalTimePeriod arrivalTimePeriod;
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<>();

  public RequestTimeFilterFastArrivalOneToManySearch () {

  }

  public RequestTimeFilterFastArrivalOneToManySearch (String id, String departureLocationId, List<String> arrivalLocationIds, RequestTransportationFast transportation, Integer travelTime, RequestArrivalTimePeriod arrivalTimePeriod, List<RequestTimeFilterFastProperty> properties) {
    this.id = id;
    this.departureLocationId = departureLocationId;
    this.arrivalLocationIds = arrivalLocationIds;
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
    RequestTimeFilterFastArrivalOneToManySearch requestTimeFilterFastArrivalOneToManySearch = (RequestTimeFilterFastArrivalOneToManySearch) o;
    return Objects.equals(id, requestTimeFilterFastArrivalOneToManySearch.id) &&
        Objects.equals(departureLocationId, requestTimeFilterFastArrivalOneToManySearch.departureLocationId) &&
        Objects.equals(arrivalLocationIds, requestTimeFilterFastArrivalOneToManySearch.arrivalLocationIds) &&
        Objects.equals(transportation, requestTimeFilterFastArrivalOneToManySearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterFastArrivalOneToManySearch.travelTime) &&
        Objects.equals(arrivalTimePeriod, requestTimeFilterFastArrivalOneToManySearch.arrivalTimePeriod) &&
        Objects.equals(properties, requestTimeFilterFastArrivalOneToManySearch.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, travelTime, arrivalTimePeriod, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalOneToManySearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
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
