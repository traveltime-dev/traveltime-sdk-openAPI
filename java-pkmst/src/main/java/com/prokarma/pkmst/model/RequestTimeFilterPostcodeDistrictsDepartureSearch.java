package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.RequestRangeFull;
import com.prokarma.pkmst.model.RequestTimeFilterPostcodeDistrictsProperty;
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
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class RequestTimeFilterPostcodeDistrictsDepartureSearch   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("transportation")
  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  private Integer travelTime;

  @JsonProperty("departure_time")
  private OffsetDateTime departureTime;

  @JsonProperty("reachable_postcodes_threshold")
  private Double reachablePostcodesThreshold;

  @JsonProperty("properties")
  
  private List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  private RequestRangeFull range;

  public RequestTimeFilterPostcodeDistrictsDepartureSearch id(String id) {
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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  @ApiModelProperty(required = true, value = "")
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterPostcodeDistrictsDepartureSearch departureTime(OffsetDateTime departureTime) {
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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

   /**
   * Get reachablePostcodesThreshold
   * @return reachablePostcodesThreshold
  **/
  @ApiModelProperty(required = true, value = "")
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }

  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  public RequestTimeFilterPostcodeDistrictsDepartureSearch properties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeDistrictsDepartureSearch addPropertiesItem(RequestTimeFilterPostcodeDistrictsProperty propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<RequestTimeFilterPostcodeDistrictsProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeDistrictsDepartureSearch range(RequestRangeFull range) {
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
    RequestTimeFilterPostcodeDistrictsDepartureSearch requestTimeFilterPostcodeDistrictsDepartureSearch = (RequestTimeFilterPostcodeDistrictsDepartureSearch) o;
    return Objects.equals(this.id, requestTimeFilterPostcodeDistrictsDepartureSearch.id) &&
        Objects.equals(this.transportation, requestTimeFilterPostcodeDistrictsDepartureSearch.transportation) &&
        Objects.equals(this.travelTime, requestTimeFilterPostcodeDistrictsDepartureSearch.travelTime) &&
        Objects.equals(this.departureTime, requestTimeFilterPostcodeDistrictsDepartureSearch.departureTime) &&
        Objects.equals(this.reachablePostcodesThreshold, requestTimeFilterPostcodeDistrictsDepartureSearch.reachablePostcodesThreshold) &&
        Objects.equals(this.properties, requestTimeFilterPostcodeDistrictsDepartureSearch.properties) &&
        Objects.equals(this.range, requestTimeFilterPostcodeDistrictsDepartureSearch.range);
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

