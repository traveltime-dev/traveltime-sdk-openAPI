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
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.model.RequestTransportation;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class RequestTimeFilterPostcodeDistrictsDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("departure_time")
  private Date departureTime;

  @JsonProperty("reachable_postcodes_threshold")
  private Double reachablePostcodesThreshold;

  @JsonProperty("properties")
  private List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<RequestTimeFilterPostcodeDistrictsProperty>();

  @JsonProperty("range")
  private RequestRangeFull range;

  /**
   **/
  public RequestTimeFilterPostcodeDistrictsDepartureSearch id(String id) {
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
  public RequestTimeFilterPostcodeDistrictsDepartureSearch transportation(RequestTransportation transportation) {
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
   * minimum: 60
   * maximum: 14400
   **/
  public RequestTimeFilterPostcodeDistrictsDepartureSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  /**
   **/
  public RequestTimeFilterPostcodeDistrictsDepartureSearch departureTime(Date departureTime) {
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
  public RequestTimeFilterPostcodeDistrictsDepartureSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("reachable_postcodes_threshold")
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }
  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  /**
   **/
  public RequestTimeFilterPostcodeDistrictsDepartureSearch properties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodeDistrictsProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  public RequestTimeFilterPostcodeDistrictsDepartureSearch range(RequestRangeFull range) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestTimeFilterPostcodeDistrictsDepartureSearch requestTimeFilterPostcodeDistrictsDepartureSearch = (RequestTimeFilterPostcodeDistrictsDepartureSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodeDistrictsDepartureSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodeDistrictsDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodeDistrictsDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeFilterPostcodeDistrictsDepartureSearch.departureTime) &&
        Objects.equals(reachablePostcodesThreshold, requestTimeFilterPostcodeDistrictsDepartureSearch.reachablePostcodesThreshold) &&
        Objects.equals(properties, requestTimeFilterPostcodeDistrictsDepartureSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodeDistrictsDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, departureTime, reachablePostcodesThreshold, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeDistrictsDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    transportation: ").append(toIndentedString(transportation)).append("\n");
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
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

