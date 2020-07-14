package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.ResponseFaresFast;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeFilterFastProperties   {
  
  private Integer travelTime;
  private ResponseFaresFast fares;

  public ResponseTimeFilterFastProperties () {

  }

  public ResponseTimeFilterFastProperties (Integer travelTime, ResponseFaresFast fares) {
    this.travelTime = travelTime;
    this.fares = fares;
  }

    
  @JsonProperty("travel_time")
  public Integer getTravelTime() {
    return travelTime;
  }
  public void setTravelTime(Integer travelTime) {
    this.travelTime = travelTime;
  }

    
  @JsonProperty("fares")
  public ResponseFaresFast getFares() {
    return fares;
  }
  public void setFares(ResponseFaresFast fares) {
    this.fares = fares;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterFastProperties responseTimeFilterFastProperties = (ResponseTimeFilterFastProperties) o;
    return Objects.equals(travelTime, responseTimeFilterFastProperties.travelTime) &&
        Objects.equals(fares, responseTimeFilterFastProperties.fares);
  }

  @Override
  public int hashCode() {
    return Objects.hash(travelTime, fares);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFastProperties {\n");
    
    sb.append("    travelTime: ").append(toIndentedString(travelTime)).append("\n");
    sb.append("    fares: ").append(toIndentedString(fares)).append("\n");
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
