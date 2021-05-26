package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.RequestRangeFull;
import com.prokarma.pkmst.model.RequestRoutesProperty;
import com.prokarma.pkmst.model.RequestTransportation;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.threeten.bp.OffsetDateTime;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * RequestRoutesDepartureSearch
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class RequestRoutesDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("departure_location_id")
  private String departureLocationId;

  @JsonProperty("arrival_location_ids")
  
  private List<String> arrivalLocationIds = new ArrayList<>();

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("departure_time")
  private OffsetDateTime departureTime;

  @JsonProperty("properties")
  
  private List<RequestRoutesProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  private RequestRangeFull range;

  public RequestRoutesDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestRoutesDepartureSearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

   /**
   * Get departureLocationId
   * @return departureLocationId
  **/
  @ApiModelProperty(required = true, value = "")
  public String getDepartureLocationId() {
    return departureLocationId;
  }

  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  public RequestRoutesDepartureSearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  public RequestRoutesDepartureSearch addArrivalLocationIdsItem(String arrivalLocationIdsItem) {
    this.arrivalLocationIds.add(arrivalLocationIdsItem);
    return this;
  }

   /**
   * Get arrivalLocationIds
   * @return arrivalLocationIds
  **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }

  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  public RequestRoutesDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  @ApiModelProperty(required = true, value = "")
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestRoutesDepartureSearch departureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
    return this;
  }

   /**
   * Get departureTime
   * @return departureTime
  **/
  @ApiModelProperty(required = true, value = "")
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
  }

  public RequestRoutesDepartureSearch properties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestRoutesDepartureSearch addPropertiesItem(RequestRoutesProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
  }

  public RequestRoutesDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
  @ApiModelProperty(value = "")
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
    RequestRoutesDepartureSearch requestRoutesDepartureSearch = (RequestRoutesDepartureSearch) o;
    return Objects.equals(this.id, requestRoutesDepartureSearch.id) &&
        Objects.equals(this.departureLocationId, requestRoutesDepartureSearch.departureLocationId) &&
        Objects.equals(this.arrivalLocationIds, requestRoutesDepartureSearch.arrivalLocationIds) &&
        Objects.equals(this.transportation, requestRoutesDepartureSearch.transportation) &&
        Objects.equals(this.departureTime, requestRoutesDepartureSearch.departureTime) &&
        Objects.equals(this.properties, requestRoutesDepartureSearch.properties) &&
        Objects.equals(this.range, requestRoutesDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRoutesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
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

