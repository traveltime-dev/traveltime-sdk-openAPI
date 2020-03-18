package org.openapitools.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.openapitools.model.ResponseRoutePart;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseRoute  {
  
  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date departureTime;

  @ApiModelProperty(required = true, value = "")
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSX")
  private Date arrivalTime;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>();
 /**
  * Get departureTime
  * @return departureTime
  */
  @JsonProperty("departure_time")
  @NotNull
  public Date getDepartureTime() {
    return departureTime;
  }

  /**
   * Sets the <code>departureTime</code> property.
   */
  public void setDepartureTime(Date departureTime) {
    this.departureTime = departureTime;
  }

  /**
   * Sets the <code>departureTime</code> property.
   */
  public ResponseRoute departureTime(Date departureTime) {
    this.departureTime = departureTime;
    return this;
  }

 /**
  * Get arrivalTime
  * @return arrivalTime
  */
  @JsonProperty("arrival_time")
  @NotNull
  public Date getArrivalTime() {
    return arrivalTime;
  }

  /**
   * Sets the <code>arrivalTime</code> property.
   */
  public void setArrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
  }

  /**
   * Sets the <code>arrivalTime</code> property.
   */
  public ResponseRoute arrivalTime(Date arrivalTime) {
    this.arrivalTime = arrivalTime;
    return this;
  }

 /**
  * Get parts
  * @return parts
  */
  @JsonProperty("parts")
  @NotNull
  public List<ResponseRoutePart> getParts() {
    return parts;
  }

  /**
   * Sets the <code>parts</code> property.
   */
  public void setParts(List<ResponseRoutePart> parts) {
    this.parts = parts;
  }

  /**
   * Sets the <code>parts</code> property.
   */
  public ResponseRoute parts(List<ResponseRoutePart> parts) {
    this.parts = parts;
    return this;
  }

  /**
   * Adds a new item to the <code>parts</code> list.
   */
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

