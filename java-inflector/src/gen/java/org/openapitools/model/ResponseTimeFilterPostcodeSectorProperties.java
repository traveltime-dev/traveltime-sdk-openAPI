package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTravelTimeStatistics;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-26T18:49:59.858Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeSectorProperties   {
  @JsonProperty("travel_time_reachable")
  private ResponseTravelTimeStatistics travelTimeReachable;

  @JsonProperty("travel_time_all")
  private ResponseTravelTimeStatistics travelTimeAll;

  @JsonProperty("coverage")
  private Double coverage;

  /**
   **/
  public ResponseTimeFilterPostcodeSectorProperties travelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    this.travelTimeReachable = travelTimeReachable;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("travel_time_reachable")
  public ResponseTravelTimeStatistics getTravelTimeReachable() {
    return travelTimeReachable;
  }
  public void setTravelTimeReachable(ResponseTravelTimeStatistics travelTimeReachable) {
    this.travelTimeReachable = travelTimeReachable;
  }

  /**
   **/
  public ResponseTimeFilterPostcodeSectorProperties travelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    this.travelTimeAll = travelTimeAll;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("travel_time_all")
  public ResponseTravelTimeStatistics getTravelTimeAll() {
    return travelTimeAll;
  }
  public void setTravelTimeAll(ResponseTravelTimeStatistics travelTimeAll) {
    this.travelTimeAll = travelTimeAll;
  }

  /**
   **/
  public ResponseTimeFilterPostcodeSectorProperties coverage(Double coverage) {
    this.coverage = coverage;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("coverage")
  public Double getCoverage() {
    return coverage;
  }
  public void setCoverage(Double coverage) {
    this.coverage = coverage;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcodeSectorProperties responseTimeFilterPostcodeSectorProperties = (ResponseTimeFilterPostcodeSectorProperties) o;
    return Objects.equals(travelTimeReachable, responseTimeFilterPostcodeSectorProperties.travelTimeReachable) &&
        Objects.equals(travelTimeAll, responseTimeFilterPostcodeSectorProperties.travelTimeAll) &&
        Objects.equals(coverage, responseTimeFilterPostcodeSectorProperties.coverage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTimeReachable, travelTimeAll, coverage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSectorProperties {\n");
    
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

