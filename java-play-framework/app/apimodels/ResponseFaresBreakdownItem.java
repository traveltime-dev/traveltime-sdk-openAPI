package apimodels;

import apimodels.ResponseFareTicket;
import apimodels.ResponseTransportationMode;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseFaresBreakdownItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T07:53:58.336Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseFaresBreakdownItem   {
  @JsonProperty("modes")
  private List<ResponseTransportationMode> modes = new ArrayList<>();

  @JsonProperty("route_part_ids")
  private List<Integer> routePartIds = new ArrayList<>();

  @JsonProperty("tickets")
  private List<ResponseFareTicket> tickets = new ArrayList<>();

  public ResponseFaresBreakdownItem modes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
    return this;
  }

  public ResponseFaresBreakdownItem addModesItem(ResponseTransportationMode modesItem) {
    modes.add(modesItem);
    return this;
  }

   /**
   * Get modes
   * @return modes
  **/
  @NotNull
@Valid
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }

  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

  public ResponseFaresBreakdownItem routePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
    return this;
  }

  public ResponseFaresBreakdownItem addRoutePartIdsItem(Integer routePartIdsItem) {
    routePartIds.add(routePartIdsItem);
    return this;
  }

   /**
   * Get routePartIds
   * @return routePartIds
  **/
  @NotNull
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }

  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

  public ResponseFaresBreakdownItem tickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
    return this;
  }

  public ResponseFaresBreakdownItem addTicketsItem(ResponseFareTicket ticketsItem) {
    tickets.add(ticketsItem);
    return this;
  }

   /**
   * Get tickets
   * @return tickets
  **/
  @NotNull
@Valid
  public List<ResponseFareTicket> getTickets() {
    return tickets;
  }

  public void setTickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

