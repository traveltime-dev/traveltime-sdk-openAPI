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
 * RequestTimeFilterFastArrivalOneToManySearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterFastArrivalOneToManySearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("departure_location_id")
  @NotNull

  private String departureLocationId;

  @JsonProperty("arrival_location_ids")
  @NotNull
@Size(min=1,max=100000)

  private List<String> arrivalLocationIds = new ArrayList<>();

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

  public RequestTimeFilterFastArrivalOneToManySearch id(String id) {
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

  public RequestTimeFilterFastArrivalOneToManySearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

   /**
   * Get departureLocationId
   * @return departureLocationId
  **/
  public String getDepartureLocationId() {
    return departureLocationId;
  }

  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  public RequestTimeFilterFastArrivalOneToManySearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  public RequestTimeFilterFastArrivalOneToManySearch addArrivalLocationIdsItem(String arrivalLocationIdsItem) {
    arrivalLocationIds.add(arrivalLocationIdsItem);
    return this;
  }

   /**
   * Get arrivalLocationIds
   * @return arrivalLocationIds
  **/
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }

  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  public RequestTimeFilterFastArrivalOneToManySearch transportation(RequestTransportationFast transportation) {
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

  public RequestTimeFilterFastArrivalOneToManySearch travelTime(Integer travelTime) {
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

  public RequestTimeFilterFastArrivalOneToManySearch arrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
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

  public RequestTimeFilterFastArrivalOneToManySearch properties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterFastArrivalOneToManySearch addPropertiesItem(RequestTimeFilterFastProperty propertiesItem) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

