package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseFareTicket;
import org.openapitools.server.api.model.ResponseTransportationMode;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseFaresBreakdownItem   {
  
  private List<ResponseTransportationMode> modes = new ArrayList<>();
  private List<Integer> routePartIds = new ArrayList<>();
  private List<ResponseFareTicket> tickets = new ArrayList<>();

  public ResponseFaresBreakdownItem () {

  }

  public ResponseFaresBreakdownItem (List<ResponseTransportationMode> modes, List<Integer> routePartIds, List<ResponseFareTicket> tickets) {
    this.modes = modes;
    this.routePartIds = routePartIds;
    this.tickets = tickets;
  }

    
  @JsonProperty("modes")
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }
  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

    
  @JsonProperty("route_part_ids")
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }
  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

    
  @JsonProperty("tickets")
  public List<ResponseFareTicket> getTickets() {
    return tickets;
  }
  public void setTickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseFaresBreakdownItem responseFaresBreakdownItem = (ResponseFaresBreakdownItem) o;
    return Objects.equals(modes, responseFaresBreakdownItem.modes) &&
        Objects.equals(routePartIds, responseFaresBreakdownItem.routePartIds) &&
        Objects.equals(tickets, responseFaresBreakdownItem.tickets);
  }

  @Override
  public int hashCode() {
    return Objects.hash(modes, routePartIds, tickets);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseFaresBreakdownItem {\n");
    
    sb.append("    modes: ").append(toIndentedString(modes)).append("\n");
    sb.append("    routePartIds: ").append(toIndentedString(routePartIds)).append("\n");
    sb.append("    tickets: ").append(toIndentedString(tickets)).append("\n");
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
