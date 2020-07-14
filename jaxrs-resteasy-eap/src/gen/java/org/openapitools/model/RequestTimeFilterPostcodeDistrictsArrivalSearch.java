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
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-07-14T11:27:37.641Z[Etc/UTC]")
public class RequestTimeFilterPostcodeDistrictsArrivalSearch   {
  

  private String id;

  private RequestTransportation transportation;

  private Integer travelTime;

  private Date arrivalTime;

  private Double reachablePostcodesThreshold;

  private List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<RequestTimeFilterPostcodeDistrictsProperty>();

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
 @Min(60) @Max(14400)  public Integer getTravelTime() {
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
  @JsonProperty("reachable_postcodes_threshold")
  @NotNull
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }
  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public List<RequestTimeFilterPostcodeDistrictsProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
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
    RequestTimeFilterPostcodeDistrictsArrivalSearch requestTimeFilterPostcodeDistrictsArrivalSearch = (RequestTimeFilterPostcodeDistrictsArrivalSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodeDistrictsArrivalSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodeDistrictsArrivalSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodeDistrictsArrivalSearch.travelTime) &&
        Objects.equals(arrivalTime, requestTimeFilterPostcodeDistrictsArrivalSearch.arrivalTime) &&
        Objects.equals(reachablePostcodesThreshold, requestTimeFilterPostcodeDistrictsArrivalSearch.reachablePostcodesThreshold) &&
        Objects.equals(properties, requestTimeFilterPostcodeDistrictsArrivalSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodeDistrictsArrivalSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeDistrictsArrivalSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
    sb.append("    reachablePostcodesThreshold: ").append(toIndentedString(reachablePostcodesThreshold)).append("\n");
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

