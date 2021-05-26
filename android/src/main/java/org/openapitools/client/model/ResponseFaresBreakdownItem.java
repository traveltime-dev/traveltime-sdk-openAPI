/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.ResponseFareTicket;
import org.openapitools.client.model.ResponseTransportationMode;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseFaresBreakdownItem {
  
  @SerializedName("modes")
  private List<ResponseTransportationMode> modes = null;
  @SerializedName("route_part_ids")
  private List<Integer> routePartIds = null;
  @SerializedName("tickets")
  private List<ResponseFareTicket> tickets = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }
  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }
  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

  /**
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
    return (this.modes == null ? responseFaresBreakdownItem.modes == null : this.modes.equals(responseFaresBreakdownItem.modes)) &&
        (this.routePartIds == null ? responseFaresBreakdownItem.routePartIds == null : this.routePartIds.equals(responseFaresBreakdownItem.routePartIds)) &&
        (this.tickets == null ? responseFaresBreakdownItem.tickets == null : this.tickets.equals(responseFaresBreakdownItem.tickets));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.modes == null ? 0: this.modes.hashCode());
    result = 31 * result + (this.routePartIds == null ? 0: this.routePartIds.hashCode());
    result = 31 * result + (this.tickets == null ? 0: this.tickets.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseFaresBreakdownItem {\n");
    
    sb.append("  modes: ").append(modes).append("\n");
    sb.append("  routePartIds: ").append(routePartIds).append("\n");
    sb.append("  tickets: ").append(tickets).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
