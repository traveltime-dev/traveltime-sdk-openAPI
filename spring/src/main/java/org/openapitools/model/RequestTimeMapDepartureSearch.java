package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestTimeMapDepartureSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-11T08:39:43.646Z[Etc/UTC]")
public class RequestTimeMapDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("coords")
  private Coords coords;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("departure_time")
  @org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime departureTime;

  @JsonProperty("properties")
  @Valid
  private List<RequestTimeMapProperty> properties = null;

  @JsonProperty("range")
  private RequestRangeNoMaxResults range;

  public RequestTimeMapDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

  /**
   * Get id
   * @return id
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

@Min(60) @Max(14400) 
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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
    if (this.properties == null) {
      this.properties = new ArrayList<>();
    }
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
  */
  @ApiModelProperty(value = "")

  @Valid

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
  */
  @ApiModelProperty(value = "")

  @Valid

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
    return Objects.equals(this.id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(this.coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(this.transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(this.departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(this.properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(this.range, requestTimeMapDepartureSearch.range);
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

