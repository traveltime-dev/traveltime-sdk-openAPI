package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestArrivalTimePeriod;
import org.openapitools.model.RequestTimeFilterFastProperty;
import org.openapitools.model.RequestTransportationFast;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyServerCodegen", date = "2020-03-18T08:51:06.736Z[Etc/UTC]")
public class RequestTimeFilterFastArrivalOneToManySearch   {
  
  private String id;
  private String departureLocationId;
  private List<String> arrivalLocationIds = new ArrayList<String>();
  private RequestTransportationFast transportation;
  private Integer travelTime;
  private RequestArrivalTimePeriod arrivalTimePeriod;
  private List<RequestTimeFilterFastProperty> properties = new ArrayList<RequestTimeFilterFastProperty>();

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
  @JsonProperty("departure_location_id")
  @NotNull
  public String getDepartureLocationId() {
    return departureLocationId;
  }
  public void setDepartureLocationId(String departureLocationId) {
    this.departureLocationId = departureLocationId;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_location_ids")
  @NotNull
 @Size(min=1,max=100000)  public List<String> getArrivalLocationIds() {
    return arrivalLocationIds;
  }
  public void setArrivalLocationIds(List<String> arrivalLocationIds) {
    this.arrivalLocationIds = arrivalLocationIds;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("transportation")
  @NotNull
  public RequestTransportationFast getTransportation() {
    return transportation;
  }
  public void setTransportation(RequestTransportationFast transportation) {
    this.transportation = transportation;
  }

  /**
   * minimum: 60
   * maximum: 14400
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  @NotNull
 @Min(60) @Max(14400)  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time_period")
  @NotNull
  public RequestArrivalTimePeriod getArrivalTimePeriod() {
    return arrivalTimePeriod;
  }
  public void setArrivalTimePeriod(RequestArrivalTimePeriod arrivalTimePeriod) {
    this.arrivalTimePeriod = arrivalTimePeriod;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterFastProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterFastProperty> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterFastArrivalOneToManySearch requestTimeFilterFastArrivalOneToManySearch = (RequestTimeFilterFastArrivalOneToManySearch) o;
    return Objects.equals(id, requestTimeFilterFastArrivalOneToManySearch.id) &&
        Objects.equals(departureLocationId, requestTimeFilterFastArrivalOneToManySearch.departureLocationId) &&
        Objects.equals(arrivalLocationIds, requestTimeFilterFastArrivalOneToManySearch.arrivalLocationIds) &&
        Objects.equals(transportation, requestTimeFilterFastArrivalOneToManySearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterFastArrivalOneToManySearch.travelTime) &&
        Objects.equals(arrivalTimePeriod, requestTimeFilterFastArrivalOneToManySearch.arrivalTimePeriod) &&
        Objects.equals(properties, requestTimeFilterFastArrivalOneToManySearch.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, departureLocationId, arrivalLocationIds, transportation, travelTime, arrivalTimePeriod, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFastArrivalOneToManySearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    departureLocationId: ").append(toIndentedString(departureLocationId)).append("\n");
    sb.append("    arrivalLocationIds: ").append(toIndentedString(arrivalLocationIds)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTimePeriod: ").append(toIndentedString(arrivalTimePeriod)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

