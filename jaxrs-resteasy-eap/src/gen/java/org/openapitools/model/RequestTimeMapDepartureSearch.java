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
import org.openapitools.model.Coords;
import org.openapitools.model.RequestLevelOfDetail;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class RequestTimeMapDepartureSearch   {
  

  private String id;

  private Coords coords;

  private RequestTransportation transportation;

  private Integer travelTime;

  private Date departureTime;

  private List<RequestTimeMapProperty> properties = new ArrayList<RequestTimeMapProperty>();

  private RequestRangeNoMaxResults range;

  private RequestLevelOfDetail levelOfDetail;

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
  @JsonProperty("coords")
  @NotNull
  public Coords getCoords() {
    return coords;
  }
  public void setCoords(Coords coords) {
    this.coords = coords;
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
  @JsonProperty("departure_time")
  @NotNull
  public Date getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("properties")
  public List<RequestTimeMapProperty> getProperties() {
    return properties;
  }
  public void setProperties(List<RequestTimeMapProperty> properties) {
    this.properties = properties;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("range")
  public RequestRangeNoMaxResults getRange() {
    return range;
  }
  public void setRange(RequestRangeNoMaxResults range) {
    this.range = range;
  }

  /**
   **/
  
  @ApiModelProperty(value = "")
  @JsonProperty("level_of_detail")
  public RequestLevelOfDetail getLevelOfDetail() {
    return levelOfDetail;
  }
  public void setLevelOfDetail(RequestLevelOfDetail levelOfDetail) {
    this.levelOfDetail = levelOfDetail;
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
    return Objects.equals(id, requestTimeMapDepartureSearch.id) &&
        Objects.equals(coords, requestTimeMapDepartureSearch.coords) &&
        Objects.equals(transportation, requestTimeMapDepartureSearch.transportation) &&
        Objects.equals(travelTime, requestTimeMapDepartureSearch.travelTime) &&
        Objects.equals(departureTime, requestTimeMapDepartureSearch.departureTime) &&
        Objects.equals(properties, requestTimeMapDepartureSearch.properties) &&
        Objects.equals(range, requestTimeMapDepartureSearch.range) &&
        Objects.equals(levelOfDetail, requestTimeMapDepartureSearch.levelOfDetail);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, coords, transportation, travelTime, departureTime, properties, range, levelOfDetail);
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
    sb.append("    levelOfDetail: ").append(toIndentedString(levelOfDetail)).append("\n");
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

