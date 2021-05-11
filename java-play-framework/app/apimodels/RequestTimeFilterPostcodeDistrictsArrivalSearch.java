package apimodels;

import apimodels.RequestRangeFull;
import apimodels.RequestTimeFilterPostcodeDistrictsProperty;
import apimodels.RequestTransportation;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestTimeFilterPostcodeDistrictsArrivalSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterPostcodeDistrictsArrivalSearch   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("transportation")
  @NotNull
@Valid

  private RequestTransportation transportation;

  @JsonProperty("travel_time")
  @NotNull
@Min(60)
@Max(14400)

  private Integer travelTime;

  @JsonProperty("arrival_time")
  @NotNull
@Valid

  private OffsetDateTime arrivalTime;

  @JsonProperty("reachable_postcodes_threshold")
  @NotNull

  private Double reachablePostcodesThreshold;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<>();

  @JsonProperty("range")
  @Valid

  private RequestRangeFull range;

  public RequestTimeFilterPostcodeDistrictsArrivalSearch id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch transportation(RequestTransportation transportation) {
    this.transportation = transportation;
    return this;
  }

   /**
   * Get transportation
   * @return transportation
  **/
  public RequestTransportation getTransportation() {
    return transportation;
  }

  public void setTransportation(RequestTransportation transportation) {
    this.transportation = transportation;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch travelTime(Integer travelTime) {
    this.travelTime = travelTime;
    return this;
  }

   /**
   * Get travelTime
   * minimum: 60
   * maximum: 14400
   * @return travelTime
  **/
  public Integer getTravelTime() {
    return travelTime;
  }

  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch arrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

   /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch reachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
    return this;
  }

   /**
   * Get reachablePostcodesThreshold
   * @return reachablePostcodesThreshold
  **/
  public Double getReachablePostcodesThreshold() {
    return reachablePostcodesThreshold;
  }

  public void setReachablePostcodesThreshold(Double reachablePostcodesThreshold) {
    this.reachablePostcodesThreshold = reachablePostcodesThreshold;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch properties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
    return this;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch addPropertiesItem(RequestTimeFilterPostcodeDistrictsProperty propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public List<RequestTimeFilterPostcodeDistrictsProperty> getProperties() {
    return properties;
  }

  public void setProperties(List<RequestTimeFilterPostcodeDistrictsProperty> properties) {
    this.properties = properties;
  }

  public RequestTimeFilterPostcodeDistrictsArrivalSearch range(RequestRangeFull range) {
    this.range = range;
    return this;
  }

   /**
   * Get range
   * @return range
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

