package apimodels;

import apimodels.Coords;
import apimodels.RequestRangeNoMaxResults;
import apimodels.RequestTimeMapProperty;
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
 * RequestTimeMapArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeMapArrivalSearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("coords")
  @NotNull
@Valid

  private Coords coords;

  @JsonProperty("transportation")
  @NotNull
@Valid

  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  @NotNull
@Min(60)
@Max(14400)

  private Integer travelTime;

  @JsonProperty("arrival_time")
  @NotNull
@Valid

  private OffsetDateTime arrivalTime;

  @JsonProperty("properties")
  @Valid

  private List<RequestTimeMapProperty> properties = null;

  @JsonProperty("range")
  @Valid

  private RequestRangeNoMaxResults range;

  public RequestTimeMapArrivalSearch id(String id) {
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

  public RequestTimeMapArrivalSearch coords(Coords coords) {
    this.coords = coords;
    return this;
  }

   /**
   * Get coords
   * @return coords
  **/
  public Coords getCoords() {
    return coords;
  }

  public void setCoords(Coords coords) {
    this.coords = coords;
  }

  public RequestTimeMapArrivalSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeMapArrivalSearch travelTime(Integer travelTime) {
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

  public RequestTimeMapArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
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

  public RequestTimeMapArrivalSearch properties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeMapArrivalSearch addPropertiesItem(RequestTimeMapProperty propertiesItem) {
    if (properties == null) {
      properties = new ArrayList<>();
    }
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeMapArrivalSearch range(RequestRangeNoMaxResults range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

