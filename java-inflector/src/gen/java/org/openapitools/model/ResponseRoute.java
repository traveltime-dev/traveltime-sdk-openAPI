package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.ResponseRoutePart;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2020-07-14T11:27:08.641Z[Etc/UTC]")
public class ResponseRoute   {
  @JsonProperty("departure_time")
  private Date departureTime;

  @JsonProperty("arrival_time")
  private Date arrivalTime;

  @JsonProperty("parts")
  private List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>();

  /**
   **/
  public ResponseRoute departureTime(Date departureTime) {
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
  public ResponseRoute arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("arrival_time")
  public Date getArrivalTime() {
    return arrivalTime;
  }
  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  /**
   **/
  public ResponseRoute parts(List<ResponseRoutePart> parts) {
    this.parts = parts;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("parts")
  public List<ResponseRoutePart> getParts() {
    return parts;
  }
  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

