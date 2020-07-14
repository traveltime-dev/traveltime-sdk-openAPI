package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestRoutesProperty;
import org.openapitools.model.RequestTransportation;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2020-07-14T11:27:08.641Z[Etc/UTC]")
public class RequestRoutesDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("departure_location_id")
  private String departureLocationId;

  @JsonProperty("arrival_location_ids")
  private List<String> arrivalLocationIds = new ArrayList<String>();

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("departure_time")
  private Date departureTime;

  @JsonProperty("properties")
  private List<RequestRoutesProperty> properties = new ArrayList<RequestRoutesProperty>();

  @JsonProperty("range")
  private RequestRangeFull range;

  /**
   **/
  public RequestRoutesDepartureSearch id(String id) {
    this.id = id;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  public RequestRoutesDepartureSearch departureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_location_id")
  public String getDepartureLocationId() {
    return departureLocationId;
  }
  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  /**
   **/
  public RequestRoutesDepartureSearch arrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_location_ids")
  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }
  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  /**
   **/
  public RequestRoutesDepartureSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("transportation")
  public RequestTransportation getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  /**
   **/
  public RequestRoutesDepartureSearch departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_time")
  public Date getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  /**
   **/
  public RequestRoutesDepartureSearch properties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  public List<RequestRoutesProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestRoutesProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  public RequestRoutesDepartureSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("range")
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
    RequestRoutesDepartureSearch requestRoutesDepartureSearch = (RequestRoutesDepartureSearch) o;
    return Objects.equals(id, requestRoutesDepartureSearch.id) &&
        Objects.equals(departureLocationId, requestRoutesDepartureSearch.departureLocationId) &&
        Objects.equals(arrivalLocationIds, requestRoutesDepartureSearch.arrivalLocationIds) &&
        Objects.equals(transportation, requestRoutesDepartureSearch.transportation) &&
        Objects.equals(departureTime, requestRoutesDepartureSearch.departureTime) &&
        Objects.equals(properties, requestRoutesDepartureSearch.properties) &&
        Objects.equals(range, requestRoutesDepartureSearch.range);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

