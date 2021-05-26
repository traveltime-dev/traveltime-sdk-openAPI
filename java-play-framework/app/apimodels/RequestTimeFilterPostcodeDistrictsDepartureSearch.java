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
 * RequestTimeFilterPostcodeDistrictsDepartureSearch
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestTimeFilterPostcodeDistrictsDepartureSearch   {
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

  @JsonProperty("departure_time")
  @NotNull
@Valid

  private OffsetDateTime departureTime;

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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch id(String id) {
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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch transportation(RequestTransportation transportation) {
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

  public RequestTimeFilterPostcodeDistrictsDepartureSearch range(RequestRangeFull range) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

