package apimodels;

import apimodels.Coords;
import apimodels.RequestLevelOfDetail;
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
 * RequestTimeMapDepartureSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeMapDepartureSearch   {
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

  @JsonProperty("departure_time")
  @NotNull
@Valid

  private OffsetDateTime departureTime;

  @JsonProperty("properties")
  @Valid

  private List<RequestTimeMapProperty> properties = null;

  @JsonProperty("range")
  @Valid

  private RequestRangeNoMaxResults range;

  @JsonProperty("level_of_detail")
  @Valid

  private RequestLevelOfDetail levelOfDetail;

  public RequestTimeMapDepartureSearch id(String id) {
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

  public RequestTimeMapDepartureSearch coords(Coords coords) {
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

  public RequestTimeMapDepartureSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeMapDepartureSearch travelTime(Integer travelTime) {
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

  public RequestTimeMapDepartureSearch departureTime(OffsetDateTime departureTime) {
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

  public RequestTimeMapDepartureSearch properties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeMapDepartureSearch addPropertiesItem(RequestTimeMapProperty propertiesItem) {
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

  public RequestTimeMapDepartureSearch range(RequestRangeNoMaxResults range) {
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

  public RequestTimeMapDepartureSearch levelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
    return this;
  }

   /**
   * Get levelOfDetail
   * @return levelOfDetail
  **/
  public RequestLevelOfDetail getLevelOfDetail() {
    return levelOfDetail;
  }

  public void setLevelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
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
        Objects.equals(range, requestTimeMapDepartureSearch.range) &&
        Objects.equals(levelOfDetail, requestTimeMapDepartureSearch.levelOfDetail);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, departureTime, properties, range, levelOfDetail);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
    sb.append("    levelOfDetail: ").append(toIndentedString(levelOfDetail)).append("\n");
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

