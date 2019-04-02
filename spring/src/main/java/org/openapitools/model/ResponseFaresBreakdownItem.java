package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseFaresBreakdownItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2019-04-02T12:39:25.365Z[Etc/UTC]")

public class ResponseFaresBreakdownItem   {
  @JsonProperty("modes")
  @Valid
  private List<ResponseTransportationMode> modes = new ArrayList<>();

  @JsonProperty("route_part_ids")
  @Valid
  private List<Integer> routePartIds = new ArrayList<>();

  @JsonProperty("tickets")
  @Valid
  private List<ResponseFareTicket> tickets = new ArrayList<>();

  public ResponseFaresBreakdownItem modes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
    return this;
  }

  public ResponseFaresBreakdownItem addModesItem(ResponseTransportationMode modesItem) {
    this.modes.add(modesItem);
    return this;
  }

  /**
   * Get modes
   * @return modes
  */
  @ApiModelProperty(required = true, value = "")
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
    this.routePartIds.add(routePartIdsItem);
    return this;
  }

  /**
   * Get routePartIds
   * @return routePartIds
  */
  @ApiModelProperty(required = true, value = "")
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
    this.tickets.add(ticketsItem);
    return this;
  }

  /**
   * Get tickets
   * @return tickets
  */
  @ApiModelProperty(required = true, value = "")
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
    return Objects.equals(this.modes, responseFaresBreakdownItem.modes) &&
        Objects.equals(this.routePartIds, responseFaresBreakdownItem.routePartIds) &&
        Objects.equals(this.tickets, responseFaresBreakdownItem.tickets);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

