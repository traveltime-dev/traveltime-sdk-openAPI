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
import org.openapitools.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.model.RequestTransportation;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaUndertowServerCodegen", date = "2020-07-14T11:27:18.263Z[Etc/UTC]")
public class RequestTimeFilterPostcodesDepartureSearch   {
  
  private String id;
  private RequestTransportation transportation;
  private Integer travelTime;
  private Date departureTime;
  private List<RequestTimeFilterPostcodesProperty> properties = new ArrayList<RequestTimeFilterPostcodesProperty>();
  private RequestRangeFull range;

  /**
   **/
  public RequestTimeFilterPostcodesDepartureSearch id(String id) {
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
  public RequestTimeFilterPostcodesDepartureSearch transportation(RequestTransportation transportation) {
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
  public RequestTimeFilterPostcodesDepartureSearch travelTime(Integer travelTime) {
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
  public RequestTimeFilterPostcodesDepartureSearch departureTime(Date departureTime) {
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
  public RequestTimeFilterPostcodesDepartureSearch properties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  public List<RequestTimeFilterPostcodesProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeFilterPostcodesProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  public RequestTimeFilterPostcodesDepartureSearch range(RequestRangeFull range) {
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
    RequestTimeFilterPostcodesDepartureSearch requestTimeFilterPostcodesDepartureSearch = (RequestTimeFilterPostcodesDepartureSearch) o;
    return Objects.equals(id, requestTimeFilterPostcodesDepartureSearch.id) &&
        Objects.equals(transportation, requestTimeFilterPostcodesDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeFilterPostcodesDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeFilterPostcodesDepartureSearch.departureTime) &&
        Objects.equals(properties, requestTimeFilterPostcodesDepartureSearch.properties) &&
        Objects.equals(range, requestTimeFilterPostcodesDepartureSearch.range);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, transportation, travelTime, departureTime, properties, range);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodesDepartureSearch {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

