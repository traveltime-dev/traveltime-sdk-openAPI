package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-03-18T08:51:09.112Z[Etc/UTC]")
public class RequestTimeFilterArrivalSearch   {
  

  private String id;

  private List<String> departureLocationIds = new ArrayList<String>();

  private String arrivalLocationId;

  private RequestTransportation transportation;

  private Integer travelTime;

  private Date arrivalTime;

  private List<RequestTimeFilterProperty> properties = new ArrayList<RequestTimeFilterProperty>();

  private RequestRangeFull range;

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("departure_location_ids")
  @NotNull
  @Size(min=1,max=2000)
  public List<String> getDepartureLocationIds() {
    return departureLocationIds;
  }
  public void setDepartureLocationIds(List<String> departureLocationIds) {
    this.departureLocationIds = departureLocationIds;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_location_id")
  @NotNull
  public String getArrivalLocationId() {
    return arrivalLocationId;
  }
  public void setArrivalLocationId(String arrivalLocationId) {
    this.arrivalLocationId = arrivalLocationId;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportation getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  /**
   * minimum: 60
   * maximum: 14400
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  @NotNull
  @Min(60)
  @Max(14400)
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time")
  @NotNull
  public Date getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("range")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

