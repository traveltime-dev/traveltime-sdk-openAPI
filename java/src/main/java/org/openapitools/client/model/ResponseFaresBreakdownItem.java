/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.ResponseFareTicket;
import org.openapitools.client.model.ResponseTransportationMode;

/**
 * ResponseFaresBreakdownItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-05-11T08:37:47.480Z[Etc/UTC]")
public class ResponseFaresBreakdownItem {
  public static final String SERIALIZED_NAME_MODES = "modes";
  @SerializedName(SERIALIZED_NAME_MODES)
  private List<ResponseTransportationMode> modes = new ArrayList<ResponseTransportationMode>();

  public static final String SERIALIZED_NAME_ROUTE_PART_IDS = "route_part_ids";
  @SerializedName(SERIALIZED_NAME_ROUTE_PART_IDS)
  private List<Integer> routePartIds = new ArrayList<Integer>();

  public static final String SERIALIZED_NAME_TICKETS = "tickets";
  @SerializedName(SERIALIZED_NAME_TICKETS)
  private List<ResponseFareTicket> tickets = new ArrayList<ResponseFareTicket>();


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
  **/
  @ApiModelProperty(required = true, value = "")

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
  **/
  @ApiModelProperty(required = true, value = "")

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
  **/
  @ApiModelProperty(required = true, value = "")

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

