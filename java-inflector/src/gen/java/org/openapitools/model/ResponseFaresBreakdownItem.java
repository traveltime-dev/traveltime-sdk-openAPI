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





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2020-03-18T07:53:50.580Z[Etc/UTC]")
public class ResponseFaresBreakdownItem   {
  @JsonProperty("modes")
  private List<ResponseTransportationMode> modes = new ArrayList<ResponseTransportationMode>();

  @JsonProperty("route_part_ids")
  private List<Integer> routePartIds = new ArrayList<Integer>();

  @JsonProperty("tickets")
  private List<ResponseFareTicket> tickets = new ArrayList<ResponseFareTicket>();

  /**
   **/
  public ResponseFaresBreakdownItem modes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("modes")
  public List<ResponseTransportationMode> getModes() {
    return modes;
  }
  public void setModes(List<ResponseTransportationMode> modes) {
    this.modes = modes;
  }

  /**
   **/
  public ResponseFaresBreakdownItem routePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("route_part_ids")
  public List<Integer> getRoutePartIds() {
    return routePartIds;
  }
  public void setRoutePartIds(List<Integer> routePartIds) {
    this.routePartIds = routePartIds;
  }

  /**
   **/
  public ResponseFaresBreakdownItem tickets(List<ResponseFareTicket> tickets) {
    this.tickets = tickets;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("tickets")
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

