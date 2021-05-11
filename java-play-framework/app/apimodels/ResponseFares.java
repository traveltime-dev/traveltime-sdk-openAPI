package apimodels;

import apimodels.ResponseFareTicket;
import apimodels.ResponseFaresBreakdownItem;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseFares
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseFares   {
  @JsonProperty("breakdown")
  @NotNull
@Valid

  private List<ResponseFaresBreakdownItem> breakdown = new ArrayList<>();

  @JsonProperty("tickets_total")
  @NotNull
@Valid

  private List<ResponseFareTicket> ticketsTotal = new ArrayList<>();

  public ResponseFares breakdown(List<ResponseFaresBreakdownItem> breakdown) {
    this.breakdown = breakdown;
    return this;
  }

  public ResponseFares addBreakdownItem(ResponseFaresBreakdownItem breakdownItem) {
    breakdown.add(breakdownItem);
    return this;
  }

   /**
   * Get breakdown
   * @return breakdown
  **/
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
    ticketsTotal.add(ticketsTotalItem);
    return this;
  }

   /**
   * Get ticketsTotal
   * @return ticketsTotal
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

