package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseFaresBreakdownItem;

/**
 * ResponseFares
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-26T18:50:02.407Z[Etc/UTC]")
public class ResponseFares   {
  @JsonProperty("breakdown")
  private List<ResponseFaresBreakdownItem> breakdown = new ArrayList<ResponseFaresBreakdownItem>();

  @JsonProperty("tickets_total")
  private List<ResponseFareTicket> ticketsTotal = new ArrayList<ResponseFareTicket>();

  public ResponseFares breakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
    return this;
  }

  public ResponseFares addBreakdownItem(ResponseFaresBreakdownItem breakdownItem) {
    this.breakdown.add(breakdownItem);
    return this;
  }

   /**
   * Get breakdown
   * @return breakdown
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseFaresBreakdownItem> getBreakdown() {
    return breakdown;
  }

  public void setBreakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
  }

  public ResponseFares ticketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
    return this;
  }

  public ResponseFares addTicketsTotalItem(ResponseFareTicket ticketsTotalItem) {
    this.ticketsTotal.add(ticketsTotalItem);
    return this;
  }

   /**
   * Get ticketsTotal
   * @return ticketsTotal
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseFareTicket> getTicketsTotal() {
    return ticketsTotal;
  }

  public void setTicketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseFares responseFares = (ResponseFares) o;
    return Objects.equals(this.breakdown, responseFares.breakdown) &&
        Objects.equals(this.ticketsTotal, responseFares.ticketsTotal);
  }

  @Override
  public int hashCode() {
    return Objects.hash(breakdown, ticketsTotal);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

