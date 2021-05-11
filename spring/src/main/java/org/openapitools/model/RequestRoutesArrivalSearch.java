package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestRoutesProperty;
import org.openapitools.model.RequestTransportation;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * RequestRoutesArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-11T08:39:43.646Z[Etc/UTC]")
public class RequestRoutesArrivalSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("departure_location_ids")
  @Valid
  private List<String> departureLocationIds = new ArrayList<>();

  @JsonProperty("arrival_location_id")
  private String arrivalLocationId;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("arrival_time")
  @org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime arrivalTime;

  @JsonProperty("properties")
  @Valid
  private List<RequestRoutesProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  private RequestRangeFull range;

  public RequestRoutesArrivalSearch id(String id) {
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

  public RequestRoutesArrivalSearch departureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
    return this;
  }

  public RequestRoutesArrivalSearch addDepartureLocationIdsItem(String departureLocationIdsItem) {
    this.departureLocationIds.add(departureLocationIdsItem);
    return this;
  }

  /**
   * Get departureLocationIds
   * @return departureLocationIds
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

@Size(min=1,max=2) 
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
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull


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

  public RequestRoutesArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

  /**
   * Get arrivalTime
   * @return arrivalTime
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

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
  */
  @ApiModelProperty(value = "")

  @Valid

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
    return Objects.equals(this.id, requestRoutesArrivalSearch.id) &&
        Objects.equals(this.departureLocationIds, requestRoutesArrivalSearch.departureLocationIds) &&
        Objects.equals(this.arrivalLocationId, requestRoutesArrivalSearch.arrivalLocationId) &&
        Objects.equals(this.transportation, requestRoutesArrivalSearch.transportation) &&
        Objects.equals(this.arrivalTime, requestRoutesArrivalSearch.arrivalTime) &&
        Objects.equals(this.properties, requestRoutesArrivalSearch.properties) &&
        Objects.equals(this.range, requestRoutesArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationIds, arrivalLocationId, transportation, arrivalTime, properties, range);
  }

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

