package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseFareTicket;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseFaresFast
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class ResponseFaresFast   {
  @JsonProperty("tickets_total")
  
  private List<ResponseFareTicket> ticketsTotal = new ArrayList<>();

  public ResponseFaresFast ticketsTotal(List<ResponseFareTicket> ticketsTotal) {
    this.ticketsTotal = ticketsTotal;
    return this;
  }

  public ResponseFaresFast addTicketsTotalItem(ResponseFareTicket ticketsTotalItem) {
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
    ResponseFaresFast responseFaresFast = (ResponseFaresFast) o;
    return Objects.equals(this.ticketsTotal, responseFaresFast.ticketsTotal);
  }

  @Override
  public int hashCode() {
    return Objects.hash(ticketsTotal);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

