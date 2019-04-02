package apimodels;

import apimodels.ResponseTravelTimeStatistics;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeDistrictProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-02T12:37:46.315Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeDistrictProperties   {
  @JsonProperty("travel_time_reachable")
  private ResponseTravelTimeStatistics travelTimeReachable = null;

  @JsonProperty("travel_time_all")
  private ResponseTravelTimeStatistics travelTimeAll = null;

  @JsonProperty("coverage")
  private Double coverage;

  public ResponseTimeFilterPostcodeDistrictProperties travelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    this.travelTimeReachable = travelTimeReachable;
    return this;
  }

   /**
   * Get travelTimeReachable
   * @return travelTimeReachable
  **/
  @Valid
  public ResponseTravelTimeStatistics getTravelTimeReachable() {
    return travelTimeReachable;
  }

  public void setTravelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    this.travelTimeReachable = travelTimeReachable;
  }

  public ResponseTimeFilterPostcodeDistrictProperties travelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    this.travelTimeAll = travelTimeAll;
    return this;
  }

   /**
   * Get travelTimeAll
   * @return travelTimeAll
  **/
  @Valid
  public ResponseTravelTimeStatistics getTravelTimeAll() {
    return travelTimeAll;
  }

  public void setTravelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    this.travelTimeAll = travelTimeAll;
  }

  public ResponseTimeFilterPostcodeDistrictProperties coverage(Double coverage) {
    this.coverage = coverage;
    return this;
  }

   /**
   * Get coverage
   * @return coverage
  **/
    public Double getCoverage() {
    return coverage;
  }

  public void setCoverage(Double coverage) {
    this.coverage = coverage;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeDistrictProperties responseTimeFilterPostcodeDistrictProperties = (ResponseTimeFilterPostcodeDistrictProperties) o;
    return Objects.equals(travelTimeReachable, responseTimeFilterPostcodeDistrictProperties.travelTimeReachable) &&
        Objects.equals(travelTimeAll, responseTimeFilterPostcodeDistrictProperties.travelTimeAll) &&
        Objects.equals(coverage, responseTimeFilterPostcodeDistrictProperties.coverage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTimeReachable, travelTimeAll, coverage);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeDistrictProperties {\n");
    
    sb.append("    travelTimeReachable: ").append(toIndentedString(travelTimeReachable)).append("\n");
    sb.append("    travelTimeAll: ").append(toIndentedString(travelTimeAll)).append("\n");
    sb.append("    coverage: ").append(toIndentedString(coverage)).append("\n");
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

