package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
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
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseFaresFast  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseFareTicket> ticketsTotal = new ArrayList<ResponseFareTicket>();
 /**
   * Get ticketsTotal
   * @return ticketsTotal
  **/
  @JsonProperty("tickets_total")
  @NotNull
  public List<ResponseFareTicket> getTicketsTotal() {
    return ticketsTotal;
  }

  public void setTicketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
  }

  public ResponseFaresFast ticketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
    return this;
  }

  public ResponseFaresFast addTicketsTotalItem(ResponseFareTicket ticketsTotalItem) {
    this.ticketsTotal.add(ticketsTotalItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseFaresFast {\n");
    
    sb.append("    ticketsTotal: ").append(toIndentedString(ticketsTotal)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

