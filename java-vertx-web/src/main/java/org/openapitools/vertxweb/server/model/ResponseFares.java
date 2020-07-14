package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.ResponseFareTicket;
import org.openapitools.vertxweb.server.model.ResponseFaresBreakdownItem;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseFares   {
  
  private List<ResponseFaresBreakdownItem> breakdown = new ArrayList<>();
  private List<ResponseFareTicket> ticketsTotal = new ArrayList<>();

  public ResponseFares () {

  }

  public ResponseFares (List<ResponseFaresBreakdownItem> breakdown, List<ResponseFareTicket> ticketsTotal) {
    this.breakdown = breakdown;
    this.ticketsTotal = ticketsTotal;
  }

    
  @JsonProperty("breakdown")
  public List<ResponseFaresBreakdownItem> getBreakdown() {
    return breakdown;
  }
  public void setBreakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
  }

    
  @JsonProperty("tickets_total")
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
    return Objects.equals(breakdown, responseFares.breakdown) &&
        Objects.equals(ticketsTotal, responseFares.ticketsTotal);
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
