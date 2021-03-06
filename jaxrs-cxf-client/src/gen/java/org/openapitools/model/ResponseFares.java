package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseFaresBreakdownItem;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseFares  {
  
  @ApiModelProperty(required = true, value = "")
  private List<ResponseFaresBreakdownItem> breakdown = new ArrayList<ResponseFaresBreakdownItem>();

  @ApiModelProperty(required = true, value = "")
  private List<ResponseFareTicket> ticketsTotal = new ArrayList<ResponseFareTicket>();
 /**
   * Get breakdown
   * @return breakdown
  **/
  @JsonProperty("breakdown")
  public List<ResponseFaresBreakdownItem> getBreakdown() {
    return breakdown;
  }

  public void setBreakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
  }

  public ResponseFares breakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
    return this;
  }

  public ResponseFares addBreakdownItem(ResponseFaresBreakdownItem breakdownItem) {
    this.breakdown.add(breakdownItem);
    return this;
  }

 /**
   * Get ticketsTotal
   * @return ticketsTotal
  **/
  @JsonProperty("tickets_total")
  public List<ResponseFareTicket> getTicketsTotal() {
    return ticketsTotal;
  }

  public void setTicketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
  }

  public ResponseFares ticketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
    return this;
  }

  public ResponseFares addTicketsTotalItem(ResponseFareTicket ticketsTotalItem) {
    this.ticketsTotal.add(ticketsTotalItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseFares {\n");
    
    sb.append("    breakdown: ").append(toIndentedString(breakdown)).append("\n");
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

