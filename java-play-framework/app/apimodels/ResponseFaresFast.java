package apimodels;

import apimodels.ResponseFareTicket;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseFaresFast
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseFaresFast   {
  @JsonProperty("tickets_total")
  @NotNull
@Valid

  private List<ResponseFareTicket> ticketsTotal = new ArrayList<>();

  public ResponseFaresFast ticketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
    return this;
  }

  public ResponseFaresFast addTicketsTotalItem(ResponseFareTicket ticketsTotalItem) {
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
    ResponseFaresFast responseFaresFast = (ResponseFaresFast) o;
    return Objects.equals(ticketsTotal, responseFaresFast.ticketsTotal);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ticketsTotal);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

