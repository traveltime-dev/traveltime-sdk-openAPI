package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseFareTicket;
import org.openapitools.model.ResponseTransportationMode;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-05-24T09:07:09.676Z[Etc/UTC]")
public class ResponseFaresBreakdownItem   {
  

  private List<ResponseTransportationMode> modes = new ArrayList<ResponseTransportationMode>();

  private List<Integer> routePartIds = new ArrayList<Integer>();

  private List<ResponseFareTicket> tickets = new ArrayList<ResponseFareTicket>();

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("modes")
  @NotNull
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }
  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("route_part_ids")
  @NotNull
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }
  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("tickets")
  @NotNull
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

