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
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2020-07-14T11:27:37.641Z[Etc/UTC]")
public class ResponseFaresFast   {
  

  private List<ResponseFareTicket> ticketsTotal = new ArrayList<ResponseFareTicket>();

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("tickets_total")
  @NotNull
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

