package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseRoutePart;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseRoute   {
  
  private OffsetDateTime departureTime;
  private OffsetDateTime arrivalTime;
  private List<ResponseRoutePart> parts = new ArrayList<>();

  public ResponseRoute () {

  }

  public ResponseRoute (OffsetDateTime departureTime, OffsetDateTime arrivalTime, List<ResponseRoutePart> parts) {
    this.departureTime = departureTime;
    this.arrivalTime = arrivalTime;
    this.parts = parts;
  }

    
  @JsonProperty("departure_time")
  public OffsetDateTime getDepartureTime() {
    return departureTime;
  }
  public void setDepartureTime(OffsetDateTime departureTime) {
    this.departureTime = departureTime;
  }

    
  @JsonProperty("arrival_time")
  public OffsetDateTime getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(OffsetDateTime arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

    
  @JsonProperty("parts")
  public List<ResponseRoutePart> getParts() {
    return parts;
  }
  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoute responseRoute = (ResponseRoute) o;
    return Objects.equals(departureTime, responseRoute.departureTime) &&
        Objects.equals(arrivalTime, responseRoute.arrivalTime) &&
        Objects.equals(parts, responseRoute.parts);
  }

  @Override
  public int hashCode() {
    return Objects.hash(departureTime, arrivalTime, parts);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoute {\n");
    
    sb.append("    departureTime: ").append(toIndentedString(departureTime)).append("\n");
    sb.append("    arrivalTime: ").append(toIndentedString(arrivalTime)).append("\n");
    sb.append("    parts: ").append(toIndentedString(parts)).append("\n");
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
