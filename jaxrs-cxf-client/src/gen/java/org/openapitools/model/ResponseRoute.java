package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.ResponseRoutePart;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseRoute  {
  
  @ApiModelProperty(required = true, value = "")
  private Date departureTime;

  @ApiModelProperty(required = true, value = "")
  private Date arrivalTime;

  @ApiModelProperty(required = true, value = "")
  private List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>();
 /**
   * Get departureTime
   * @return departureTime
  **/
  @JsonProperty("departure_time")
  public Date getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  public ResponseRoute departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

 /**
   * Get arrivalTime
   * @return arrivalTime
  **/
  @JsonProperty("arrival_time")
  public Date getArrivalTime() {
    return arrivalTime;
  }

  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  public ResponseRoute arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

 /**
   * Get parts
   * @return parts
  **/
  @JsonProperty("parts")
  public List<ResponseRoutePart> getParts() {
    return parts;
  }

  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }

  public ResponseRoute parts(List<ResponseRoutePart> parts) {
    this.parts = parts;
    return this;
  }

  public ResponseRoute addPartsItem(ResponseRoutePart partsItem) {
    this.parts.add(partsItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

