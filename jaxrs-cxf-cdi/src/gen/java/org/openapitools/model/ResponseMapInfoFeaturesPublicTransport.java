package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;



public class ResponseMapInfoFeaturesPublicTransport   {
  
  private java.util.Date dateStart;

  private java.util.Date dateEnd;


  /**
   **/
  public ResponseMapInfoFeaturesPublicTransport dateStart(java.util.Date dateStart) {
    this.dateStart = dateStart;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("date_start")
  @NotNull
  public java.util.Date getDateStart() {
    return dateStart;
  }
  public void setDateStart(java.util.Date dateStart) {
    this.dateStart = dateStart;
  }


  /**
   **/
  public ResponseMapInfoFeaturesPublicTransport dateEnd(java.util.Date dateEnd) {
    this.dateEnd = dateEnd;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("date_end")
  @NotNull
  public java.util.Date getDateEnd() {
    return dateEnd;
  }
  public void setDateEnd(java.util.Date dateEnd) {
    this.dateEnd = dateEnd;
  }



  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

