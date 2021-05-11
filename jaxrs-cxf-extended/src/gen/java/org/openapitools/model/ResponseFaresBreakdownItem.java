package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseTransportationMode;
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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseFaresBreakdownItem  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseTransportationMode> modes = new ArrayList<ResponseTransportationMode>();

  @ApiModelProperty(required = true, value = "")
  private List<Integer> routePartIds = new ArrayList<Integer>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseFareTicket> tickets = new ArrayList<ResponseFareTicket>();
 /**
  * Get modes
  * @return modes
  */
  @JsonProperty("modes")
  @NotNull
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }

  /**
   * Sets the <code>modes</code> property.
   */
  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

  /**
   * Sets the <code>modes</code> property.
   */
  public ResponseFaresBreakdownItem modes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
    return this;
  }

  /**
   * Adds a new item to the <code>modes</code> list.
   */
  public ResponseFaresBreakdownItem addModesItem(ResponseTransportationMode modesItem) {
    this.modes.add(modesItem);
    return this;
  }

 /**
  * Get routePartIds
  * @return routePartIds
  */
  @JsonProperty("route_part_ids")
  @NotNull
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }

  /**
   * Sets the <code>routePartIds</code> property.
   */
  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

  /**
   * Sets the <code>routePartIds</code> property.
   */
  public ResponseFaresBreakdownItem routePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
    return this;
  }

  /**
   * Adds a new item to the <code>routePartIds</code> list.
   */
  public ResponseFaresBreakdownItem addRoutePartIdsItem(Integer routePartIdsItem) {
    this.routePartIds.add(routePartIdsItem);
    return this;
  }

 /**
  * Get tickets
  * @return tickets
  */
  @JsonProperty("tickets")
  @NotNull
  public List<ResponseFareTicket> getTickets() {
    return tickets;
  }

  /**
   * Sets the <code>tickets</code> property.
   */
  public void setTickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
  }

  /**
   * Sets the <code>tickets</code> property.
   */
  public ResponseFaresBreakdownItem tickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
    return this;
  }

  /**
   * Adds a new item to the <code>tickets</code> list.
   */
  public ResponseFaresBreakdownItem addTicketsItem(ResponseFareTicket ticketsItem) {
    this.tickets.add(ticketsItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

