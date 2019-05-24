package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.Date;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2019-05-24T09:07:09.676Z[Etc/UTC]")
public class ResponseMapInfoFeaturesPublicTransport   {
  

  private Date dateStart;

  private Date dateEnd;

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("date_start")
  @NotNull
  public Date getDateStart() {
    return dateStart;
  }
  public void setDateStart(Date dateStart) {
    this.dateStart = dateStart;
  }

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("date_end")
  @NotNull
  public Date getDateEnd() {
    return dateEnd;
  }
  public void setDateEnd(Date dateEnd) {
    this.dateEnd = dateEnd;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeaturesPublicTransport responseMapInfoFeaturesPublicTransport = (ResponseMapInfoFeaturesPublicTransport) o;
    return Objects.equals(dateStart, responseMapInfoFeaturesPublicTransport.dateStart) &&
        Objects.equals(dateEnd, responseMapInfoFeaturesPublicTransport.dateEnd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dateStart, dateEnd);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoFeaturesPublicTransport {\n");
    
    sb.append("    dateStart: ").append(toIndentedString(dateStart)).append("\n");
    sb.append("    dateEnd: ").append(toIndentedString(dateEnd)).append("\n");
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

