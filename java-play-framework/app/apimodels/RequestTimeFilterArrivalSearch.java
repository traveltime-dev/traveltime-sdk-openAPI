package apimodels;

import apimodels.RequestRangeFull;
import apimodels.RequestTimeFilterProperty;
import apimodels.RequestTransportation;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-07-14T11:27:15.847Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterArrivalSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("departure_location_ids")
  private List<String> departureLocationIds = new ArrayList<>();

  @JsonProperty("arrival_location_id")
  private String arrivalLocationId;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("arrival_time")
  private OffsetDateTime arrivalTime;

  @JsonProperty("properties")
  private List<RequestTimeFilterProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  private RequestRangeFull range;

  public RequestTimeFilterArrivalSearch id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterArrivalSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestTimeFilterArrivalSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

   /**
   * Get departureLocationIds
   * @return departureLocationIds
  **/
  @NotNull
@Size(min=1,max=2000)
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }

  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  public RequestTimeFilterArrivalSearch arrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
    return this;
  }

   /**
   * Get arrivalLocationId
   * @return arrivalLocationId
  **/
  @NotNull
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }

  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  public RequestTimeFilterArrivalSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  @NotNull
@Valid
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterArrivalSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  @NotNull
@Min(60)
@Max(14400)
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

   /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  @NotNull
@Valid
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestTimeFilterArrivalSearch properties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterArrivalSearch addPropertiesItem(RequestTimeFilterProperty propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @NotNull
@Valid
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterArrivalSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
  @Valid
  public RequestRangeFull getRange() {
    return range;
  }

  public void setRange(RequestRangeFull range) {
    this.range = range;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

