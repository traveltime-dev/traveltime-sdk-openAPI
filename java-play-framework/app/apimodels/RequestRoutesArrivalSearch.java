package apimodels;

import apimodels.RequestRangeFull;
import apimodels.RequestRoutesProperty;
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
 * RequestRoutesArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestRoutesArrivalSearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("departure_location_ids")
  @NotNull
@Size(min=1,max=2)

  private List<String> departureLocationIds = new ArrayList<>();

  @JsonProperty("arrival_location_id")
  @NotNull

  private String arrivalLocationId;

  @JsonProperty("transportation")
  @NotNull
@Valid

  private RequestTransportation transportation;

  @JsonProperty("arrival_time")
  @NotNull
@Valid

  private OffsetDateTime arrivalTime;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<RequestRoutesProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  @Valid

  private RequestRangeFull range;

  public RequestRoutesArrivalSearch id(String id) {
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

  public RequestRoutesArrivalSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestRoutesArrivalSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
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

  public RequestRoutesArrivalSearch arrivalLocationId(String arrivalLocationId) {
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

  public RequestRoutesArrivalSearch transportation(RequestTransportation transportation) {
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

  public RequestRoutesArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

   /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestRoutesArrivalSearch properties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestRoutesArrivalSearch addPropertiesItem(RequestRoutesProperty propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
  }

  public RequestRoutesArrivalSearch range(RequestRangeFull range) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

