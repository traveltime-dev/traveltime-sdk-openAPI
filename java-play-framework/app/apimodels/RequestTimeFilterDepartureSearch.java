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
 * RequestTimeFilterDepartureSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterDepartureSearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("departure_location_id")
  @NotNull

  private String departureLocationId;

  @JsonProperty("arrival_location_ids")
  @NotNull
@Size(min=1,max=2000)

  private List<String> arrivalLocationIds = new ArrayList<>();

  @JsonProperty("transportation")
  @NotNull
@Valid

  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  @NotNull
@Min(60)
@Max(14400)

  private Integer travelTime;

  @JsonProperty("departure_time")
  @NotNull
@Valid

  private OffsetDateTime departureTime;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<RequestTimeFilterProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  @Valid

  private RequestRangeFull range;

  public RequestTimeFilterDepartureSearch id(String id) {
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

  public RequestTimeFilterDepartureSearch departureLocationId(String departureLocationId) {
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

  public RequestTimeFilterDepartureSearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  public RequestTimeFilterDepartureSearch addArrivalLocationIdsItem(String arrivalLocationIdsItem) {
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

  public RequestTimeFilterDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterDepartureSearch travelTime(Integer travelTime) {
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

  public RequestTimeFilterDepartureSearch departureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
    return this;
  }

   /**
   * Get departureTime
   * @return departureTime
  **/
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
  }

  public RequestTimeFilterDepartureSearch properties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterDepartureSearch addPropertiesItem(RequestTimeFilterProperty propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
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
    RequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch = (RequestTimeFilterDepartureSearch) o;
    return Objects.equals(id, requestTimeFilterDepartureSearch.id) &&
        Objects.equals(departureLocationId, requestTimeFilterDepartureSearch.departureLocationId) &&
        Objects.equals(arrivalLocationIds, requestTimeFilterDepartureSearch.arrivalLocationIds) &&
        Objects.equals(transportation, requestTimeFilterDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeFilterDepartureSearch.departureTime) &&
        Objects.equals(properties, requestTimeFilterDepartureSearch.properties) &&
        Objects.equals(range, requestTimeFilterDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, travelTime, departureTime, properties, range);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
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

