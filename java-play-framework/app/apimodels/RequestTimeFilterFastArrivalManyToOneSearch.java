package apimodels;

import apimodels.RequestArrivalTimePeriod;
import apimodels.RequestTimeFilterFastProperty;
import apimodels.RequestTransportationFast;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterFastArrivalManyToOneSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterFastArrivalManyToOneSearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("arrival_location_id")
  @NotNull

  private String arrivalLocationId;

  @JsonProperty("departure_location_ids")
  @NotNull
@Size(min=1,max=100000)

  private List<String> departureLocationIds = new ArrayList<>();

  @JsonProperty("transportation")
  @NotNull
@Valid

  private RequestTransportationFast transportation;

  @JsonProperty("travel_time")
  @NotNull
@Min(60)
@Max(14400)

  private Integer travelTime;

  @JsonProperty("arrival_time_period")
  @NotNull
@Valid

  private RequestArrivalTimePeriod arrivalTimePeriod;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<RequestTimeFilterFastProperty> properties = new ArrayList<>();

  public RequestTimeFilterFastArrivalManyToOneSearch id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

   /**
   * Get arrivalLocationId
   * @return arrivalLocationId
  **/
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

   /**
   * Get departureLocationIds
   * @return departureLocationIds
  **/
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch transportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  public RequestTransportationFast getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
    return this;
  }

   /**
   * Get arrivalTimePeriod
   * @return arrivalTimePeriod
  **/
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }

  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterFastArrivalManyToOneSearch addPropertiesItem(RequestTimeFilterFastProperty propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

